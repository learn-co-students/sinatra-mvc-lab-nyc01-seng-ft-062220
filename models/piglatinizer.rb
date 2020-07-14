class PigLatinizer 

    attr_accessor :text

    def piglatinize(user_text)
        @text = user_text
        split_text = @text.split(' ')

        result = ""

        split_text.each do |word|
            if word.start_with?('a','e','i','o','u','A','E','I','O','U') 
                word << "way"
            else
                consonant = word[0]
                word.slice!(0)
                    until word.start_with?('a','e','i','o','u','A','E','I','O','U')
                        consonant = consonant + word[0]
                        word.slice!(0)
                    end
                        word << "#{consonant}ay"
            end
            result = result + "#{word} "
        end

        result.chop
    end
    
end