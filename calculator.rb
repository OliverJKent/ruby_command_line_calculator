puts 'Which calculator (basic, advanced or bmi)?'
STDOUT.flush
calc_choice = gets.chomp
puts "You have chosen #{calc_choice}"

if calc_choice == "basic"
  puts "Enter first number"
  STDOUT.flush
  first_Num = gets.chomp
  puts "Enter operator (+ - * /)"
  STDOUT.flush
  op = gets.chomp
  puts "Enter second number"
  STDOUT.flush
  second_Num = gets.chomp
  if op == "+" || op == "*" || op == "*" || op == "/"
  puts (first_Num.to_f.public_send(op, second_Num.to_f))
else
  puts "Error: Invalid Operator"
end
elsif calc_choice == "advanced"
  puts "Enter first number"
  STDOUT.flush
  first_Num = gets.chomp
  puts "Enter operator (sqrt, ^)"
  STDOUT.flush
  op = gets.chomp
  if op == "^"
  puts "Enter second number"
  STDOUT.flush
  second_Num = gets.chomp
  puts first_Num.to_f ** second_Num.to_f
  elsif op == "sqrt"
    puts Math.sqrt(first_Num.to_f)
  else
    puts "Error: Invalid Operator"
  end

elsif calc_choice == "bmi"
  puts "imperial or metric?"
  STDOUT.flush
  measurement = gets.chomp
  puts "enter weight"
  STDOUT.flush
  weight = gets.chomp
  puts "enter height"
  STDOUT.flush
  height = gets.chomp
  if measurement == "imperial"
    puts ((weight.to_f / (height.to_f * height.to_f)) * 703)
  elsif measurement == "metric"
    puts (weight.to_f / (height.to_f * height.to_f))
  else puts "Error: Invalid Measurment System"
  end

else
  puts "Error: Invalid Calc Type"
end
