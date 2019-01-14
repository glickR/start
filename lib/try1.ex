defmodule Try1 do
    def input(num) do
        Integer.to_string(num)
        File.write("good.txt" ,[num+1,num+2])
        IO.inspect num
        File.read("good.txt")
    end

    def func(num = 0) do
        IO.puts "cant print 0 numbers"
        IO.inspect(num)
    end
    def func(num = []) do 
        nil
    end
    def func(num) do
        s = 0..num
        is_greater_than10(num)
        s2 = Enum.map(s, &ruti/1 )
        File.write("text1.txt", inspect(s2))
    end

 

    def is_greater_than10(num) when num > 10 do
        IO.puts("la la la")
    end

    def is_greater_than10(num) do
        IO.puts("li li li")
        num
    end

    def ruti(x) do
     IO.inspect(x)
    end

    def func2(num) do
        num=get_value(num) || 20
        IO.puts inspect num
        case  do_something(num) do
            [] -> :empty_list
        {:ok, res} -> res
        {:error, _reason} -> :reason
        _ -> nil
        end
        |> IO.inspect()


        num
        |> do_something()
        |>IO.inspect()
        |> process()
    end

   def do_something(0) do
    {:ok, :zero}
   end

   def do_something([]) do
   []
   end

   def do_something(num) do
    {:error, :not_zero}
   end
  
 

   def process({:ok, msg}) do
    IO.puts "success" <> Atom.to_string(msg)
   end

    def process({:error, reason}) do
        IO.puts "error" <> Atom.to_string(reason)
    end
    def process([]) do
        IO.puts "Ruti at gaon!"
    end

    def func3 (num) do
        num
        |>check_chiyuvi()
        |>my_process()
    end

    def check_chiyuvi(0) do 
        {:error, :zerror}
    end

    def check_chiyuvi(num)  when num>0 do
        {:ok, :chiyuvi}
    end
    def check_chiyuvi(num)  when num<0 do
        s=num..0
        Enum.map(s,&IO.puts/1)
        {:error, :shlili}
    end

    def get_value(0), do: nil
    def get_value(x), do: x


    def my_process({:ok, messeg}) do
        IO.puts "hey" <> " " <> Atom.to_string (messeg)
    end
    def my_process({:error, messeg}) do
        IO.puts "bey" <> " " <> Atom.to_string (messeg)
    end
    

end

    
        
