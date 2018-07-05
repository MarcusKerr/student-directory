# Input studnetgs method
# Getting students
# And creating student array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, leave name empty"

  # Create an empty array
  students = []
  months = [
    :January,
    :February,
    :March,
    :April,
    :May,
    :June,
    :July,
    :August,
    :September,
    :October,
    :November,
    :December
  ]

  # # Get the first name
  # puts "Enter a name"
  # name = gets.chomp
  #
  # # Get the first cohort
  # puts "Enter cohort"
  # cohort = gets.chomp.to_sym

  # While the name is not empty repeat this code
  while true do

    # Get another name from the user
    puts "Enter a name"
    name = gets.chomp
    if name.empty?
      break
    end

    # Get another cohort from user
    puts "Enter cohort"
    cohort = gets.chomp.capitalize.to_sym

    if !(months.include?(cohort))
      cohort = " -".to_sym
    end

    # Add the student hash to the array
    students << {name: name, cohort: cohort, fav_sport: "That sport", fav_food: "That food"}
    puts "Now we have #{students.count} students"

  end
  # Return the array of students
  students
end

# Header method
def print_header
  puts "The students of Villains Academy".center(75)
  puts "-------------".center(75)
end

# Print pref method
# Ask user how they would like to print the directory
def print_pref(students)
  puts "How would you like to print the directory ('by letter'/'less than 12'/'by cohort'/'all')?".center(75)
  print_pref = gets.chomp
  if print_pref == "all"
    print(students)
  elsif print_pref == "by letter"
    print_by_letter(students)
  elsif print_pref == "less than 12"
    less_than_12(students)
  elsif print_pref == "by cohort"
    by_cohort(students)
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

# Print by cohort
def by_cohort(students)
  puts "Enter cohort you would like to view"
  cohort = gets.chomp.capitalize.to_sym
  students_by_cohort = []
  students.map { |student|
    if student[:cohort] == cohort
      students_by_cohort << student
    end
  }
  print(students_by_cohort)
end

# Method to print students
# Loop to print each student in the students
# According to print pref result
def print(students)

  index = 0
  until index == students.length
    puts "#{index + 1}. #{students[index][:name]} (#{students[index][:cohort]} cohort) #{students[index][:fav_food]}".center(75)
    index += 1
  end

  # students.each_with_index do |student, index|
  #   puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  # end
end

# Footer method
def print_footer(names)
  # Print total number of students
  puts "Overall we, have #{names.count} great students".center(75)
end

# Call methods
students = input_students
print_header
print_pref(students)
print_footer(students)
