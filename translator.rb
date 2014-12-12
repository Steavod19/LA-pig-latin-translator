def translate(sentence)
  final_answer = []
  vs = ["a", "e", "i", "o", "u"]

  sentence.each do |word|
    first_letter = word[0]

  if vs.include?(first_letter)
     final_word = word + "way"
     final_answer.push(final_word)
   else
    	first_vowel = word.index(/[aeiouy]/)
    	arr = word.partition(word[first_vowel])
    	final = "#{arr[1]}#{arr[2]}#{arr[0]}ay"
    	final_answer.push(final)
    end
  end
  final_answer.join(" ")
end

input = ARGV
puts translate(input)
