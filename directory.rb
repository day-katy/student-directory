@students = []

def input_students
  months = [:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December]
  puts "Please enter the names of the students, and the cohorts they're in, separated by a comma".center(30)
  puts "To finish, just hit return twice".center(30)
  @students = []
  name_cohort = gets.chomp
  while !name_cohort.empty? do
    name, cohort = name_cohort.split(", ")
    if cohort != nil && months.include?(cohort.to_sym.capitalize)
      students << {name: name, cohort: cohort.to_sym.capitalize}
      if students.count == 1
        puts "Now we have 1 student".center(30)
      elsif students.count > 1
        puts "Now we have #{students.count} students".center(30)
    elsif cohort != nil && !months.include?(cohort.to_sym.capitalize)
      puts "Please enter a valid cohort".center(30)
    elsif cohort == nil
      students << {name: name, cohort: :November}
      puts "Now we have #{students.count} students".center(30)
      end
    name_cohort = gets.chomp
  end
end
end

def print_header
  puts "The students of Villains Academy".center(30)
  puts "-------------".center(30)
end

def print_students_list(names)
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

def print_footer(@students)
  if @students.count == 1
    puts "Overall, we have #{students.count} great student".center(30)
  elsif
  puts "Overall, we have #{students.count} great students".center(30)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    # input the students
    @students = input_students
  when "2"
    # show the students
    show_students
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end


interactive_menu
