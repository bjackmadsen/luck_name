def lucky_name(name)
  name = name.upcase
  letters = name.to_s.split('')
  letter_val = {"A" => 1, "B" => 3,  "C" => 3, "D" => 2, "E" => 1,
    "F" => 4, "G" => 2,  "H" => 4, "I" => 1, "J" => 8,
    "K" => 5, "L" => 1,  "M" => 3, "N" => 1, "O" => 1,
    "P" => 3, "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4,  "W" => 4, "X" => 8, "Y" => 4,
    "Z" => 10}
  letters.map! {|x| x = letter_val[x]}
  first_half = letters.slice(0..(letters.length/2)-1)
  second_half = letters.slice(-(letters.size/2)..-1)
  first_half.inject(:+) == second_half.inject(:+)

end
puts lucky_name("bops")
