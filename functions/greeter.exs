defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_)     -> "I don't know you"
    end
  end
end

mr_smith = Greeter.for("John", "Hola hola")
IO.puts mr_smith.("John")
IO.puts mr_smith.("José")
