defmodule Try1 do
    def input(num) do
        File.write("good.txt" ,Integer.to_string(num))

        File.read("good.txt")
    end
end