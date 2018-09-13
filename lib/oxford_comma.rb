def oxford_comma(array)
  
  output_string = ""
  
  case 
  
    when array.size < 2 
          output_string = array.join("")
  
    when array.size == 2 
      output_string = array.join(" and ")
      
    when array.size > 2 
      array.each_with_index do |element,index|
      temp_hold = []
      tempHold.push(array[index])
        if(index == 0)
          output_string += temp_hold.join("")
          
        elsif(index == array.size - 1)
          output_string += ", and #{(temp_hold).join("")}"
        else
          output_string += ", #{temp_hold.join("")}"
        end
      
      end
  
  end
  
  return output_string
  
end