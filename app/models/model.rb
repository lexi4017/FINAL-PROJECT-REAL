
  class Questions
 #To quiz the user on what mood they are in and giving them a movie type to watch 
 
 
 #To display the result that has the most questions matched with it

def scoring 
# everytime someone chooses a certain letter than 1 will be added on to their behind the senses score  
if    answer == a
      @@action += 1
elsif answer == b
      @@romance += 1 
elsif answer == c
      @@horror += 1
elsif answer == d
      @@family += 1
elsif answer == e 
      @@comedy += 1
else 
  return "nothing" 
      end 

end

def result_selector
      if @@action > @@romance && @@action > @@horror && @@action > @@comedy &&  @@action > @@family 
            return "Action"
      elsif @@romance > @@action && @@romance > @@horror && @@romance > @@comedy && @@romance > @@family
            return "Romance"
      elsif @@horror > @@action && @@horror > @@romance && @@horror > @@comedy && @@horror > @@family
            return "Horror"
      elsif @@comedy > @@action && @@comedy > @@romance && @@comedy > @@horror && @@comedy > @@family 
            return "Comedy"
      elsif @@family > @@action && @@family > @@romance && @@family > @@horror && @@family  > @@comedy
            return "Family"
      else 
            return "nothing"
  end
end
#stating that all types are starting at 0 
def self.start_quiz
    		@@action= 0 
            @@romance= 0 
            @@horror= 0 
            @@Family= 0 
            @@comedy= 0 
    		@@mood_movie.each do |movie|
      			self.quiz_movie(movie)
 end 
    		
