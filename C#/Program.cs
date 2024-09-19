using System;

class Program
{
    static void Main(string[] args)
    {
        string name = getName();
        Main main = new Main(name);
        main.init();
    }

    static string getName()
    {
        Console.WriteLine("Ingrese su nombre usuario: ");
        string name = Console.ReadLine();

        return name;
    }
}

class Calculator {
    public virtual void sum(int x, int y)
    {
        int resp = x + y;
        Console.WriteLine($"\nLa suma de {x} y {y} es igual a {resp}.");
    }

    public virtual void res(int x, int y)
    {
        int resp = x - y;
        Console.WriteLine($"\nLa resta de {x} y {y} es igual a {resp}.");
    }

    public virtual void mul(int x, int y)
    {
        int resp = x * y;
        Console.WriteLine($"\nLa multiplicación de {x} y {y} es igual a {resp}.");
    }

    public virtual void div(int x, int y)
    {
        if (x == 0 || y == 0)
        {
            Console.WriteLine("\nError: No se puede dividir entre 0!.");
        } else {
            int resp = x / y;
            Console.WriteLine($"\nLa división de {x} y {y} es igual a {resp}.");
        }
    }

    public virtual void calc(int x, int y, string name, int op)
    {
        switch (op)
        {
            case 1:
              sum(x, y);
              break;
            case 2:
              res(x, y);
              break;
            case 3:
              mul(x, y);
              break;
            case 4:
              div(x, y);
              break;
            default:
              Console.WriteLine($"\nEsta no es una operación válida {name}!.");
              break;
        }
    }
}

class Main : Calculator {
    private string name;

    public Main(string name)
    {
        this.name = name;
    }

    private int operation()
    {
        Console.WriteLine("\n1. Suma   2. Resta   3. Multiplicación   4. División\n");

        Console.WriteLine($"Ingrese el número de la operación que quiera realizar {name}: ");
        int op = int.Parse(Console.ReadLine());

        return op;
    }

    private int getX()
    {
        Console.WriteLine($"\nIngrese un primer número para la operación que quiera realizar {name}: ");
        int x = int.Parse(Console.ReadLine());

        return x;
    }

    private int getY()
    {
        Console.WriteLine($"\nIngrese un segundo número para la operación que quiera realizar {name}: ");
        int y = int.Parse(Console.ReadLine());

        return y;
    }

    private void welcome()
    {
        Console.WriteLine($"\nHola {name}!.");
    }

    public void init()
    {
        welcome();

        int op = operation();
        int x = getX();
        int y = getY();

        calc(x, y, name, op);
    }
}