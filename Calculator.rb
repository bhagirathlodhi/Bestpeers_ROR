class Calculator
      @result = 0
    def addition(first_number, second_number)
      @result = first_number + second_number
    end

    def subtract(first_number, second_number)
      @result = first_number - second_number
    end

    def multiply(first_number, second_number)
      @result = first_number * second_number
    end

    def division(first_number, second_number)
      begin
        @result = first_number / second_number
      rescue ZeroDivisionError
        puts "Error: Division by zero is not allowed."
      end
    end
    def moduler(first_number, second_number)
      begin
        @result = first_number % second_number
      rescue ZeroDivisionError
        puts "Error: Division by zero is not allowed."
      end
    end

    def display_result
      puts "Result: #{@result}"
    end
  end


  def number_input(validnumber)
    print validnumber
    while (input = gets.chomp) !~ /\d/ #/\d/ - A digit character ([0-9])
      print "Invalid input. Please enter a valid number: "
    end
    input.to_f
  end

  calculator = Calculator.new

  puts "Welcome to the Calculator!"
  loop do
    puts "Choose an operation:"
    puts "1. Addition"
    puts "2. Subtraction"
    puts "3. Multiplication"
    puts "4. Division"
    puts "5. Moduler"
    puts "6. Exit"

    choice = gets.chomp.to_i

    case choice
    when 1
      first_number = number_input("Enter the first number: ")
      second_number = number_input("Enter the second number: ")
      calculator.addition(first_number, second_number)
      calculator.display_result
    when 2
      first_number = number_input("Enter the first number: ")
      second_number = number_input("Enter the second number: ")
      calculator.subtract(first_number, second_number)
      calculator.display_result
    when 3
      first_number = number_input("Enter the first number: ")
      second_number = number_input("Enter the second number: ")
      calculator.multiply(first_number, second_number)
      calculator.display_result
    when 4
      first_number = number_input("Enter the First Number: ")
      second_number = number_input("Enter the second number: ")
      calculator.division(first_number, second_number)
      calculator.display_result
    when 5
      first_number = number_input("Enter the First Number: ")
      second_number = number_input("Enter the second number: ")
      calculator.moduler(first_number, second_number)
      calculator.display_result
    when 6
      puts "thank you!"
      break
    else
      puts "Invalid choice. Please choose a valid option."
    end
  end
