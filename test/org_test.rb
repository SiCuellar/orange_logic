require 'minitest/autorun'
require 'minitest/pride'
require './lib/org'

class OrgTest < Minitest::Test
    def test_it_exists
        org = Org.new
        assert_instance_of Org, org
    end 

    def test_it_can_check_for_longest_even_word
        org = Org.new
        expected = 
        sentence = ("It is a pleasant day today")
        assert_equal "pleasant", org.longestEvenWord(sentence)
    end 

    def test_it_can_return_pairs_with_difference
        org = Org.new
        a = [5,1,5,3,4,2,2]
        assert_equal 3, org.kDifference(a, 2)
    end 

    def test_it_can_make_pairs
        org = Org.new
        numbers = [1,1,1,2]
        assert_equal 1, org.countPairs(numbers,1)
    end 

    # def test_it_can_count_pairs
    #     org = Org.new
    #     numbers = [1,1,1,2]
    #     assert_equal 1, org.countPairs(numbers,1)
    # end 
    
   
end 