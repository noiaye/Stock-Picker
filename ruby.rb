def stock_picker(array)
  storageHAsh = {}
  smallest_value = 1
 smallestfirst = array.max
 smallestsecond = array.max
  array.each_with_index do |elm, index|
    if elm == array.max && index == 0
      next
    end

    array.each_with_index do |thing, index1|
      if index1 < index 
        next
      end
      if thing == array.max && index1 == 0
        next
      end

      
      
      subtracted = elm - thing
      p "#{elm} - #{thing} = ", subtracted
      
      
      if subtracted < smallest_value
        smallest_value = subtracted
      end

      
      

      
    end
   
    storageHAsh[elm] = smallest_value  
    smallest_value = 1
   
    
  end

 
  
  newHash = {}
  
  biggestindex = storageHAsh.find_index(storageHAsh.max_by {|k, v| k - v})
  storageHAsh.each do |v, i|
    newHash[v] = array.select {|elm| v - elm == i}
  end
  
  final = newhash[biggestindex].map {|value| array.find_index(value)}

  return final
  
  
  
  
  
 
 
  
  
  # return [array.find_index( ]
end




p stock_picker([17,3,6,9,15,8,6,1,10])

## If the current index is 0 and the value is the biggest value 
## then we go to the next index 
## then we start the logic:
#

## Take the current item, and look at doing the operation (the current item - loop item)
## We also create a variable for storing the smallest value
#If the value is smaller than smallest value
#it becomes the new smallest value
## Now after the loop is finished, the variable should be the smallest sum for this current index
## So in order to store this value 
## We take a hash, and its values would be {current value, the element which when you do the operation current value - element gets the smallest variable we just got}
## Now we have hashes for all the elements, and we simply filter for the smallest element
## Then we look at the value for the hash and return its values but instead, the indexes of these values 
## boom
