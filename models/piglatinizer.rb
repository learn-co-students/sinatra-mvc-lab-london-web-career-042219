class PigLatinizer 

    attr_reader :text 

    def initialize( text="" )
        @text=text
    end 

    def piglatinize( latinizewords = text)    
        words = latinizewords.split(" ")
        words.map! {|word| latinizeword(word) }
        words.join(" ")
    end


    def latinizeword( word ) 
# If the 1st letter is a vowel
#   add way to the end of the word, and return it
# else  get the first chunk of consonants and put in part2 string
# Get the second chumk, starting with a vowel and put in part1 string
#  return part1 + part2 + 'ay'
        return_word = ''
        vowelposition = word.downcase.split("").find_index { |l| l=='a' || l=='e' || l=='i' || l == 'o' || l == 'u' }
        if vowelposition==0 || !vowelposition
            return_word=word+'way'
        else
            part2= word[0..vowelposition-1]
            part1= word[vowelposition..-1]
            return_word=part1 + part2 + 'ay'
        end

        return_word

    end

end