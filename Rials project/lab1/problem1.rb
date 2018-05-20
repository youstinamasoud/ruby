
class Operation 
    def calc (num1 , num2 , op)
        if op == '+' || op == '-' || op == '*' || op == '/'
            if "#{num2}" == '0' && op == '/'
                puts "Invalid"
            else
                eval("#{num1} #{op} #{num2}")
            end
        else
            puts "Invalid input"
        end
    end
end

total = Operation.new
puts total.calc(1, 2 ,'+')
