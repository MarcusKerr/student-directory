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

# Print students
puts "The students of Villains Academy"
puts "-------------"

# Loop to print each student in the students array
students.each do |student|
  puts student
end

# Print total number of students
print "Overall we, have #{students.count} great students"
