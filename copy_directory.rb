#students = [
 # {name: "Dr. Hannibal Lecter", cohort: :november},
  #{name: "Darth Vader", cohort: :november},
  #{name: "Nurse Ratched", cohort: :november},
  #{name: "Michael Corleone", cohort: :november},
  #{name: "Alex DeLarge", cohort: :november},
  #{name: "The Wicked Witch of the West", cohort: :november},
  #{name: "Terminator", cohort: :november},
  #{name: "Freddy Krueger", cohort: :november},
  #{name: "The Joker", cohort: :november},
  #{name: "Joffrey Baratheon", cohort: :november},
#  {name: "Norman Bates", cohort: :november}
#]
# instead of array or hash, we ask student for the name
def student_input
  months = ["january","february","march","april","may","june","july","august","september","october","november","december"]
 # create an ampty array
  students = []
  puts "Please enter the names of the students"
  puts "To finish, leave the name blank and press enter"
# ask for user input on name
  name = gets.chomp
# while the name is not empty, repeat this code
  while !name.empty? do
    name = name.capitalize!
# ask what cohort it is. Cohort is set to January if input left empty 
    puts "Whtat is the cohort? Note, it will be set to January as default"
    cohort = gets.chomp.downcase.to_sym
    if months.include?(cohort)
      cohort.capitalize!
    else
      cohort = "January"
    end
    puts "And the hobby?"
    hobby = gets.chomp.capitalize!
    
    students << {name: name, cohort: cohort, hobbies: hobby}
    puts "Now we have #{students.count} students"
    # get anohter name from the user
    puts "Please enter next student"
    name = gets.chomp
  end
  # return the array of students
  return students
end

def print_header
  puts "The students of Villains Academy".center(CENTER_SPACE)
  puts "-------------".center(CENTER_SPACE)
end

def print(students)
# while loop is printing student names while count is not equal number of students 
  i = 0
  while i != students.length do
  puts "#{students[i][:name]} (#{students[i][:cohort]} cohort). #{students[i][:name]}'s favorite hobby is #{students[i][:hobbies]}".center(CENTER_SPACE)
  i += 1
  end
  i += 1
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(CENTER_SPACE)
end

students = student_input
CENTER_SPACE = 60
print_header
print(students)
print_footer(students)