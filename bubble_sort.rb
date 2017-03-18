class BubbleSort
  def initialize(letters_to_sort) 
    @letters_to_sort = letters_to_sort
    #swaps = 0
    #@swapped = false
  end
  
  def sort
    n = @letters_to_sort.length
     
    # n-1 is number of times we'll loop through
   loop do
     @swapped = false
      (n-1).times do |index|
        if @letters_to_sort[index] > @letters_to_sort[index + 1]
          @letters_to_sort[index], @letters_to_sort[index + 1] = @letters_to_sort[index + 1], @letters_to_sort[index]
          @swapped = true  
          #swaps +=1
        end
      end  
     break if !@swapped
    end
  @letters_to_sort  
  end
  
end

sorter = BubbleSort.new(["d", "b", "a", "c"])
p sorter.sort