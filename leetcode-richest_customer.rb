def maximum_wealth(accounts)
  accounts.map!{ |a| a.sum }
  accounts.sort!.reverse!
  p accounts.first
end


## TEST

accounts_a = [[1,2,3],[3,2,1]]
puts "Accounts A:"
maximum_wealth(accounts_a)
# Output: 6

accounts_b = [[1,5],[7,3],[3,5]]
puts "Accounts B:"
maximum_wealth(accounts_b)
# Output: 10

accounts_c = [[2,8,7],[7,1,3],[1,9,5]]
puts "Accounts C:"
maximum_wealth(accounts_c)
# Output: 17
