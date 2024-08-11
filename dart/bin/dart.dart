import 'dart:io';

void main() {
  start();
}

void start() {
  print("Bienvenido o bienvenida usuario\n");
  String name = getName();
  int op = getOp(name);
  int x = getX(name);
  int y = getY(name);
  var calc = Calculator(name, x, y, op);
  calc.calc();
}

String getName() {
  print("Ingrese su nombre usuario: ");
  String name = stdin.readLineSync() ?? "usuario";
  return name;
}

int getOp(String name) {
  print("\n1. Suma  2. Resta  3. Multiplicacion  4. Division\n");
  print("Ingrese el número de la operación que quiera realizar $name: ");
  String fop = stdin.readLineSync() ?? "0";
  try {
    int op = int.parse(fop);
    return op;
  } catch (e) {
    print("Error: $e");
    return 0;
  }
}

int getX(String name) {
  print("Ingrese un primer número para la operación que eligio $name: ");
  String fx = stdin.readLineSync() ?? "0";
  try {
    int x = int.parse(fx);
    return x;
  } catch (e) {
    print("Error: $e");
    return 0;
  }
}

int getY(String name) {
  print("Ingrese in segundo número para la operación que eligio $name: ");
  String fy = stdin.readLineSync() ?? "0";
  try {
    int y = int.parse(fy);
    return y;
  } catch (e) {
    print("Error: $e");
    return 0;
  }
}

abstract class Calc {
  void suma();
  void resta();
  void mult();
  void divi();
}

class Calculator implements Calc {
  String _name;
  int _x;
  int _y;
  int _op;

  Calculator(this._name, this._x, this._y, this._op);

  void wel() {
    print("$_name, $_op");
  }

  @override
  void suma() {
    var result = _x + _y;
    print("\nLa suma de $_x y $_y es igual a $result");
  }

  @override
  void resta() {
    var result = _x - _y;
    print("\nLa resta de $_x y $_y es igual a $result");
  }

  @override
  void mult() {
    var result = _x * _y;
    print("\nLa multiplicación de $_x y $_y es igual a $result");
  }

  @override
  void divi() {
    var result = _x / _y;
    print("\nLa división de $_x y $_y es igual a $result");
  }

  void calc() {
    switch (_op) {
      case 1:
        suma();
        break;
      case 2:
        resta();
        break;
      case 3:
        mult();
        break;
      case 4:
        divi();
        break;
      default:
        print("\nEsta no es una operación válida");
        break;
    }
  }
}
