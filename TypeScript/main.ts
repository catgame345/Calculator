import * as promptSync from "prompt-sync";

const prompt = promptSync();

class Calc {
  sum(x: number, y: number) {
    let resp: number = x + y;
    console.log(`La suma de ${x} y ${y} es igual a ${resp}.`);
  }

  res(x: number, y: number) {
    let resp: number = x - y;
    console.log(`La resta de ${x} y ${y} es igual a ${resp}.`);
  }

  div(x: number, y: number) {
    if (x == 0 || y == 0) {
      console.error("Error: No se puede dividir entre 0!.");
    }
    let resp: number = x / y;
    console.log(`La división de ${x} y ${y} es igual a ${resp}.`);
  }

  mul(x: number, y: number) {
    let resp: number = x * y;
    console.log(`La multiplicación de ${x} y ${y} es igual a ${resp}.`);
  }

  calc(x: number, y: number, op: number) {
    switch (op) {
      case 1:
        this.sum(x, y);
        break;
      case 2:
        this.res(x, y);
        break;
      case 3:
        this.mul(x, y);
        break;
      case 4:
        this.div(x, y);
        break;
      default:
        console.error("Error: No existe este valor!.");
    }
  }
}

class Main extends Calc {
  name: string;

  constructor(name: string) {
    super();
    this.name = name;
  }

  private welcome() {
    console.log(`\nHola ${this.name}!.`);
  }

  private operation() {
    console.log(`\n1. Suma   2. Resta   3. Multiplicación   4. División\n`);

    let ops: string = prompt(
      `Ingrese el número de la operación que quiera realizar ${this.name}: `
    );
    let op: number = Number(ops);

    return op;
  }

  private getX() {
    let xs: string = prompt(
      `\nIngrese un primer número para la operación que eligio ${this.name}.`
    );
    let x: number = Number(xs);

    return x;
  }

  private getY() {
    let ys: string = prompt(
      `\nIngrese un segundo número para la operación que eligio ${this.name}.`
    );
    let y: number = Number(ys);

    return y;
  }

  init() {
    this.welcome();
    let op: number = this.operation();
    let x: number = this.getX();
    let y: number = this.getY();

    this.calc(x, y, op);
  }
}

function start() {
  let names: string = prompt("Ingrese su nombre usuario: ");

  let main = new Main(names);

  main.sum(12, 12);
}

start();
