@history =[]

 def calculator
    puts "-------------------"
    puts "What is the first number?"
    first_num = gets.strip
      if first_num.match(/\d+/) || first_num.match(/\d+.\d+/)
        number = first_num.to_f
        puts "What is the operator?"
        op = gets.strip
          if op === "+" || op === "-" || op === "*" || op === "/"
          symbol = op.to_sym
          puts "What is the second number?"
          sec_num = gets.strip.to_f
          puts "Calculating..."
          solution = number.send(op, sec_num) 
          puts "#{number} #{symbol} #{sec_num} = #{solution}" 
          @history << "#{number} #{symbol} #{sec_num} = #{solution}"
           else
            puts "Not valid."
            calculator
        end
      else 
      puts "Not valid."
      calculator 
    end
  end

  def menu
    puts "Welcome to the Ruby Calculator."
    puts "1) Do a problem."
    puts "2) View History."
    puts "3) Exit program."
  end

  while true
    menu
    option = gets.strip.to_i
    case option 
      when 1 
        calculator
      when 2
        puts @history
      when 3
        exit
      when option == "exit"
        exit
    end
  end













