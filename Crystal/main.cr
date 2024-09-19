class Calc
    def sum(x : Int, y : Int)
        resp = x + y
        puts ""
        puts "La suma de #{x} y #{y} es igual a #{resp}."
    end

    def res(x : Int, y : Int)
        resp = x - y
        puts ""
        puts "La resta de #{x} y #{y} es igual a #{resp}."
    end

    def mul(x : Int, y : Int)
        resp = x * y
        puts ""
        puts "La multiplicación de #{x} y #{y} es igual a #{resp}."
    end

    def div(x : Int, y : Int, name : String | Nil)
        if (x == 0 || y == 0)
            puts ""
            puts "Error: No se puede dividir entre 0 #{name}!."
        else
            resp = x / y
            puts ""
            puts "La división de #{x} y #{y} es igual a #{resp}."
        end
    end

    def calc(x : Int, y : Int, name : String | Nil, op : Int)
        if (op == 1)
            sum(x, y)
        elsif (op == 2)
            res(x, y)
        elsif (op == 3)
            mul(x, y)
        elsif (op == 4)
            div(x, y, name)
        else
            puts ""
            puts "Este no es un valor valido #{name}!."
            main = Main.new name

            main.init
        end
    end
end

class Main < Calc
    def initialize(name : String | Nil)
        @name = name
    end

    private def welcome
        puts ""
        puts "Hola, #{@name}!."
    end

    private def operation
        puts ""
        puts "1. Suma   2. Resta   3. Multiplicación   4. División"
        puts ""

        print "Ingrese el número de la operación que quiera realizar: "
        ops = gets.to_s
        op = ops.to_i

        op
    end

    private def getX
        puts ""
        print "Ingrese un primer número para la operación que quiera realizar #{@name}: "
        xs = gets.to_s
        x = xs.to_i

        x
    end

    private def getY
        print "Ingrese un segundo número para la operación que quiera realizar #{@name}: "
        ys = gets.to_s
        y = ys.to_i

        y
    end

    def init
        welcome

        op = operation
        x = getX
        y = getY

        calc(x, y, @name, op)
    end
end

def getName
    print "Ingrese su nombre usuario: "
    name : String | Nil = gets

    name
end

def init
    name = getName
    
    start = Main.new name
    
    start.init
end

init