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

# Print pref method
# Ask user how they would like to print the directory
def print_pref
  puts "How would you like to print the directory ('by letter'/'less than 12'/'all')?"
  print_pref = gets.chomp
end
# Only print students whos name begins with
# Specific letter
def print_by_letter
    puts "Enter first letter of name"
    letter = gets.chomp
end

# Method to print students
# Loop to print each student in the students
# According to print pref result
def print(students)
    print_preference = print_pref
    if print_preference == "all"
      students.each_with_index do |student, index|
        puts "#{index+ 1}. #{student[:name]} (#{student[:cohort]} cohort)"
      end

    # If preint preference is by letter
    # Ask user to enter a letter
    # Print all studnets with name beginning with entered letter
    elsif print_preference == "by letter"
      letter = print_by_letter
      students.each_with_index do |student, index|
        if student[:name][0] == letter
          puts "#{index+ 1}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
      end
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
