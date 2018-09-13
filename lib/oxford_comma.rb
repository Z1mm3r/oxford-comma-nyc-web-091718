def oxford_comma(array)
  
  output_string = ""
  
  case 
  
    when array.size < 2 
          output_string = array.join("")
  
    when array.size == 2 
      output_string = array.join(" and ")
      
    when array.size > 2 
      array.each_with_index |element,index|
      {
      
        if(index == output_string.size - 2)
          output_string += ", and " + element
        else
          output_string += ", " + element
        end
      }
      end
  
  end
  
end