use std::io;

fn main() {
    println!("Bienvenido o bienvenida usuario!");

    get_name();
}

fn get_name() {
    let mut name = String::new();

    println!("\nIngrese su nombre usuario: ");

    io::stdin()
      .read_line(&mut name)
      .expect("Error al leer la línea");

    get_operation(name.trim());
}

fn get_operation(name: &str) {
    println!("\n1. Suma  2. Resta  3. Multiplicación  4. División\n");

    let mut ops = String::new();

    println!("Ingrese el número de la operación que quiera realizar {}: ", name);

    io::stdin()
      .read_line(&mut ops)
      .expect("Error al leer la línea");

    let op: i64 = ops.trim().parse().expect("No es un número valido!");

    get_x(name, op);
}

fn get_x(name: &str, op: i64) {
    println!("\nIngrese un segundo número para la operación que eligio {}: ", name);

    let mut xs = String::new();

    io::stdin()
      .read_line(&mut xs)
      .expect("Error al leer la línea");

    let x: i64 = xs.trim().parse().expect("No es un número valido");

    get_y(name, op, x);
}

fn get_y(name: &str, op: i64, x: i64) {
    println!("\nIngrese un segundo número para la operación que eligio {}: ", name);

    let mut ys = String::new();

    io::stdin()
      .read_line(&mut ys)
      .expect("Error al leer la línea");

    let y: i64 = ys.trim().parse().expect("No es un número valido");

    calc(op, x, y);
}

fn calc(op: i64, x: i64, y: i64) {
    match op {
        1 => sum(x, y),
        2 => rest(x, y),
        3 => mul(x, y),
        4 => divi(x, y),
        _ => panic!("\nEstá no es una operación valida!."),
    }
}

fn sum(x: i64, y: i64) {
  let res: i64 = x + y;

  println!("\nLa suma de {} y {} es igual a {}.", x, y, res);
}

fn rest(x: i64, y: i64) {
  let res: i64 = x - y;

  println!("\nLa resta de {} y {} es igual a {}.", x, y, res);
}

fn mul(x: i64, y: i64) {
  let res: i64 = x * y;

  println!("\nLa multiplicación de {} y {} es igual a {}.", x, y, res);
}

fn divi(x: i64, y: i64) {
  let res: i64 = x / y;

  println!("\nLa división de {} y {} es igual a {}.", x, y, res);
}