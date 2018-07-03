# Put students into an array
students = [
  { name: "Dr. Hannibal Lecter", cohort: :november},
  { name: "Dath Vader", cohort: :november},
  { name: "Nurse Ratched", cohort: :november},
  { name: "Michael Corleone", cohort: :november},
  { name: "Alex DeLarge", cohort: :november},
  { name: "The Wicked Witch of the West", cohort: :november},
  { name: "Terminator", cohort: :november},
  { name: "Freddie Kruger", cohort: :november},
  { name: "The Joker", cohort: :november},
  { name: "Joffrey Baratheon", cohort: :november},
  { name: "Norman Bates", cohort: :november}
]

# Header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Method to print students
def print(students)
  # Loop to print each student in the students array
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# Footer method
def print_footer(names)
  # Print total number of students
  puts "Overall we, have #{names.count} great students"
end

# Call methods
print_header
print(students)
print_footer(students)
