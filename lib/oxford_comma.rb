def oxford_comma(array)
  
  output_string = ""
  
  case 
  
    when array.size < 2 
          output_string = array.join("")
  
    when array.size == 2 
      output_string = array.join(" and ")
      
    when array.size > 2 
      array.each_with_index do |element,index|
      tempHold = []
      tempHold.push(array[index])
        if(index == 1)
          output_string += tempHold.join("")
          
        elsif(index == output_string.size - 2)
          output_string += ", and #{(tempHold = array[index]).join("")}"
        else
          output_string += ", #{tempHold.join("")}"
        end
      
      end
  
  end
  
  return output_string
  
end