require 'pry'
class BubbleSort
  def initialize(letters_to_sort) 
    @letters_to_sort = letters_to_sort
    swaps = 0
    #@swapped = false
  end
  
  def sort
    n = @letters_to_sort.length

   @letters_to_sort.each do 
      swaps = 0
      @letters_to_sort.each_with_index do |i , index|
        break if index == (n-1)
        if i > @letters_to_sort[index + 1]
          @letters_to_sort[index], @letters_to_sort[index + 1] = @letters_to_sort[index + 1], @letters_to_sort[index]

          swaps +=1
          
        end
      end
      break if swaps == 0  
   end
   @letters_to_sort
  end
   

  
end

sorter = BubbleSort.new(["d", "b", "a", "c"])
p sorter.sort

# sorting_numbers = BubbleSort.new([4,65,6,8,10])
# p sorting_numbers.sort