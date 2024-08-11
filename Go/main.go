package main

import "fmt"

func main() {
	start()
}

func start() {
	welcome()
}

func welcome() {
	fmt.Println("Bienvenido o bienvenida usuario")
	getName()
}

func getName() {
	var name string
	fmt.Print("\nIngrese su nombre usuario: ")
	fmt.Scanln(&name)
	getOperation(name)
}

func getOperation(name string) {
	var op int
	fmt.Printf("\n1. Suma  2. Resta  3. Multiplicación  4. División\n")
	fmt.Printf("\nIngrese el número de la operación que quiere realizar %s: ", name)
	fmt.Scanln(&op)
	get(name, op)
}

func get(name string, op int) {
	var x int
	var y int
	fmt.Printf("\nIngrese un primer número para la operación que eligio %s: ", name)
	fmt.Scanln(&x)
	fmt.Printf("Ingrese un segundo número para la operación que eligio %s: ", name)
	fmt.Scanln(&y)
	calc(op, x, y)
}

func calc(op int, x int, y int) {
	switch (op) {
	case 1:
		suma(x, y)
	case 2:
		resta(x, y)
	case 3:
		mult(x, y)
	case 4:
		divi(x, y)
	default:
		fmt.Println("No es una operación valida")
	}
}

func suma(x int, y int) {
	result := x + y
	fmt.Printf("\nLa suma de %d y %d es igual a %d", x, y, result)
}

func resta(x int, y int) {
	result := x + y
	fmt.Printf("\nLa resta de %d y %d es igual a %d", x, y, result)
}

func mult(x int, y int) {
	result := x * y
	fmt.Printf("\nLa multiplicación de %d y %d es igual a %d", x, y, result)
}

func divi(x int, y int) {
	result := x / y
	fmt.Printf("\nLa división de %d y %d es igual a %d", x, y, result)
}