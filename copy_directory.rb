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
  puts "Please enter the names of the students"
  puts "To finish, leave the name blank and press enter"
# create an ampty array
  students = []
# ask for user input on name
  name = gets.chomp
# ask what cohort it is. Cohort is set to January if input left empty 
  puts "Enter cohort. Note, it will be set to January as default"
  cohort = gets.chomp.to_sym
  #cohort = "January" if cohort.empty? can be removed 
  if months.include?(cohort.downcase)
    return cohort
  else
    cohort = "January"
  end
  # ask about hobby
  puts "Please enter a hobby"
  hobby = gets.chomp
# while the name is not empty, repeat this code
  while !name.empty? do
    students << {name: name, cohort: cohort, hobbies: hobby}
    puts "Now we have #{students.count} students"
    # get anohter name from the user
    puts "Please enter next student"
    name = gets.chomp
    if name.empty?
      break
    end
    puts "Whtat is the cohort? Note, it will be set to January as default"
    cohort = gets.chomp.to_sym
    if months.include?(cohort.downcase)
      return cohort
    else
      cohort = "January"
    end
    puts "And the hobby?"
    hobby = gets.chomp
  end
  # return the array of students
  return students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
# while loop is printing student names while count is not equal number of students 
  count = 0
  while count != students.length do
    puts "#{students[count][:name]} (#{students[count][:cohort]} cohort). #{students[count][:name]}'s favorite hobby is #{students[count][:hobbies]}"
    count += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = student_input
print_header
print(students)
print_footer(students)
