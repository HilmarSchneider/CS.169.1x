def palindrome?(string)
  string.downcase.gsub(/[^A-Za-z]/,'') == string.downcase.reverse.gsub(/[^A-Za-z]/,'')
end

def count_words(string)
  result = Hash.new(0)
  string.downcase.scan(/\w+/).each{|word| result[word]+=1}
  result
end
