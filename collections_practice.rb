
def sort_array_asc(array) #sorts array the default way (a smallest, z biggest)
    array.sort 
end

def sort_array_desc(array) #sorts array in reverse order
    array.sort.reverse
end

def sort_array_char_count(array) #sorts array by length of string
    array.sort do |word, word2| #pass two arguments to compare
        word.length <=> word2.length #spaceship operator does the comparing
    end
end

def swap_elements(array)
array[1], array[2] = array[2], array[1] #swaps elements in array #if you want to swap two specific elements, use this syntax
array #returns array
end

 def swap_elements_from_to(array, index, destination_index)
 array[index], array[destination_index] = array[destination_index], array[index]
 end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    answer = array.each do |string| #you can use the index of a  string and change that character
        string[2] = "$"
    end
    answer
end

def find_a(array)
    answer_array = [] #create an empty array for our maintain state
    array.each do |word| #iterate through array
    answer_array << word if word.start_with?("a") #push any word that starts with "a" into our answer_array 
       end
       answer_array #return answer array
    end

def sum_array(array)
    array.inject{|sum, number| sum + number} #takes a, b similar to the sort method, but instead adds each element of an array together
end

def add_s(array)
    array.each_with_index.collect {|element, index| array[index] == "feet" ? "feet" : element + "s"} #initially made an if statement 
end
#if the element = "feet" return feet, otherwise, add an "s"