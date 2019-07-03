require 'pry'

class Org
    def longestEvenWord(sentence)
        words = sentence.split
        longest_word= ""

        words.each do |word|
            if word.length % 2 == 0
                longest_word = word if word.length > longest_word.length
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

    # (a,b) pair ---- target = a+k = b
    # use k = b-a
    def countPairs(arr, k)
        counter = 0
        new_arr = (arr.uniq).sort
        new_arr.each_with_index do |num, i|
            if new_arr[i + 1]
                if (num - new_arr[i + 1]).abs == k
                    counter += 1
                end
            end
        end
        counter
    end

    def easyStrings(string_a, string_b)
      a_array = string_a.chars
      b_array = string_b.chars

      counter = 0
      first_last_counter(a_array, b_array, counter)
    end

    def first_last_counter(a_array ,b_array, counter)
      if b_array == a_array
        counter
      else
        if a_array[0] == b_array[-1] && a_array[-1] == b_array[0]
          a_array[0], a_array[-1] = a_array[-1], a_array[0]
          counter += 1
        else
          first_last_counter(a_array, b_array, counter)
        end
      end
    end


end
# def make_pairs(numbers, k)
#     counter = 0
#     sorted_nums = (numbers.uniq).sort
#     sorted_nums.each_with_index do |num, i|
#         if sorted_nums[i + 1]
#             # binding.pry
#             if (num - sorted_nums[i + 1]).abs == k
#                 counter +=1;
#             end
#         end
#     end
#     puts counter
# end

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
#
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
#
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
