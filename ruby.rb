def stock_picker(array)
  storageHAsh = {}
  biggest = {0 => [0]}
  print(biggest[0])
  array.each_with_index do |v, i|
    p "I is: ", i
   
  
        array.each do |elm| 
          p "elm is ", elm
          if elm > v  && array.find_index(elm) > i
            tracker = 0
            array.each do |tracks|
              if tracks > tracker && tracks > elm 
                tracker = tracks
              end
            end
            elm = tracker

          end
          storageHAsh[elm] = [v-elm]

            
          
          # if elm > v && array.find_index(elm) > i
            
          #   storageHAsh[elm] = "Element: #{elm} - #{v} = #{elm-v}"
           
          # end
        end
    
          
    

    
  end

  biggest = storageHAsh.max_by {|k, v| v}
  
  return biggest


    



  

end


p stock_picker([17,3,6,9,15,8,6,1,10])

## If the largest number is first then we skip to the next iteration, 
## If the current number is the last number then end the loop
## Take the current number, and store it somwehere, 
## Take the largest number that is after it and store it
# Store their diffences in a hash 
#filter the hash for the largest difference
#output that value to the array
