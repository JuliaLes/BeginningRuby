# Julia Les 5/26/16
# Unique Word Count Problem

def unique_words(p)
  p.downcase!
  p.gsub!(" '", ' ')
  p.gsub!("' ", ' ')
  p.gsub!(/[^a-z0-9 '-]/, '')

  words_array = p.split(' ')
  words_and_count = Hash.new(0)

  words_array.each { |word| words_and_count[word] += 1 }

  return words_and_count.to_a
end
