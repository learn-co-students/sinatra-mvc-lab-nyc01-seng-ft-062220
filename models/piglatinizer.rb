class PigLatinizer
    
    def piglatinize(words)
        @words = words.downcase


        piggy_it = @words.split(" ")

        # if piggy_it[0].char.match(/[aAeEiIoOuU]/)
            

        new_piggy = piggy_it.map { |x| "#{x}ay"}
        new_piggy.join(" ")
    end

end