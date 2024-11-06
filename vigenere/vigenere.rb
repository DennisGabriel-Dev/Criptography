alphabet = ('a'..'z').to_a
key = 'senha'
phrase = 'criptografia'
result = ''
alter_key = ''

phrase.length.times do | i |
  alter_key += key[i % key.length]
end

phrase.split('').map.with_index do | letter, i |
  result += alphabet[(alphabet.index(letter) + alphabet.index(alter_key[i])) % 26 ]
end

puts result
