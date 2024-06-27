import java.util.*;

class Main {
    static Scanner in = new Scanner(System.in) ;

    public static void main(String[] args) {
//        System.out.println("enter the number of test cases you want");
        int n = in.nextInt() ;
//        System.out.println("enter the template of test case . enter 'exit' when you finish the template");
        List<Type> types  = readInput() ;
        for(int i=0 ; i< n ; i++) {
            List<String> testcase = testCase(types) ;
            for (String s : testcase){
                System.out.println(s + " ");
            }
            System.out.println();
        }
    }
    public static List<Type> readInput(){
        List<Type> types = new ArrayList<>() ;
        while (true){
            String type = in.next() ;
            if ("EXIT".equals(type))break;
            if ("STRING".equals(type))
                types.add(new Type(type , in.nextInt() , in.nextInt() , in.next().charAt(0) ,  in.next().charAt(0))) ;
            else if ("STRING_ARRAY".equals(type)){
                    int x1 = in.nextInt();
                    int x2 = in.nextInt();
                    int y1 = in.nextInt();
                    int y2 = in.nextInt();
                    types.add(new Type(type , in.nextInt() , in.nextInt() , in.next().charAt(0) , in.next().charAt(0) ,x1,y1,x2,y2 ));

            }else if ("INTEGER_ARRAY".equals(type) || "DOUBLE_ARRAY".equals(type)){
                int x1 = in.nextInt();
                int x2 = in.nextInt();
                int y1 = in.nextInt();
                int y2 = in.nextInt();
                types.add(new Type(type , in.nextInt() , in.nextInt() ,x1,y1,x2,y2 ));
            }
            else  types.add(new Type(type , in.nextInt() , in.nextInt())) ;

        }
        return types ;
    }

    static List<String> testCase(List<Type> types){
        List<String> cases = new ArrayList<>() ;
        for (Type type : types){
            switch (type.type) {
                case "STRING" : cases.add(generateRandomString(type));break;
                case "INTEGER" : cases.add(generateRandomInteger(type));break;
                case "DOUBLE" : cases.add(generateRandomDouble(type));break;
                case "STRING_ARRAY" : cases.add(generateStringArray(type));break;
                case "INTEGER_ARRAY" : cases.add(generateIntegerArray(type));break;
                case "DOUBLE_ARRAY" : cases.add(generateDoubleArray(type));break;
            }
        }
        return cases ;
    }

    // private static String generateRandomDouble(Type type){
    //     Random rand = new Random() ;
    //     return String.valueOf(rand.nextDouble(type.start_range,type.end_range+1));
    // }
    private static String generateRandomDouble(Type type){
        Random rand = new Random();
        return String.valueOf(rand.nextDouble() * (type.end_range - type.start_range) + type.start_range);
    }
    // private static String generateRandomInteger(Type type){
    //     Random rand = new Random() ;
    //     return String.valueOf(rand.nextInt(type.start_range,type.end_range+1));
    // }
    private static String generateRandomInteger(Type type){
        Random rand = new Random();
        return String.valueOf(rand.nextInt(type.end_range - type.start_range + 1) + type.start_range);
    }
    // private static String generateRandomString(Type type) {
    //     String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    //     StringBuilder randomString = new StringBuilder();

    //     Random random = new Random();
    //     int index0 = getIndex(type.start_range_) ;
    //     int index1 = getIndex(type.end_range_) ;
    //     int length = random.nextInt(type.start_range , type.end_range+1) ;
    //     for (int i = 0; i < length; i++) {
    //         randomString.append(characters.charAt(random.nextInt(index0 , index1+1))) ;
    //     }
    //     return randomString.toString();
    // }
    // private static String generateRandomString(Type type) {
    //   String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    // StringBuilder randomString = new StringBuilder();

    //Random random = new Random();
    //int index0 = getIndex(type.start_range_);
    //int index1 = getIndex(type.end_range_);
    //int length = random.nextInt(type.end_range - type.start_range + 1) + type.start_range;
    //for (int i = 0; i < length; i++) {
    //  randomString.append(characters.charAt(random.nextInt(index0, index1 + 1)));
    //}
    //return randomString.toString();
    //}
    private static String generateRandomString(Type type) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder randomString = new StringBuilder();

        Random random = new Random();
        int index0 = getIndex(type.start_range_);
        int index1 = getIndex(type.end_range_);
        int length = random.nextInt(type.end_range - type.start_range + 1) + type.start_range;
        for (int i = 0; i < length; i++) {
            randomString.append(characters.charAt(random.nextInt(index1 - index0 + 1) + index0));
        }
        return randomString.toString();
    }
    private static String generateStringArray(Type type){
        StringBuilder array = new StringBuilder();
        int first ,second ;
        if (type.x != type.x1){
            first = Integer.parseInt(generateRandomInteger(new Type("INTEGER" , type.x , type.x1)));
            array.append(first + "\n");
        }else first = type.x ;
        if (type.y != type.y1){
            second = Integer.parseInt(generateRandomInteger(new Type("INTEGER" , type.y , type.y1)));
            array.append(second+"\n");
        }else second = type.y ;
        for (int i=0 ; i<first ; i++) {
            for (int j = 0; j < second; j++) {
                array.append(generateRandomString(new Type("STRING", type.start_range, type.end_range, type.start_range_, type.end_range_)) + " ");
            }
            array.append("\n") ;
        }
        return array.toString() ;
    }
    private static String generateIntegerArray(Type type){
        StringBuilder array = new StringBuilder();
        int first ,second ;
        if (type.x != type.x1){
            first = Integer.parseInt(generateRandomInteger(new Type("INTEGER" , type.x , type.x1)));
            array.append(first+ "\n");
        }else first = type.x ;
        if (type.y != type.y1){
            second = Integer.parseInt(generateRandomInteger(new Type("INTEGER" , type.y , type.y1)));
            array.append(second+ "\n");
        }else second = type.y ;
        for (int i=0 ; i<first ; i++) {
            for (int j = 0; j < second; j++) {
                array.append(generateRandomInteger(new Type("INTEGER", type.start_range, type.end_range)) + " ");
            }
            array.append("\n") ;
        }
        return array.toString() ;
    }
    private static String generateDoubleArray(Type type){
        StringBuilder array = new StringBuilder();
        int first ,second ;
        if (type.x != type.x1){
            first = Integer.parseInt(generateRandomInteger(new Type("INTEGER" , type.x , type.x1)));
            array.append(first+"\n");
        }else first = type.x ;
        if (type.y != type.y1){
            second = Integer.parseInt(generateRandomInteger(new Type("INTEGER" , type.y , type.y1)));
            array.append(second+"\n");
        }else second = type.y ;
        for (int i=0 ; i<first ; i++) {
            for (int j = 0; j < second; j++) {
                array.append(generateRandomDouble(new Type("DOUBLE", type.start_range, type.end_range))+" ");
            }
            array.append("\n") ;
        }
        return array.toString() ;
    }
    static int getIndex(char ch){
        int index  ;
        if ((int)ch <= 57){
            index = (int)ch - 48 + 52 ;
        }else if((int)ch <= 90){
            index = ch - 65 ;
        }else {
            index = ch - 97 + 26 ;
        }
        return index ;
    }

}
class Type{
    int x , y ,x1 , y1 ; //dimension of the array
    String type ;
    int start_range  ;
    int end_range ;
    char start_range_ ='A' ;
    char end_range_ = '9' ;
    Type(String type , int start_range , int end_range , char start_range_ , char end_range_){
        this.type = type ;
        this.end_range = end_range ;
        this.start_range = start_range ;
        this.start_range_ = start_range_ ;
        this.end_range_ = end_range_ ;
    }
    Type(String type , int start_range , int end_range ){
        this.type = type ;
        this.end_range = end_range ;
        this.start_range = start_range ;
    }
    Type(String typeOfArray , int start_range , int end_range , char start_range_ , char end_range_ ,int x ,  int y,int x1 ,  int y1){
        this.type = typeOfArray ;
        this.end_range = end_range ;
        this.start_range = start_range ;
        this.start_range_ = start_range_ ;
        this.end_range_ = end_range_ ;
        this.x = x ; this.y = y ;
        this.x1 = x1 ; this.y1 = y1 ;
    }

    Type(String typeOfArray , int start_range , int end_range  ,int x ,  int y,int x1 ,  int y1){
        this.type = typeOfArray ;
        this.end_range = end_range ;
        this.start_range = start_range ;
        this.x = x ; this.y = y ;
        this.x1 = x1 ; this.y1 = y1 ;
    }
}
/*
* the input will be like this :
* the number of test cases we want
* INTEGER minVAl maxVal
* STRING minLength maxLength firstCharOfRang finalCharOfRang
* DOUBLE minVal maxVal
* ARRAY
* minRangRow maxRangeRow minRangeCol maxRangeCol
* TYPE_ARRAY [STRING_ARRAY , DOUBLE_ARRAY ..]
* then the same input of types [ minVal maxVal ...]
* exit
* ex :
5
INTEGER 100 999
STRING 3 4 A Z
STRING_ARRAY
2 3 3 4
4 4 A B
exit
*  */

