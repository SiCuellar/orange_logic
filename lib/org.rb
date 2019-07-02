require 'pry'

class Org 
    
    def longestEvenWord(sentence)
        words = sentence.split
        longest_word= ""
        
        words.each do |word|
            if word.length % 2 == 0 
                longest_word = word if word.length 
            end 
        end 
        longest_word
    end 
    
    def kDifference(a, k)
        sorted_nums = a.sort.uniq
        sorted_nums.count do |num|
            a.include?(num + k)
        end 
    end
    
    
    
    # def countPairs(numbers, k)
    # # (a,b) pair ---- target = a+k = b
    # # use k = b-a 
    #     count = 0
    #     sorted_nums = numbers.sort
    #     sorted_nums.map do |num|
    #         if numbers.include?(num+k)
    #             count +=1
    #         end
    #     end
    #     count
    # end 
    
    # def makepairs(numbers)
    #     hash_table = {}
    # end 
end 

# def kDifference(a, k)
#     count = 0
#     sorted_nums = a.sort.uniq
#     sorted_nums.map do |num|
#         if a.include?(num + k)
#             count +=1
#         end 
#     end 
#     count
# end 

# def longestEvenWord(sentence)
#     # finds even words
#     words = sentence.split
#     even_words = []
#     words.each do |word|
#         letter_count = word.chars.count
#         if letter_count % 2 == 0 
#             even_words << word
#         end 
#     end
    
#     longest_word = nil
#     # finds longest word
#     even_words.map do |word|
#         if longest_word == nil
#             longest_word = word
#         elsif longest_word.length < word.length
#             longest_word = word 
#         end 
#     end 
#     longest_word 
# end