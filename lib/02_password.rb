require 'io/console'

class User
  attr_accessor :password, :name, :surname, :username, :email, :phone_number

  def initialize(password, name, surname, username, email, phone_number)
    @password = password
    @name = name
    @surname = surname
    @username = username
    @email = email
    @phone_number = phone_number
  end
end

def signup
  email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  phone_regex = /^(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2})  {4}$/
  
  puts '------Sign up------'

  puts 'Please enter your firstname:'
  name = gets.chomp

  puts 'Please enter your lastname:'
  surname = gets.chomp

  puts 'Please enter your email address:'
  email = gets.chomp

    until email_regex.match?(email)
    puts "Please enter a valid email address:"
    email = gets.chomp
  end

  puts 'Please enter your phone number:'
  phone_number = gets.chomp

  until phone_regex.match?(phone)
    puts 'Please enter a valid phone number:'
    phone_number = gets.chomp
  end

  puts 'Please enter your username:'
  username = gets.chomp

  puts 'Please enter your password:'
  password = STDIN.noecho(&:gets).chomp

  User.new(password, name, surname, username, email, phone_number)
end

def login(user)
  puts '------Login------'

  puts 'Please enter your username:'
  username = gets.chomp

  puts 'Please enter your password:'
  password = gets.chomp

  until user.username == username && user.password == password
    puts 'Incorrect username or password. Please try again.'
    puts 'Please enter your username:'
    username = gets.chomp

    puts 'Please enter your password:'
    password = gets.chomp
  end
end

def welcome(user)
  puts '------Home------'
  puts "Welcome, #{user.name} #{user.surname}!"
  puts "Your username is #{user.username}."
  puts "Your password is #{user.password}."
  puts "Your email address is #{user.email}."
  puts "Your phone number is #{user.phone_number}."
end

user = signup
login(user)
welcome(user)
