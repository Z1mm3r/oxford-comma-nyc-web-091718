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
      
        if(index == output_string.size - 2)
          tempHold.push(array[index])
          output_string += ", and #{(tempHold = array[index]).join("")}"
        else
          tempHold.push(array[index])
          output_string += ", #{tempHold.join("")}"
        end
      
      end
  
  end
  
end