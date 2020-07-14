class PigLatinizer

    def piglatinize(text)
        pig_latin(text)
    end


    def pig_latin(text)
        every_letter = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = every_letter - vowels

        arr1 = text.split
        arr2 = arr1.map do |word|
            if word.length < 2
                word + "way" 
             elsif vowels.include?(word[0])
                word + "way"
             elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                word[3..-1] + word[0..2] + 'ay'
             elsif consonants.include?(word[0]) && consonants.include?(word[1])
                word[2..-1] + word[0..1] + 'ay'
             elsif consonants.include?(word[0])
                word[1..-1] + word[0] + 'ay'
             else 
                word + '?'
             end
        end
        arr2.join(" ")
    end

end
