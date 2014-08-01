def lucky_name(name)
  name = name.upcase
  letters = name.to_s.split('')
  letter_val = {"A" => 2, "B" => 2,  "C" => 2, "D" => 3, "E" => 2,
    "F" => 3, "G" => 2,  "H" => 3, "I" => 2, "J" => 3,
    "K" => 2, "L" => 2,  "M" => 2, "N" => 2, "O" => 3,
    "P" => 2, "Q" => 3, "R" => 2, "S" => 3, "T" => 2,
    "U" => 3, "V" => 3,  "W" => 3, "X" => 2, "Y" => 3,
    "Z" => 2}
  letters.map! {|x| x = letter_val[x]}
  first_half = letters.slice(0..(letters.length/2)-1)
  second_half = letters.slice(-(letters.size/2)..-1)
  first_half.inject(:+) == second_half.inject(:+)
end
puts lucky_name("michael")
