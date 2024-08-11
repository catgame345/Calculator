defmodule Main do
  def start do
    :calc.welcome()
    getName()
  end

  defp getName do
    name = IO.gets("\nIngrese su nombre usuario: ") |> String.trim()
    getOperation(name)
  end

  defp getOperation(name) do
    IO.puts "\n1. Suma  2. Resta  3. Multiplicación  4. División\n"
    op = IO.gets("Ingrese el número de la operación que quiera realizar #{name}: ") |> String.trim()

    val = try do
      {:ok, String.to_integer(op)}
    rescue
      ArgumentError -> :error
    end

    case val do
      {:ok, op} -> getX(name, :calc(op))
      :error -> :input_value
    end
  end

  defp getX(name, op) do
    x = IO.gets("\nIngrese un primer número para la operación que eligio #{name}: ") |> String.trim()

    val = try do
      {:ok, String.to_integer(x)}
    rescue
      ArgumentError -> :error
    end

    case val do
      {:ok, x} -> getY(name, op, x)
      :error -> :input_value
    end
  end

  defp getY(name, op, x) do
    y = IO.gets("\nIngrese un segundo número para la operación que eligio #{name}: ") |> String.trim()

    val = try do
      {:ok, String.to_integer(y)}
    rescue
      ArgumentError -> :error
    end

    case val do
      {:ok, y} -> :calc.calcu(op, x, y)
      :error -> :input_value
    end
  end
end

Main.start()
