class TestCode

Step 1:
  Level(0) = L0
  - input received as a string text of 16 characters excluding \n
  - create 4 arrays, each array seperated by \n

  # char_input = " 13 \n2 14\n342 \n 243"      #aa
  # puzzle = char_input.split("\n")            #ab
  # => [" 13 ", "2 14", "342 ", " 243"]

  # create 4 rows taking the corresponding index position from each array
  # row_one_input = puzzle[0]              #
  # row_two_input = puzzle[1]              #
  # row_three_input = puzzle[2]              #
  # row_four_input = puzzle[3]              #

  # # the code below doesn't work. i don't know why.
  # puzzle.map do |i|
  #   count = 0
  #   row(count)_input = puzzle[i]
  #   count += 1
  # end

Step 2:
  Rows
  Level(1) = level_one
  - take in string and convert into an array of 4 rows seperated by "\n"
    - if the character in the string is a " ", then converting into an array with chars will change "(spaces)" to 0
    - convert the array of strings to an array of numbers
  # row_one_input = " 13 "                 #a
  #
  # row_one_level_one = row_one_input.chars
  # => [" ", "1", "3", "0"]             #b
  #
  # row_one_level_one_int = []                    #b_int
  # row_one_level_one.map do |i|
  #   row_one_level_one_int << i.to_i
  # end
  # => [0,1,3,0]                        #b_int

  char_input = " 13 \n2 14\n342 \n 243"      #aa
  char_input = char_input.delete("\n")
  num_str = char_input.gsub(" ", "0")
  char_input = char_str.chars
  char_num = []
  char_input.map do |i|
    char_num << i.to_i
  end

  row_one_level_one = [char_num[0], char_num[1], char_num[2], char_num[3]]
  row_two_level_one = [char_num[4], char_num[5], char_num[6], char_num[7]]
  row_three_level_one = [char_num[8], char_num[9], char_num[10], char_num[11]]
  row_four_level_one = [char_num[12], char_num[13], char_num[14], char_num[15]]

  Level(2) = level_two
  - Create an array of potential solutions inside this array of numbers
    -if the number is a 0, replace with an object array of potential solutions - [1,2,3,4]
  - each of these rows has 4 objects. these objects can be either an array or a number
    - the object array will contain the potential solutions - [1,2,3,4]

  row_one_level_two = []
  row_one_level_one_int.map do |i|
    if i == 0
      row_one_level_two << i = [1,2,3,4]
    else
      row_one_level_two << i
    end
  end
  => [[1,2,3,4], 1,3,[1,2,3,4]]

  Level(3) = level_three
  - compare the level_one array with the arrays in level_three
    - if the nums in level_three contain level_two nums, delete those nums in level_three

  row_one_level_three = (1..4).to_a             # create an array from 1-4 possible solutions       #d
  row_one_level_two.each do |num|             # for each element |num| in the row_one_level_two array      #c
    if row_one_level_three.include?(num)        # if array row_one_level_three includes the element |num|      #d
      row_one_level_three.delete(num)           # delete that element |num|                         #d
    end
  end
  ==> [1]                           # returns new array, row_one_level_three                       #d

    - if the array in level_three contains only a single element, flatten level_three
    - combine single element level_three back into level_two
    - if the array in level_two contains only a single element, flatten level_two

  row_one_level_three.each do |num|
    if row_one_level_three.length == 1
      row_one_level_two[array_index_position] = row_one_level_three   # looks like [[2,4],1,3,[2,4]]
    #  row_one_level_two = row_one_level_two.flatten                # not single elements, so can't flatten
    end
    => [[2,4],1,3,[2,4]]

Step 3: Repeat Step 2 for rows 2-4
  # skip for the moment

Step 4:
  Columns
  Level(1) = level_one
  - take in string and convert into an array of 4 rows seperated by "\n"
    - if the character in the string is a " ", then converting into an array with chars will change "(spaces)" to 0
    - convert the array of strings to an array of numbers

  col_one_level_one = [char_num[0], char_num[4], char_num[8], char_num[12]]
  col_two_level_one = [char_num[1], char_num[5], char_num[9], char_num[13]]
  col_three_level_one = [char_num[2], char_num[6], char_num[10], char_num[14]]
  col_four_level_one = [char_num[3], char_num[7], char_num[11], char_num[15]]

  # OR

  # if 4 rows is already in an array of numbers
  # x= rows.map {|row| row[0]} --> formula for converting to vertical array
  # rows = [row_one_level_one, row_one_level_two, row_one_level_three, row_one_L4]
  # col_one_level_one = rows.map {|row| row[0]}

  Level(2) = level_two
  - Create an array of potential solutions inside this array of numbers
    -if the number is a 0, replace with an object array of potential solutions - [1,2,3,4]
  - each of these columns has 4 objects. these objects can be either an array or a number
    - the object array will contain the potential solutions - [1,2,3,4]

  col_one_level_two = []
  col_one_level_one_int.map do |i|
    if i == 0
      col_one_level_two << i = [1,2,3,4]
    else
      col_one_level_two << i
    end
  end
  => [[1,4],2,3,[1,4]]

  Level(3) = level_three
  - compare the level_one array with the arrays in level_three
    - if the nums in level_three contain level_two nums, delete those nums in level_three

  col_one_level_three = (1..4).to_a             # create an array from 1-4 possible solutions       #d
  col_one_level_two.each do |num|             # for each element |num| in the col_one_level_two array      #c
    if col_one_level_three.include?(num)        # if array col_one_level_three includes the element |num|      #d
      col_one_level_three.delete(num)           # delete that element |num|                         #d
    end
  end
  ==> [1,4]                         # returns new array, col_one_level_three                       #d

    - if the array in level_three contains only a single element, flatten level_three
    - combine single element level_three back into level_two
    - if the array in level_two contains only a single element, flatten level_two

  col_one_level_three.each do |num|
    if col_one_level_three.length == 1
      col_one_level_two[array_index_position] = col_one_level_three   # looks like [[1,3], 2, 4, 2]
      col_one_level_two = col_one_level_two.flatten
    end
    => [2,1,4,3]

  Step 4 (Branch off): Comparing horizontal and vertical arrays
    - compare the row_one_level_one array with the arrays in col_one_level_three
      - if the nums in col_one_level_three contain row_one_level_two nums, delete those nums in col_one_level_three

  col_one_level_three = (1..4).to_a             # create an array from 1-4 possible solutions       #d
  row_one_level_two.each do |num|             # for each element |num| in the row_one_level_two array      #c
    if col_one_level_three.include?(num)        # if array col_one_level_three includes the element |num|      #d
      col_one_level_three.delete(num)           # delete that element |num|                         #d
    end
  end
  ==> [1,4]                         # returns new array, col_one_level_three                       #d

  #   - if the array in level_three contains only a single element, flatten level_three
  #   - combine single element level_three back into level_two
  #   - if the array in level_two contains only a single element, flatten level_two

  col_one_level_three.each do |num|
    if col_one_level_three.length == 1
      col_one_level_two[array_index_position] = col_one_level_three   # looks like [[1,3], 2, 4, 2]
      col_one_level_two = col_one_level_two.flatten
    end
    => [2,1,4,3]

Step 5: Repeat Step 2 for rows 2-4
  # skip for the moment

Step 6:
  Squares
  Level(1) =level_one
  - create an object that coverts column (row_one[0,2] and row_two[0,2]) into an array; going to have to hard code w/ array[index] position
    - if the character is a 0, then replace that with an object array

  sq_one_level_one = [char_num[0], char_num[1], char_num[4], char_num[5]]
  sq_two_level_one = [char_num[2], char_num[3], char_num[6], char_num[7]]
  sq_three_level_one = [char_num[8], char_num[9], char_num[12], char_num[13]]
  sq_four_level_one = [char_num[10], char_num[11], char_num[15], char_num[16]]

  Level(2) = level_two
  - Create an array of potential solutions inside this array of numbers
    -if the number is a 0, replace with an object array of potential solutions - [1,2,3,4]
  - each of these rows has 4 objects. these objects can be either an array or a number
    - the object array will contain the potential solutions - [1,2,3,4]

    col_one_level_two = []
    col_one_level_one_int.map do |i|
      if i == 0
        col_one_level_two << i = [1,2,3,4]
      else
        col_one_level_two << i
      end
    end
    => [[1,4],2,3,[1,4]]

  Level(3) = level_three
  - compare the level_one array with the arrays in level_three
    - if the nums in level_three contain level_two nums, delete those nums in level_three

    col_one_level_three = (1..4).to_a             # create an array from 1-4 possible solutions       #d
    col_one_level_two.each do |num|             # for each element |num| in the col_one_level_two array      #c
      if col_one_level_three.include?(num)        # if array col_one_level_three includes the element |num|      #d
        col_one_level_three.delete(num)           # delete that element |num|                         #d
      end
    end
      ==> [1,4]                       # returns new array, col_one_level_three                       #d

    - if the array in level_three contains only a single element, flatten level_three
    - combine single element level_three back into level_two
    - if the array in level_two contains only a single element, flatten level_two

    col_one_level_three.each do |num|
      if col_one_level_three.length == 1
        col_one_level_two[array_index_position] = col_one_level_three   # looks like [[1,3], 2, 4, 2]
        col_one_level_two = col_one_level_two.flatten
      end
    end
    => [2,1,4,3]

Step 7: Repeat step 6 for squares 2-4
Step 8: Repeat steps 2-7 until solved
Step 9: If it is still not solved, it's likely your 2nd assumption is not true

end
