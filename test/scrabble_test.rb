gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_that_score_is_insensitive_to_case
    assert_equal 1, Scrabble.new.score("A")
    assert_equal 4, Scrabble.new.score("f")
  end
  
end
