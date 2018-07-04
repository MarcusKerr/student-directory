# Input studnetgs method
# Getting students
# And creating student array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"

  # Create an empty array
  students = []

  # Get the first name
  name = gets.chomp

  # While the name is not empty repead this code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # Get another name from the user
    name = gets.chomp
  end
  # Return the array of students
  students
end

# Header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Method to print students
def print(students)
  # Loop to print each student in the students array
  students.each_with_index do |student, index|
    puts "#{index+ 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# Footer method
def print_footer(names)
  # Print total number of students
  puts "Overall we, have #{names.count} great students"
end

# Call methods
students = input_students
print_header
print(students)
print_footer(students)
