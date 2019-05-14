class PigLatinizer

  def vowels(word)
    vowel = "aeiouAEIOU"
    vowel.include?(word[0])
  end

  def piglatinize(word)
    if self.vowels(word)
      word << "way"
    else
      word << word.slice!(/^[^aeiouAEIOU]*/i || "") + 'ay'
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map{|individual| piglatinize(individual)}.join(" ")
  end
end
