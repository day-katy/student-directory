def input_students
  months = [:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December]
  puts "Please enter the names of the students, and the cohorts they're in, separated by a comma".center(30)
  puts "To finish, just hit return twice".center(30)
  students = []
  name_cohort = gets.chomp
  while !name_cohort.empty? do
    name, cohort = name_cohort.split(", ")
    if cohort != nil && months.include?(cohort.to_sym.capitalize)
      students << {name: name, cohort: cohort.to_sym.capitalize}
      puts "Now we have #{students.count} students".center(30)
    elsif cohort != nil && !months.include?(cohort.to_sym.capitalize)
      puts "Please enter a valid cohort".center(30)
    elsif cohort == nil
      students << {name: name, cohort: :November}
      puts "Now we have #{students.count} students".center(30)
    end
    name_cohort = gets.chomp
  end
  students
end
# def input_students
#   months = [:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December]
#   puts "Please enter the names of the students, and the cohorts they're in, separated by a comma".center(30)
#   puts "To finish, just hit return twice".center(30)
#   students = []
#   name_cohort = gets.chomp
#   while !name_cohort.empty? do
#     name, cohort = name_cohort.split(", ")
#     if cohort != nil && months.include?(cohort.to_sym.capitalize)
#       students << {name: name, cohort: cohort.to_sym.capitalize}
#       # if students.count == 1
#       # puts "Now we have #{students.count} student".center(30)
#       # elsif students.count > 1
#       puts "Now we have #{students.count} students".center(30)
#       # end
#     elsif cohort == !nil && !months.include?(cohort.to_sym.capitalize)
#       puts "Please enter a valid cohort".center(30)
#     elsif cohort == nil
#       students << {name: name, cohort: :November}
#       puts "Now we have #{students.count} students".center(30)
#     end
#     name_cohort = gets.chomp
#   end
#   # return the array of input_students
#   students
# end

def print_header
  puts "The students of Villains Academy".center(30)
  puts "-------------".center(30)
end

def print(names)
  puts "Which cohort would you like to see?"
  answer = gets.chomp.to_sym.capitalize
  sort_by_cohort = {}
  names.each do |name|
    cohort = name[:cohort]
    name = name[:name]
    if sort_by_cohort[cohort] == nil
      sort_by_cohort[cohort] = [name]
    else
      sort_by_cohort[cohort].push(name)
    end
  end
  puts sort_by_cohort[answer]
end

def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student".center(30)
  elsif
  puts "Overall, we have #{students.count} great students".center(30)
  end
end

students = input_students
print_header
print(students)
print_footer(students)





# # let's put all students into an array
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Coreleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]
# # and then print them
