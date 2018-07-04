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
def print_pref(students)
  puts "How would you like to print the directory ('by letter'/'less than 12'/'all')?"
  print_pref = gets.chomp
  if print_pref == "all"
    print(students)
  elsif print_pref == "by letter"
    print_by_letter(students)
  elsif print_pref == "less than 12"
    less_than_12(students)
  else
    print_pref(students)
  end
end

# Only print students whos name begins with
# Specific letter
def print_by_letter(students)
    puts "Enter first letter of name"
    letter = gets.chomp

    students_by_letter = []
    students.each do |student|
      if letter == student[:name][0]
        students_by_letter << student
      end
    end
    print(students_by_letter)
end

# Only print students whos name is less
# than 12 characters
def less_than_12(students)
    name_less_than_12 = []
    students.each do |student|
      if student[:name].length < 12
        name_less_than_12 << student
      end
    end
    print(name_less_than_12)
end

# Method to print students
# Loop to print each student in the students
# According to print pref result
def print(students)

  index = 0
  until index == students.length
    puts "#{index + 1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
  end

  # students.each_with_index do |student, index|
  #   puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  # end
end

# Footer method
def print_footer(names)
  # Print total number of students
  puts "Overall we, have #{names.count} great students"
end

# Call methods
students = input_students
print_header
print_pref(students)
print_footer(students)
