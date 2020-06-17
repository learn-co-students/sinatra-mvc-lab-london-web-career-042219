class PigLatinizer
  def consonant?(letter)
    letter = letter.downcase
    !(letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u')
  end
  
  def piglatinize(string)
    new_string = []
    words = string.split(" ")
    words.each do |word|
      escape = false
      begins_with_vowel = !consonant?(word[0])
      word.split("").each do |letter|
        if(consonant?(letter) && !escape)
          word = word[1..-1] + word[0]
        else
          escape = true
        end
      end
      new_string << word + (begins_with_vowel ? "way" : "ay")
    end
    new_string.join(" ")
  end
end
