require 'pry'

class Org 
    def longestEvenWord(sentence)
        words = sentence.split
        even_words = []
        words.each do |word|
            letter_count = word.chars.count
            if letter_count % 2 == 0 
                even_words << word
            end 
        end
        
        even_words.map do |word|

        binding.pry
    end
end 