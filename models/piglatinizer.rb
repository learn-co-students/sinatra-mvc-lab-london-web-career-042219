class PigLatinizer

  def vowels(word)
    vowel = "aeiouAEIOU"
    vowel.include?(word[0])
  end

  def piglatinize(word)
    word.split(" ").map do |individual|

      if self.vowels(individual)
        individual << "way"
      else
        individual << individual.slice!(/^[^aeiouAEIOU]*/i || "") + 'ay'
      end
    end.join(" ")
  end
end
