class Name

  attr_reader :title, :first_name, :middle_name, :last_name
  #attr_writer :title, :first_name, :middle_name, :last_name
  # attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def title=(new_title)
    @title = new_title
  end


end

puts 'Enter Your Name Title:'
title = gets.chomp

puts 'Enter Your Name First Name:'
first_name = gets.chomp

puts 'Enter Your Name Middle Name:'
middle_name = gets.chomp

puts 'Enter Your Name Last Name:'
last_name = gets.chomp

name = Name.new(title, first_name, middle_name, last_name)
# puts name.inspect # from memory
puts name.title + " " + name.first_name+ " " + name.middle_name + " " + name.last_name

puts 'Rewrite Your Name Title:'
name.title = gets.chomp
puts "Title: #{name.title} "
puts name.title + " " + name.first_name+ " " + name.middle_name + " " + name.last_name
