require_relative 'board'
require_relative 'spot'
require 'pry'

class Row
  attr_reader :contents

  def initialize(state)
    @contents = state
  end

  def solve
    eliminate_possibilities
    if_one_possibility_solve_it
  end

  def eliminate_possibilities
    (1..9).each do |number|
      if contents.include?(number)
        contents.each do |element|
          if element.is_a?(Spot)
            element.possibilities.delete_at(element.possibilities.index(number))
          end
        end
      end
    end
  end

  def if_one_possibility_solve_it
    contents.each do |element|
      if element.is_a?(Spot) && element.possibilities.length == 1
        contents[contents.index(element)] = element.possibilities.first
      end
    end
  end
end


 def intake_each_row(array_of_numbers)
    array_of_numbers.each_with_index do |row, index|
      intake_row(index + 1, row)
    end
  end

  def intake_row(row_number, numbers)
    numbers = numbers.chars
    numbers.each_with_index do |number, index|
      if number.to_i > 0
        row(row_number)[index] = number.to_i
      else
        row(row_number)[index] = Spot.new
      end
    end
  end
