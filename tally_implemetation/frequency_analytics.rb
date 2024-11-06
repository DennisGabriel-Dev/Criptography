phrase = "dennis eh programador ruby"
hash = {}

for letter in phrase.gsub(/\s/, "").split('').sort do
  letter = letter.upcase
  if hash[letter].nil?
    hash[letter] = 1
  else
    hash[letter] += 1
  end
end


puts hash
