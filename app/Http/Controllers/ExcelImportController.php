<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class ExcelImportController extends Controller
{
    public function test(Request $request){
        $qrCode = QrCode::generate('Make a QR code with Laravel!');
        $qrCode = base64_encode($qrCode);
        return base64_decode($qrCode) ;

    }
}
