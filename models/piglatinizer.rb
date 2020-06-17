class PigLatinizer 
    attr_reader :text 

    def initialize(text)
        @text = text 
    end 

    def count_of_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).slice(0)
      end
    
      def delete
        d = text[1..-1]
      end
     
      def sum 
        delete + count_of_consonants 
      end 
    
      def final
          sum + "ay"
      end 


end 