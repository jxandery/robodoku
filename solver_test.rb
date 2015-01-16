gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
# require 'seeing_is_believing'
require_relative 'solver'

class SolverTest < Minitest::Test

  # def setup
  #   board = Solver.new("1234 2123")
  #   # puts "i set shit up"
  # end
  #
  # # def teardown
  # #   puts 'I tore shit down'
  # # end
  # #
  # # def create_array
  # #   @board = Solver.new(" 13 2 14342  243")
  # #   @board.chars_array
  # # end
  #
  # def test_it_exists
  #   assert Solver
  # end
  #
  # def test_input_is_valid
  #   four_by_four = Solver.new(" 13 2 14342  243")
  #   assert four_by_four.valid_input?
  # end
  #
  # def test_number_string_only
  #   board = Solver.new(" 13 2 14342  243")
  #   assert_equal "0130201434200243", board.format_input
  # end
  #
  # def test_chars_array_is_being_created
  #   board = Solver.new(" 13 2 14342  243")
  #   board.format_input
  #
  #   assert_equal [0, 1, 3, 0, 2, 0, 1, 4, 3, 4, 2, 0, 0, 2, 4, 3], board.chars_array
  # end
  #
  # def test_board_is_setup
  #   board = Solver.new(" 13 2 14342  243")
  #   board.chars_array
  #
  #   assert_equal [[1, 2, 3, 4], 1, 3, [1, 2, 3, 4], 2, [1, 2, 3, 4], 1, 4, 3, 4, 2, [1, 2, 3, 4], [1, 2, 3, 4], 2, 4, 3], board.setup_board
  # end
  #
  # def test_validate_row
  #   board = Solver.new("0130201434200243")
  #   board.chars_array
  #   board.setup_board
  #
  #   assert_equal [[1, 2, 3, 4], 2, 4, 3], board.create_row4
  # end
  #
  # def test_compare_arrays
  #   board = Solver.new("0130201434200243")
  #   board.chars_array
  #   board.setup_board
  #
  #   assert_equal [4], board.eliminate_possibilities([[1, 2, 3, 4], 2, 1, 3])
  #
  #
  # end

  def test_solves_correctly_with_zeros
    expected = "4132231434211243"
    actual = Solver.new("0130201434200243").solve

    assert_equal expected, actual
  end

  def test_solves_correctly_with_spaces
    expected = "4132231434211243"
    actual = Solver.new(" 13 2 14342  243").solve

    assert_equal expected, actual
  end

  def test_validates_length
    assert_equal "invalid input", Solver.new("123").solve
  end
end
