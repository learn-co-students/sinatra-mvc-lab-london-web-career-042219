# frozen_string_literal: true

class PigLatinizer
  def piglatinize(text)
    phrase_array = text.split(' ')
    latinized = []
    phrase_array.map do |word|
      word_array = []

      word.each_char do |letter|
        word_array << letter
      end

      if word_array[0] =~ /[AEIOUaeiou]/
        word_array << 'w'
      else
        word_array << word_array.shift until word_array[0] =~ /[AEIOUaeiou]/
      end

      word_array << 'ay'
      latinized << word_array.join
    end
    latinized.join(' ')
  end
end
