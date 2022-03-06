# rps_bonus.rb
# This program supplement the rock_paper_scissors.rb file
# Add rock paper scissors lizard Spock

require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

VALID_CHOICES = %w(scissors s paper p rock r lizard l spock sp)
# DATA = [[name],[win],[lose],[ascii file]]
SCISSORS = [%w(scissors s), %w(paper lizard), %w(spock rock), %w(s.txt)]
PAPER = [%w(paper p), %w(rock spock), %w(scissors lizard), %w(p.txt)]
ROCK = [%w(rock r), %w(lizard scissors), %w(spock paper), %w(r.txt)]
LIZARD = [%w(lizard l), %w(spock paper), %w(scissors rock), %w(l.txt)]
SPOCK = [%w(spock sp), %w(scissors rock), %w(lizard paper), %w(sp.txt)]

# methods:
def prompt(key)
  message = MESSAGES[key]
  Kernel.puts("=> #{message}")
end

def choice_data(first)
  if SCISSORS[0].include?(first)
    SCISSORS
  elsif PAPER[0].include?(first)
    PAPER
  elsif ROCK[0].include?(first)
    ROCK
  elsif LIZARD[0].include?(first)
    LIZARD
  else
    SPOCK
  end
end

def display_choice(first_data, second_data)
  prompt('banner2')
  prompt('you')
  puts File.read("ascii/" + first_data[3][0])
  prompt('banner2')
  prompt('computer')
  puts File.read("ascii/" + second_data[3][0])
  prompt('banner2')
end

def win?(first_data, second)
  first_data[1].include?(second)
end

def display_result(first_data, second_data, first, second)
  if win?(first_data, second)
    prompt('win')
  elsif win?(second_data, first)
    prompt('lose')
  else
    prompt('tie')
  end
end

# main program:
prompt('banner2')
prompt('welcome')
prompt('banner1')
prompt('game_rule')
prompt('game_rule1')
prompt('banner1')
prompt('game_rule2')
prompt('banner2')
usr_score = 0
computer_score = 0

loop do
  choice = ''

  loop do
    prompt('choice')
    choice = Kernel.gets().chomp().downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('valid_choice')
    end
  end

  computer_choice = ['rock', 'paper', 'scissors'].sample()

  usr_data = choice_data(choice)
  choice = usr_data[0][0]
  computer_data = choice_data(computer_choice)
  display_choice(usr_data, computer_data)

  display_result(usr_data, computer_data, choice, computer_choice)

  if win?(usr_data, computer_choice)
    usr_score += 1
  elsif win?(computer_data, choice)
    computer_score += 1
  end

  prompt('banner1')
  Kernel.puts("=> Your score is #{usr_score}")
  Kernel.puts("=> The computer's score is #{computer_score}")
  prompt('banner1')

  break if [usr_score, computer_score].max == 3
  prompt('game_rule2')
  prompt('banner2')
  loop do
    prompt('next_round')
    answer = Kernel.gets.chomp.downcase
    break if answer == 'y'
  end
end

if usr_score == 3
  puts File.read('ascii/unicorn.txt')
else
  puts File.read('ascii/whale.txt')
end

prompt('banner1')
prompt('thank_you_bye')
prompt('banner1')
