
    		@@action= 0
            @@romance= 0 
            @@horror= 0 
            @@family= 0 
            @@comedy= 0 
 #To quiz the user on what mood they are in and giving them a movie type to watch 
 
 
 #To display the result that has the most questions matched with it

def scoring(answer)
# everytime someone chooses a certain letter than 1 will be added on to their behind the senses score  
        if    answer == "a"
              @@action += 1
        elsif answer == "b"
              @@romance += 1
        elsif answer == "c"
              @@horror += 1
        elsif answer == "d"
              @@family += 1
        elsif answer == "e"
              @@comedy += 1
        else
          return "nothing"
        end

end

def result_selector
    
    real_array = []
    
      if @@action > @@romance && @@action > @@horror && @@action > @@comedy &&  @@action > @@family 
            return real_array.push("Action")
      elsif @@romance > @@action && @@romance > @@horror && @@romance > @@comedy && @@romance > @@family
            return real_array.push("Romance")
      elsif @@horror > @@action && @@horror > @@romance && @@horror > @@comedy && @@horror > @@family
            return real_array.push("Horror")
      elsif @@comedy > @@action && @@comedy > @@romance && @@comedy > @@horror && @@comedy > @@family 
            return real_array.push("Comedy")
      elsif @@family > @@action && @@family > @@romance && @@family > @@horror && @@family  > @@comedy
            return real_array.push("Family")
      else
            results_array = [@@action, @@romance, @@horror, @@family, @@comedy]

            if results_array[0] == results_array.max
                real_array.push("Action")
            end

            if results_array[1] == results_array.max
                real_array.push("Romance")
            end

            if results_array[2] == results_array.max
                real_array.push("Horror")
            end

            if results_array[3] == results_array.max
                real_array.push("Comedy")
            end

            if results_array[4] == results_array.max
                real_array.push("Family")
            end

            return real_array




            end
end
#stating that all types are starting at 0  
#test
