def fizz_buzz(n)
  new_array = []
  (1..n).to_a.each do |i|
    if i % 3 == 0 && i % 5 == 0
      new_array << "FizzBuzz"
    elsif i % 3 == 0
      new_array << "Fizz"
    elsif i % 5 == 0
      new_array << "Buzz"
    else
      new_array << "#{i}"
    end
  end
  p new_array
end


## TEST

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.

puts "Buzz A:"
a = 3
fizz_buzz(a)
# Output: ["1","2","Fizz"]

puts "Buzz B:"
b = 5
fizz_buzz(b)
# Output: ["1","2","Fizz","4","Buzz"]

puts "Buzz C:"
c = 15
fizz_buzz(c)
# Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
