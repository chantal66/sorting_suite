class BubbleSort
  def initialize 
    @letters_to_sort = ["d", "b", "a", "c"]
    swaps = 0
    @swapped = false
  end
  
  def sort
    # number of times we'll loop through
    n = @letters_to_sort.length
    
    while @swapped == false
      (n-1).times do |index|
        if @letters_to_sort[index] > @letters_to_sort[index + 1]
          @letters_to_sort[index], @letters_to_sort[index + 1] = @letters_to_sort[index + 1], @letters_to_sort[index]
          @swapped = true  
          #swaps +=1
        end
        
      end  
      break if !swapped
    end
  end
  
end

sorter = BubbleSort.new
p sorter.sort