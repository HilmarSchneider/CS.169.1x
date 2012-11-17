def combine_anagrams(words)
  seeds = []
  result = []
  words.each {|word| seeds << word.downcase.chars.sort.join}
  seeds.uniq!
  seeds.each do |seed|
    temp =[]
    words.each{|word| temp << word if word.downcase.chars.sort.join == seed}
    result << temp
  end
  result
end
