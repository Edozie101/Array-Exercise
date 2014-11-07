data =
  [
    ['X', 'O', 'O'],
    ['X', 'X', 'O'],
    ['O', 'X', 'O']
  ]

# just trying out functions and the .ord method 'discovered' by the russian dude
# to create a unique "winning number"
# method is totally unneccesary but still enjoy trying it out

  def sum(datablock)
    agg = 0
    datablock.each_char { |a| agg += a.ord}
    return agg
  end
  winner=''
  if sum(data.join[0..2]) || sum(data.join[3..5]) || sum(data.join[6..8]) == 237 #"OOO"
    winner = "O"
  elsif   data.join[0..2] || data.join[3..5]  || data.join[6..8] == 264    #"XXX"
    winner = "X"

end

p winner
