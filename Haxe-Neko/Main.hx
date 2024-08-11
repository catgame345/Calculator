class Main {
    static function main() {
        get();
    }

    static function get(): Void {
        welcome();
        trace("Ingrese su nombre: ");
        var name: String = Sys.stdin().readLine();
        if (name == "") {
            trace("El valor no tiene que estar vacio usuario!\n");
            get();
        } else {
            var calculator = new Calculator(name);
            calculator.start();
        }
    }

    static function welcome(): Void {
        trace("Bienvenido o bienvenida usuario\n");
    }
}

class Calculator {
    private var name: String;

    public function new(name: String) {
        this.name = name;
    }

    private function getOperation(): Void {
        trace("1. Suma  2. Resta  3. Multiplicacion  4. Division\n");
        trace("Ingrese el numero de la operacion " + name + ": ");
        var ops: String = Sys.stdin().readLine();
        try {
            var op: Int = parseInt(ops);
            if (op == 1 || op == 2 || op == 3 || op == 4) {
                getX(op);
            } else if (op == null) {
                trace("");
            } else {
                trace("Error: No existe la operacion " + op + "\n");
            }
        } catch (e: Dynamic) {
            trace("\nError: " + e + "\n");
        }
    }

    private function sum(x: Int, y: Int): Void {
        var res: Int = x + y;
        trace("\nLa suma de " + x + " y " + y + " es igual a " + res + "\n");
    }

    private function rest(x: Int, y: Int): Void {
        var res: Int = x - y;
        trace("\nLa resta de " + x + " y " + y + " es igual a " + res + "\n");
    }

    private function mul(x: Int, y: Int): Void {
        var res: Int = x * y;
        trace("\nLa multiplicacion de " + x + " y " + y + " es igual a " + res + "\n");
    }

    private function divc(x: Int, y: Int): Float {
        if (x == 0 || y == 0 || x == 0 && y == 0) {
            throw "No se puede dividir por cero.";
        }

        return x / y;
    }

    private function div(x: Int, y: Int): Void {
        try {
            var res = divc(x, y);
            trace("\nLa division de " + x + " y " + y + " es igual a " + res + "\n");
        } catch (e: Dynamic) {
            trace("\nError: " + e + "\n");
        }
    }

    private function operation(op: Int, x: Int, y: Int): Void {
        switch (op) {
            case 1:
                sum(x, y);
            case 2:
                rest(x, y);
            case 3:
                mul(x, y);
            case 4:
                div(x, y);
        }
    }

    private function getX(op: Int): Void {
        trace("Ingrese un primer numero para la operacion " + name + ": ");
        var xs: String = Sys.stdin().readLine();
        try {
            var x: Int = parseInt(xs);
            getY(x, op);
        } catch (e: Dynamic) {
            trace("\nError: " + e + "\n");
        }
    }

    private function getY(x: Int, op: Int): Void {
        trace("Ingrese un segundo numero para la operacion " + name + ": ");
        var ys: String = Sys.stdin().readLine();
        try {
            var y: Int = parseInt(ys);
            operation(op, x, y);
        } catch (e: Dynamic) {
            trace("\nError: " + e + "\n");
        }
    }

    private function parseInt(value: String) {
        if (value == null || value.length == 0) {
            throw "La entrada no puede estar vacia";
        }

        var numero: Int = Std.parseInt(value);

        if (numero == null) {
            trace("Este no es un numero valido " + name + "!");
        }

        return numero;
    }

    public function start(): Void {
        getOperation();
    }
}