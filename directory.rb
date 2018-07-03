# Put students into an array
students = [
  "Dr. Hannibal Lecter",
  "Dath Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddie Kruger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates",
]

# Header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Method to print students
def print(names)
  # Loop to print each student in the students array
  names.each do |name|
    puts name
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
