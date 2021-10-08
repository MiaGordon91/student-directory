# #One approach using methods 
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november}, 
#   {name: "Nurse Ratched", cohort: :november}, 
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november}, 
#   {name: "Freddy Krueger", cohort: :november}, 
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

def inputting_students

  puts "Please enter the names of your students?"
  puts "To finish, just hit return twice"

  student_arr = []

  name = gets.chomp #get the first name 

while !name.empty? do

  student_arr << {name: name, cohort: :november}

  if student_arr.count == 1 
    puts "We now have #{student_arr.count} student in cohort"
  else
    puts "We now have #{student_arr.count} students in cohort"
  end
  puts
  puts "Please enter another student name?"
  name = gets.chomp
end 
  student_arr 
end 


def print_header
  puts "The students of Villains Academy" 
  puts "----------------"
end 

def print_students(student_arr)
  student_arr.each do |student|
      puts "#{student[:name]} : #{student[:cohort]} cohort"
  end 
end 

def print_footer(student_arr)
  puts "Overall, we have #{student_arr.count} great students!" 
end 

student_arr = inputting_students #Saved the inputting students to a variable so it can be accessed below

print_header
print_students(student_arr) #variable is attached as an argument to enable the 
                            #inputting students method to run when students method is called
print_footer(student_arr)



