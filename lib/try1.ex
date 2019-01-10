defmodule Try1 do
    def input(num) do
        File.write("good.txt" ,Integer.to_string(num))
        IO.inspect num
        File.read("goooood.txt")
    end
end