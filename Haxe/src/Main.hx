class Main {
    static function main() {
        var name: String = getName();
        var start = new Start(name);

        start.init();
    }

    static function getName():String {
        Sys.println("Ingrese su nombre usuario: ");
        var name: String = Sys.stdin().readLine();

        return name;
    }
}

class Calculator {
    public function sum(x:Float, y:Float) {
        var resp: Float = x + y;
        Sys.println("La suma de " + x + " y " + y + " es igual a " + resp + ".");
    }

     public function res(x:Float, y:Float) {
        var resp: Float = x - y;
        Sys.println("La resta de " + x + " y " + y + " es igual a " + resp + ".");
    }

     public function mul(x:Float, y:Float) {
        var resp: Float = x * y;
        Sys.println("La multiplicación de " + x + " y " + y + " es igual a " + resp + ".");
    }

     public function div(x:Float, y:Float) {
        var resp: Float = x / y;
        if (x == 0 || y == 0) {
            throw "\nError: No se puede dividir entre 0.";
        } else {
            Sys.println("La división de " + x + " y " + y + " es igual a " + resp + ".");
        }
    }

     public function calc(x:Float, y:Float, name:String, op:Int) {
        switch (op) {
            case 1:
                sum(x, y);
            case 2:
                res(x, y);
            case 3:
                mul(x, y);
            case 4:
                div(x, y);
            default:
                throw "\nError: Está no es una operación válida " + name + ".";
        }
    }
}

class Start extends Calculator {
    private var name: String;

    public function new(name: String) {
        this.name = name;
    }

    private function operation():Int {
        Sys.println("\n1. Suma   2. Resta   3. Multiplicación   4. División");

        Sys.println("\nIngresa el número de la operación que quiera realizar " + name + ": ");
        var op: String = Sys.stdin().readLine();

        return Std.parseInt(op);
    }

    private function getX():Float {
        Sys.println("\nIngrese un primer número para la operación que quiera realizar " + name + ": ");
        var x: String = Sys.stdin().readLine();

        return Std.parseFloat(x);
    }

    private function getY():Float {
        Sys.println("\nIngrese un segundo número para la operación que quiera realizar " + name + ": ");
        var y: String = Sys.stdin().readLine();

        return Std.parseFloat(y);
    }

    private function welcome() {
        Sys.println("\nBienvenido o bienvenida " + name + "!");
    }

    public function init() {
        welcome();

        var op: Int = operation();
        var x: Float = getX();
        var y: Float = getY();

        calc(x, y, name, op);
    }
}