# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

# Trivium.destroy_all
# NumberFact.destroy_all
# DateFact.destroy_all
# Joke.destroy_all
# MathQuestion.destroy_all

# # To seed this database, you will need to do each API request one at a time, leaving the others commented out,
# # this is because most of these API calls will require you to change things to get all the seeds necessary.


# # Go to the Open Trivia DB website to generate new URLs with different categories, difficulties, etc.
# # You will want to choose 50 questions, since it is the max. 'Rails db:seed' each category 3 times to get 150.
# # Categories needed are general knowledge, geography, history, science & nature, science & computers 

# response = RestClient.get(
#        "https://opentdb.com/api.php?amount=50&category=23&type=multiple")

#    result = JSON.parse(response)
#     result['results'].each do |trivium|
        
#         Trivium.create(
#             category: trivium["category"],
#             difficulty: trivium["difficulty"],
#             question: trivium["question"],
#             correct_answer: trivium["correct_answer"],
#             incorrect_answer_1: trivium["incorrect_answers"][0],
#             incorrect_answer_2: trivium["incorrect_answers"][1],
#             incorrect_answer_3: trivium["incorrect_answers"][2]
#         )
#     end


# # Run rails db:seed with the below uncommented 5 times to get 155 total NumberFact instances,
# # there is 31 so there is a fact associated with every possible day of the month, ex. If the date 
# # was 10/12 , it would give a random fact about the number 12.  

# i = 0
# response = RestClient.get("http://numbersapi.com/1..31")
# result = JSON.parse(response).to_a

# while (i < 31) do
    
#     NumberFact.create(
#         number: result[i][0],
#         fact: result[i][1]
#     )
#     i += 1
# end


# # Had to do this one month at a time to change the number of days

january = 1
day1 = 1
while (day1 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{january}/#{day1}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{january}/#{day1}",
        fact: result["text"]
    )
    day1 += 1
end
 
february = 2
day2 = 1
while (day2 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{february}/#{day2}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{february}/#{day2}",
        fact: result["text"]
    )
    day2 += 1
end
 
march = 3
day3 = 1
while (day3 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{march}/#{day3}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{march}/#{day3}",
        fact: result["text"]
    )
    day3 += 1
end
 
april = 4
day4 = 1
while (day4 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{april}/#{day4}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{april}/#{day4}",
        fact: result["text"]
    )
    day4 += 1
end
 
may = 5
day5 = 1
while (day5 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{may}/#{day5}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{may}/#{day5}",
        fact: result["text"]
    )
    day5 += 1
end
 
june = 6
day6 = 1
while (day6 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{june}/#{day6}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{june}/#{day6}",
        fact: result["text"]
    )
    day6 += 1
end
 
july = 7
day7 = 1
while (day7 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{july}/#{day7}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{july}/#{day7}",
        fact: result["text"]
    )
    day7 += 1
end
 
august = 8
day8 = 1
while (day8 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{august}/#{day8}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{august}/#{day8}",
        fact: result["text"]
    )
    day8 += 1
end
 
september = 9
day9 = 1
while (day9 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{september}/#{day9}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{september}/#{day9}",
        fact: result["text"]
    )
    day9 += 1
end
 
october = 10
day10 = 1
while (day10 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{october}/#{day10}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{october}/#{day10}",
        fact: result["text"]
    )
    day10 += 1
end
 
november = 11
day11 = 1
while (day11 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{november}/#{day11}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{november}/#{day11}",
        fact: result["text"]
    )
    day11 += 1
end
 
december = 12
day12 = 1
while (day12 <= 4) do

    response = RestClient.get("http://numbersapi.com/#{december}/#{day12}/date?json")
    result = JSON.parse(response)

    DateFact.create(
        date_of_fact: "#{december}/#{day12}",
        fact: result["text"]
    )
    day12 += 1
end
 
# # Ten jokes is the most you can get at once, 

# response = RestClient.get("https://official-joke-api.appspot.com/jokes/ten")
# result = JSON.parse(response)

# result.each do |joke|
#     Joke.create(
#         setup: joke["setup"],
#         punchline: joke["punchline"]
#     )
# end


# # Change the random_number_generators to whatever range you want the numbers to be, couldn't figure out how to 
# # generate division problems without running into  (add '.sort.reverse' to end of 'rng_array' for subtraction)

# 100.times do
#     random_number_generator1 = rand(10..100) 
#     random_number_generator2 = rand(20..50)

#     rng_array = [random_number_generator1, random_number_generator2]

# # Change the symbols in 'question', and 'correct_answer' each time you want to do a different type of math problem
# # Change the 'difficulty' based on how big you are setting your range

#     MathQuestion.create(
#         question: "#{rng_array[0]} x #{rng_array[1]}",
#         correct_answer: (rng_array[0] * rng_array[1]),
#         difficulty: "Hard"
#     )
# end

# # Here are the hardcoded division problems, 2 times for each question, 25 questions for each difficulty, 150 total.

# 2.times do 
#     MathQuestion.create(
#             question: "8 ÷ 2",
#             correct_answer: (8 / 2),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "24 ÷ 4",
#             correct_answer: (24 / 4),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "26 ÷ 13",
#             correct_answer: (26 / 13),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "56 ÷ 8",
#             correct_answer: (56 / 8),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "56 ÷ 7",
#             correct_answer: (56 / 8),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "12 ÷ 4",
#             correct_answer: (12 / 4),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "32 ÷ 8",
#             correct_answer: (32 / 8),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "22 ÷ 11",
#             correct_answer: (22 / 11),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "10 ÷ 2",
#             correct_answer: (10 / 2),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "20 ÷ 4",
#             correct_answer: (20 / 4),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "20 ÷ 5",
#             correct_answer: (20 / 5),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "45 ÷ 3",
#             correct_answer: (45 / 3),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "24 ÷ 6",
#             correct_answer: (24 / 6),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "12 ÷ 3",
#             correct_answer: (12 / 3),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "14 ÷ 7",
#             correct_answer: (14 / 7),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "14 ÷ 2",
#             correct_answer: (14 / 2),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "16 ÷ 8",
#             correct_answer: (16 / 8),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "16 ÷ 4",
#             correct_answer: (16 / 4),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "16 ÷ 2",
#             correct_answer: (16 / 2),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "18 ÷ 9",
#             correct_answer: (18 / 9),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "18 ÷ 2",
#             correct_answer: (18 / 2),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "100 ÷ 25",
#             correct_answer: (100 / 25),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "100 ÷ 10",
#             correct_answer: (100 / 10),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "15 ÷ 3",
#             correct_answer: (15 / 3),
#             difficulty: "Easy"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "15 ÷ 5",
#             correct_answer: (15 / 5),
#             difficulty: "Easy"
#         )
# end

# #Medium Questions Below

# 2.times do 
#     MathQuestion.create(
#             question: "72 ÷ 6",
#             correct_answer: (72 / 6),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "84 ÷ 4",
#             correct_answer: (84 / 4),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "120 ÷ 12",
#             correct_answer: (120 / 12),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "75 ÷ 15",
#             correct_answer: (75 / 15),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "105 ÷ 35",
#             correct_answer: (105 / 35),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "51 ÷ 17",
#             correct_answer: (51 / 17),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "54 ÷ 18",
#             correct_answer: (54 / 18),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "56 ÷ 14",
#             correct_answer: (56 / 14),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "68 ÷ 17",
#             correct_answer: (68 / 17),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "72 ÷ 18",
#             correct_answer: (72 / 18),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "95 ÷ 5",
#             correct_answer: (95 / 5),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "75 ÷ 5",
#             correct_answer: (75 / 5),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "86 ÷ 2",
#             correct_answer: (86 / 2),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "102 ÷ 17",
#             correct_answer: (102 / 17),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "76 ÷ 19",
#             correct_answer: (76 / 19),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "57 ÷ 19",
#             correct_answer: (57 / 19),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "57 ÷ 3",
#             correct_answer: (57 / 3),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "96 ÷ 8",
#             correct_answer: (96 / 8),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "96 ÷ 16",
#             correct_answer: (96 / 16),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "85 ÷ 17",
#             correct_answer: (85 / 17),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "102 ÷ 17",
#             correct_answer: (102 / 17),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "153 ÷ 3",
#             correct_answer: (153 / 3),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "108 ÷ 9",
#             correct_answer: (108 / 9),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "121 ÷ 11",
#             correct_answer: (121 / 11),
#             difficulty: "Medium"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "144 ÷ 12",
#             correct_answer: (144 / 12),
#             difficulty: "Medium"
#         )
# end

# # Hard division below

# 2.times do 
#     MathQuestion.create(
#             question: "2500 ÷ 50",
#             correct_answer: (2500 / 50),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "510 ÷ 3",
#             correct_answer: (510 / 3),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "2600 ÷ 130",
#             correct_answer: (2600 / 130),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "755 ÷ 5",
#             correct_answer: (755 / 5),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "5400 ÷ 180",
#             correct_answer: (5400 / 180),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1080 ÷ 360",
#             correct_answer: (1080 / 360),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1440 ÷ 360",
#             correct_answer: (1440 / 360),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "17010 ÷ 10",
#             correct_answer: (17010 / 10),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "340 ÷ 17",
#             correct_answer: (340 / 17),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "40000 ÷ 20",
#             correct_answer: (40000 / 20),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "6480 ÷ 80",
#             correct_answer: (6480 / 80),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "4545 ÷ 15",
#             correct_answer: (4545 / 15),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "594 ÷ 6",
#             correct_answer: (594 / 6),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "595 ÷ 5",
#             correct_answer: (595 / 5),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "3216 ÷ 8",
#             correct_answer: (3216 / 8),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "567 ÷ 7",
#             correct_answer: (567 / 7),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "9600 ÷ 80",
#             correct_answer: (9600 / 80),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1604 ÷ 4",
#             correct_answer: (1604 / 4),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "7272 ÷ 36",
#             correct_answer: (7272 / 36),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1890 ÷ 9",
#             correct_answer: (1890 / 9),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1876 ÷ 2",
#             correct_answer: (1876 / 2),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "100000 ÷ 2500",
#             correct_answer: (100000 / 2500),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1000000 ÷ 10",
#             correct_answer: (1000000 / 10),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1551 ÷ 3",
#             correct_answer: (1551 / 3),
#             difficulty: "Hard"
#         )
# end

# 2.times do 
#     MathQuestion.create(
#             question: "1220 ÷ 4",
#             correct_answer: (1220 / 4),
#             difficulty: "Hard"
#         )
# end



