require 'minitest/autorun'
require 'minitest/pride'
require './lib/org'

class OrgTest < Minitest::Test
    def test_it_exists
        org = Org.new
        assert_instance_of Org, org
    end 

    def test_it_can_check_for_first_even_word
        org = Org.new
        expected = 
        sentence = ("It is a pleasant day today")
        assert_equal "pleasant", org.longestEvenWord(sentence)
    end 
end 