require 'pry'

class Org 
    def longestEvenWord(sentence)
        # finds even words
        words = sentence.split
        even_words = []
        words.each do |word|
            letter_count = word.chars.count
            if letter_count % 2 == 0 
                even_words << word
            end 
        end
        
        longest_word = nil
        # finds longest word
        even_words.map do |word|
            if longest_word == nil
                longest_word = word
            elsif longest_word.length < word.length
                longest_word = word 
            end 
        end 
        longest_word 
    end




    def kDifference(a, k)
        sorted_integers = a.sort.uniq
        binding.pry
    end
end 

