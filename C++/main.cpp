#include <iostream>
using namespace std;

class Calculator
{
private:
    string name;
    int x;
    int y;
    int operation;
public:
    Calculator(int, int, int, string);
    Calcular();
    Sum();
    Res();
    Mul();
    Div();
    ~Calculator();
};

Calculator::Calculator(int _x, int _y, int _operation, string _name)
{
    name = _name;
    operation = _operation;
    y = _y;
    x = _x;
}

Calculator::Calcular()
{
    switch (operation)
    {
    case 1:
        Sum();
        break;
    case 2:
        Res();
        break;
    case 3:
        Mul();
        break;
    case 4:
        Div();
        break;
    
    default:
        cout << "Esta no es una operacion valida.";
        break;
    }
}

Calculator::Sum()
{
    cout << "La suma de " << x << " y " << y << " es " << x + y << endl;
}

Calculator::Res()
{
    cout << "La resta de " << x << " y " << y << " es " << x - y << endl;
}

Calculator::Mul()
{
    cout << "La multiplicacion de " << x << " y " << y << " es " << x * y << endl;
}

Calculator::Div()
{
    cout << "La division de " << x << " y " << y << " es " << x / y << endl;
}

Calculator::~Calculator()
{
}

string getName() {
    cout << "Ingrese su nombre usuario: ";
    string name;
    cin >> name;
    return name;
}

int getO(string name) {
    cout << endl;
    cout << "1. Suma  2. Resta  3. Multiplicacion  4. Division" << endl;
    cout << endl;
    cout << "Ingrese el numero de la operacion que quiera realizar " << name << ": ";
    int op;
    cin >> op;
    return op;
}

int getX(string name) {
    cout << "Ingrese un numero para la operacion que eligio " << name << ": ";
    int x;
    cin >> x;
    return x;
}

int getY(string name) {
    cout << "Ingrese un segundo numero para la operacion que eligio " << name << ": ";
    int y;
    cin >> y;
    return y;
}


int main() {
    cout << "Bienvenido usuario" << endl;
    cout << endl;
    string name = getName();
    int op = getO(name);
    int x = getX(name);
    int y = getY(name);
    Calculator cal(x, y, op, name);
    cout << endl;
    cal.Calcular();

    return 0;
}