<?php

namespace App\Http\Controllers;

// use Illuminate\Contracts\Cache\Store;

use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;
use Illuminate\Support\Facades\Storage;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx\Rels;

use function PHPUnit\Framework\returnSelf;

class CodeExecutorController extends Controller
{
    public static function runCppCode(array $param):array
    {
        
        // Receive the C++ code and input from the request.
        $cppCode = $param['code'];
        $input = $param['input']; // Default to an empty string if 'input' is not provided.

        // Create a temporary input file and write the input data to it.
        $inputFilePath = tempnam(sys_get_temp_dir(), 'Code/cpp_input_');
        file_put_contents($inputFilePath, $input);

        // Create a temporary error file for compilation or execution errors.
        $errorFilePath = tempnam(sys_get_temp_dir(), 'Code/cpp_error_');
        $salt = random_int(1, 1000000);
        $filename =  "cpp_code_$salt.cpp";

        // Path to the /tmp directory
        $tmpDirectory = "/tmp/";
        // Write the text to a file in the /tmp directory
        file_put_contents($tmpDirectory . $filename, $param['code']);
        // Run the C++ code with input and capture the output and errors.
        $command = "g++ /tmp/cpp_code_$salt.cpp -o /tmp/cpp_code_output_$salt 2> $errorFilePath && cat $inputFilePath | /tmp/cpp_code_output_$salt";
        // return $command ;
        $start_time = microtime(true) ; 
        exec($command, $output, $returnCode);
        $end_time = microtime(true) ;
        if ($returnCode !== 0) {
            // Compilation or execution error occurred.
                // Clean up temporary files.
            $errorOutput = file_get_contents($errorFilePath);
            unlink($inputFilePath);
            unlink($errorFilePath);
            unlink("/tmp/cpp_code_$salt.cpp");
            // Return the output as a response.

            // Return the error message as a response.
            return ['error'=>   $errorOutput . "  in test cases $param[input]"];
        }

        // Clean up temporary files.
        unlink($inputFilePath);
        unlink($errorFilePath);
        unlink("/tmp/cpp_code_$salt.cpp");
        unlink("/tmp/cpp_code_output_$salt");
        // Return the output as a response.
        return ['output' => implode(PHP_EOL, $output), 'time' => $end_time - $start_time];
    }

    public static function runJavaCode(array $param):array
    {
        $start_time = microtime(true) ;
        $salt = random_int(0,1000000) ;
        // Receive the Java code and input from the request.
        $javaCode = $param['code'];
        $input = $param['input']; // Default to an empty string if 'input' is not provided.
        $errorFilePath = tempnam(sys_get_temp_dir(), 'java_error_');
        $inputFilePath = tempnam(sys_get_temp_dir(), 'java_input_');
        file_put_contents($inputFilePath, $input);

        $filename =  "java_code$salt.java";

        // Path to the /tmp directory
        $tmpDirectory = "/tmp/";
        // Write the text to a file in the /tmp directory
        file_put_contents($tmpDirectory . $filename, $param['code']);


        // Compile the Java code and capture the errors, if any.
        
        $compileCommand =  "javac /tmp/java_code$salt.java 2> $errorFilePath ";
        // return $compileCommand ; 

        exec($compileCommand, $compileOutput, $compileReturnCode);
        
        $compileCommand = "javac /tmp/java_code$salt.java 2> $errorFilePath" ;
        exec($compileCommand, $compileOutput, $compileReturnCode);
        if ($compileReturnCode !== 0) {
            // Compilation error occurred.
            $errorOutput = file_get_contents($errorFilePath);
            unlink($inputFilePath);
            unlink($errorFilePath);
            unlink("/tmp/java_code$salt.java");
            // Return the error message as a response.
            return['error' => $errorOutput . "  in test cases $param[input]"];
        }
        // Run the compiled Java code with input and capture the output.
        $executionCommand = "cd /tmp  && cat $inputFilePath | java Main" ;
        $start_time = microtime(true);
        exec($executionCommand, $output, $executionReturnCode);
        $end_time = microtime(true);

        // Clean up temporary files.
        unlink($inputFilePath);
        unlink($errorFilePath);
        unlink("/tmp/java_code$salt.java");
        unlink("/tmp/Main.class"); // Remove compiled .class file

        // Return the output as a response.
        return ['output' => implode(PHP_EOL, $output) , 'time' => $end_time - $start_time];
    }

    Public static  function generateTestCases($model){
        $code = Storage::get('public/generateTestCasess');
        $result = Static::runJavaCode(['code' => $code , 'input' => $model]);
        $result = explode('***' , $result['output']) ;
        array_pop($result);
        return $result ;
    }
    public function replaceWordInFile() {
        $filePath = 'Main.java';
        $searchWord = 'Main';
        
        $replaceWord = 'Kasseem';
        $content = Storage::get($filePath);
        return $content;
        $newContent = str_replace($searchWord, $replaceWord, $content);

        Storage::put($filePath, $newContent);
        return response()->json([
            'message' => 'word replaced succfully...'
        ]);

    }
    public static function runCppCodeRemontly($param){
        $client = new Client();
        
        $url = 'https://emkc.org/api/v2/piston/execute'; //
        
        try {
           $response = $client->post($url, [
            'headers' => [
                'Content-Type' => 'application/json',
            ],
            'json' => [
                'language' => 'cpp',
                'version' => '10.2.0', // Use the correct version here
                'files' => [
                    [
                        'name' => 'main.cpp',
                        'content' => $param['code'],
                    ],
                ],
                'stdin' => $param['input'],
            ],
        ]);

        $result = json_decode($response->getBody(), true);
        if($result['run']['stderr'] != "")
         return[ 'error'=>$result['run']['stderr']. "  in test cases $param[input]" ];
        return ['output' => $result['run']['output'] , 'time' => 0.0];
        // return response()->json($result);
        } catch (\GuzzleHttp\Exception\RequestException $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    public static function runJavaRemontly($param){
        $client = new Client();
        
        $url = 'https://emkc.org/api/v2/piston/execute'; //
        
        try {
           $response = $client->post($url, [
            'headers' => [
                'Content-Type' => 'application/json',
            ],
            'json' => [
                'language' => 'java',
                'version' => '15.0.2', // Use the correct version here
                'files' => [
                    [
                        'name' => 'main.java',
                        'content' => $param['code'],
                    ],
                ],
                'stdin' => $param['input'],
            ],
        ]);

        $result = json_decode($response->getBody(), true);
        // return $result ;
        if($result['run']['stderr'] != "")
        
        return['error' =>  $result['run']['stderr'] . "  in test cases $param[input]"];
        return ['output' => $result['run']['output'] , 'time' => 0.0];
        // return response()->json($result);
        } catch (\GuzzleHttp\Exception\RequestException $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
