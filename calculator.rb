@history =[]

def calculator
  number1
  operator
  number2
  solution
end

  def solution
    puts "Calculating..."
    solution = @number1.send(@symbol, @number2) 
    puts "#{@number1} #{@symbol} #{@number2} = #{solution}" 
    @history << "#{@number1} #{@symbol} #{@number2} = #{solution}"
  end

  def number1
    puts "What is the first number?"
    first_num = gets.strip
    if first_num.match(/^\d+(\.\d+)?$/)
      @number1 = first_num.to_f
    else 
      puts "Not valid."
      number1
    end
  end


  def number2
    puts "What is the second number?"
    sec_num = gets.strip
      if sec_num.match(/^\d+(\.\d+)?$/)
        @number2 = sec_num.to_f
      else 
        puts "Not valid."
        number2
      end
  end

  def operator
    puts "What is the operator?"
    op = gets.strip
      if op === "+" || op === "-" || op === "*" || op === "/" || op === "**"
      @symbol = op.to_sym
      else 
        puts "Not valid."
        operator
      end
  end


  def menu
    puts "Welcome to the Ruby Calculator."
    puts "1) Do another problem."
    puts "2) View History."
    puts "3) Exit program."
  end

  while true
    menu
    option = gets.chomp.to_i
    case option 
      when 1 
        calculator
      when 2
        puts @history
      when 3
        exit
      else 
        puts "Not an option."
        menu
    end
  end













