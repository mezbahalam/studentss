class Name

  # attr_reader :title, :first_name, :middle_name, :last_name
  # attr_writer :title, :first_name, :middle_name, :last_name
  attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  #without use of attr_accessor you need both of this:

    #without use of attr_reader method you need this:
      # def title
      #   @title
      # end

    #without use of attr_writer method you need this:
      # def title=(new_title)
      #   @title = new_title
      # end


  def full_name # creating a method
    @first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_with_title
    @title + " " + full_name #calling method into a method and its the use of implicit return
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
puts name.full_name_with_title #calling method on instance

puts 'Rewrite Your Name Title:'
name.title = gets.chomp
puts 'Rewrite Your Name First Name:'
name.first_name = gets.chomp
puts 'Rewrite Your Name Middle Name:'
name.middle_name = gets.chomp
puts 'Rewrite Your Name Last Name:'
name.last_name = gets.chomp


puts name.full_name_with_title
