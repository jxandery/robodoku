class Solver

  attr_accessor :board_ready

  def initialize(input)
    @input = input
    @possibilities = [1,2,3,4]
  end

  def solve
    if valid_input?
      setup_board
      eliminate_possibilities
    else
      "invalid input"
    end
  end

  private

  def valid_input?
    @input.length == 16
  end

  def setup_board
    self.board_ready = @input.chars.map do |i|
      if i == "0" || i == " "
        @possibilities
      else
        i.to_i
      end
    end
  end

  def eliminate_row_possibilities
    board_ready.each_slice(4) do |row|
      row_possibilities = @possibilities
      known_numbers = row.select do |row_element|
        row_element.is_a? Fixnum
      end
      row_possibilites -= known_numbers

      row.
      unknown_numbers = row.select { |el| el.is_a? Array }

    end
    #row_one = @row1_l1.map do |i|
    # p rows
    row.each do |i|
    # @solution_num_array.each do |i|      # for each element |i| in the row_one_level_two array
      if i.is_a?(Fixnum)
        puts 'condition hit'               # if array @possibilities includes the element |i|
        @possibilities.delete(i)           # delete that element |i|
      end

    end

    @row4_L1[0] = @possibilities           # challenge: hardcoded in 1) method parameter & 2) index position
    @row4_L1 = @row4_L1.flatten            # challenge: will it even pass back through to @row4_L1
  end


end
