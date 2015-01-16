# Level(2) = L2
# - Create an array of potential solutions inside this array of numbers
#   -if the number is a 0, replace with an object array of potential solutions - [1,2,3,4]
# - each of these columns has 4 objects. these objects can be either an array or a number
#   - the object array will contain the potential solutions - [1,2,3,4]

# create method called setup_board; setup_column/row/square

col1_L2 = []                        #cl2
  col1_L1_int.map do |i|            #[2,0,4,3]
    if i == 0
      col1_L2 << i = [1,2,3,4]
    else
      col1_L2 << i
    end
  end
  => [2, [1,2,3,4], 4, 3]           #cl2

  # Level(3) = L3
  # - compare the L1 array with the arrays in L3
  #   - if the nums in L3 contain L2 nums, delete those nums in L3

  col1_L3 = (1..4).to_a             # create an array from 1-4 possible solutions      #cl3
  col1_L2.each do |num|             # for each element |num| in the col1_L2 array      #cl2
    if col1_L3.include?(num)        # if array col1_L3 includes the element |num|      #cl3
      col1_L3.delete(num)           # delete that element |num|                        #cl3
    end
  end
  ==> [1]                           # returns new array, col1_L3                      #cl3

  #   - if the array in L3 contains only a single element, flatten L3
  #   - combine single element L3 back into L2
  #   - if the array in L2 contains only a single element, flatten L2

  col1_L3.each do |num|                                                                #cl3
    if col1_L3.length == 1                                                             #cl3
      col1_L2[array_index_position] = col1_L3   # looks like [2, [1,3], 4, 3]          #cl2
      col1_L2 = col1_L2.flatten                                                        #cl2
    end
  end
  => col1_L2 = [2,1,4,3]

  col1_L2.each do |num|                                                                #cl2
    if col1_L2.is_a?(Fixnum)                                                           #cl2
      col1_L1 = col1_L2           # may need to change col1_L1 to an instance variable
    end
  end
  => col1_L2 = [2,1,4,3]
