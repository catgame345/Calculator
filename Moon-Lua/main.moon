os.execute "chcp 65001 > nul"

class Calculator
    sum: (x, y) => print "La suma de #{x} y #{y} es #{x + y}."
    res: (x, y) => print "La resta de #{x} y #{y} es #{x - y}."
    mul: (x, y) => print "La multiplicación de #{x} y #{y} es #{x * y}."
    div: (x, y) => 
        if x == 0 or y == 0
            print "Error: No se puede dividir entre 0."
        else
            print "La división de #{x} y #{y} es #{x / y}."
    cal: (x, y, op) =>
        switch op
            when 1
                self\sum x, y
            when 2
                self\res x, y
            when 3
                self\mul x, y
            when 4
                self\div x, y
            else
                print "Error: Operación no valida."

class Start extends Calculator
    operation: =>
        print "\n1. Suma  2. Resta  3. Multiplicación  4. División"
        print "Elige una operación: "
        @op = io.read!
        @op = tonumber @op
        return @op
    getX: =>
        print "\nIngrese un primer número para la operación que quiera realizar: "
        @x = io.read!
        @x = tonumber @x
        return @x
    getY: =>
        print "\nIngrese un segundo número para la operación que quiera realizar: "
        @y = io.read!
        @y = tonumber @y
        return @y
    welcome: => print "Bienvenido usuario!"
    init: =>
        self\welcome!
        @ope = self\operation!
        @xs = self\getX!
        @ys = self\getY!
        self\cal @xs, @ys, @ope

start = Start!

start\init!