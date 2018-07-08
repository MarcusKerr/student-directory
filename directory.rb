# Array of students accessible to all methods
@students = []

# Array of month symbols
@months = [
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

# Print menu and ask students what to do
def print_menu
  puts "1. Input students"
  puts "2. Show the students"
  puts "9. Exit"
end

# Print students
def show_students
  print_header
  print_pref
  print_footer
end

# Interactive menu
# Lets user choose what path they want to take through the program
def interactive_menu

  # Continue to ask users what to do
  loop do
    print_menu

    # Read input and save it
    selection = gets.chomp

    # Do what the user asked
    case selection
      when "1"
        input_students
      when "2"
        show_students
      when "9"
        exit
      else 
        puts "Invalid conmmand"
    end
  end
end

# Input students method
# Getting student
# Add them to student array
def input_students
  puts "Please enter the names of the students"

  # While the name is not empty repeat this code
  loop do
    
    # Message which only shows if name array is not empty 
    if !(@students.empty?)
      puts "To finish, leave name empty"
    end 

    # Get another name from the user
    puts "Enter a name"
    name = gets.delete "\n"

    # If the name is empty
    # And if the students array is empty 
    # Do not exit, call method again
    if name.empty?
      if @students.empty?
        input_students
      else
        break
      end
      break
    end

    # Get another cohort from user
    puts "Enter cohort"
    cohort = gets.chop.capitalize.to_sym

    if !(@months.include?(cohort))
      cohort = " -".to_sym
    end

    # Add the student hash to the array
    @students << {name: name, cohort: cohort, fav_sport: "That sport", fav_food: "That food"}
    puts "Now we have #{@students.count} students"
  end
end

# Header method
def print_header
  puts "The students of Villains Academy".center(75)
  puts "-------------".center(75)
end

# Print preference method
# Ask user how they would like to print the directory
def print_pref
  puts "How would you like to print the directory ('by letter'/'less than 12'/'by cohort'/'all')?".center(75)
  print_pref = gets.delete "\n"
  if print_pref == "all"
    print_students(@students)
  elsif print_pref == "by letter"
    print_by_letter
  elsif print_pref == "less than 12"
    less_than_12
  elsif print_pref == "by cohort"
    by_cohort
  else
    print_pref
  end
end

# Only print students who's name begins with
# Specific letter
def print_by_letter
    puts "Enter first letter of name"
    letter = gets.delete "\n"
    students_by_letter = []
    @students.each do |student|
      if letter == student[:name][0].upcase || letter == student[:name][0].downcase
        students_by_letter << student
      end
    end
    print_students(students_by_letter)
end

# Only print students whos name is less
# Than 12 characters
def less_than_12
    name_less_than_12 = []
    @students.each do |student|
      if student[:name].length < 12
        name_less_than_12 << student
      end
    end
    print_students(name_less_than_12)
end

# Print by cohort
def by_cohort
  puts "Enter cohort you would like to view"
  cohort = gets.chop.capitalize.to_sym
  students_by_cohort = []
  @students.map { |student|
    if student[:cohort] == cohort
      students_by_cohort << student
    end
  }
  print_students(students_by_cohort)
end

# Method to print students
# Loop to print each student in the students
def print_students(students)
  index = 0
  until index == students.length
    puts "#{index + 1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)".center(75)
    index += 1
  end
end

# Footer method
def print_footer

  # Plural 
  plu_or_sing = "students"

  # Only one student
  if @students.count == 1
    plu_or_sing = "student"
  end

  # Print total number of students
  puts "Overall we, have #{@students.count} great #{plu_or_sing}".center(75)
end



# Call interactive menu method
interactive_menu

