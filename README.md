# Brain Spark
This full-stack web application attempts to energize your brain with jokes, trivia, math problems, and random facts for both dates and numbers. A user can earn "Sparks" which accumulate forever on their account, and can then look at the local leaderboard

## Motivation
I created this repo as a project for my third "Module" in the Immersive Software Engineering Bootcamp at Flatiron School Denver.

## Built Using
Back end: Rails / Active Record

Front end: JavaScript, CSS

## Database References
Open Trivia DB - https://opentdb.com/api_config.php - has many categories and difficulties of trivia questions.
Numbers API - http://numbersapi.com/ - has random facts about dates, numbers, trivia, years.
Official Joke API - https://official-joke-api.appspot.com/jokes/ten - gives ten random jokes at a time.

## How to get started / getting 'back_end' running
Fork and clone this repository, open in a code editor.

From the root directory of this project, in the terminal, use command:
```
bundle install
```
While still in the 'back_end' directory, to create local database tables use rails command:
```
rails db:migrate
```

Then, venture to the seeds file, you'll see everything is commented out, there are some comments in there to guide you. This is because some steps require you to change variables, for example, to seed the ```date_facts``` you need to manually set the month, and the cap for the integer that gets incremented for every day of the month. It would be wise to uncomment the API 'GET' request sections one at a time, for each, run:
```
rails db:seed
```

Finally, to start back end server, run:
```
rails s
```
You should now see be able to access your endpoints using these URL's in your Chrome browser:<br/>

'http:localhost:3000/users'(won't be any in here yet),<br/>
'http:localhost:3000/date_facts'(everything from here down needs to have been seeded),<br/> 
'http:localhost:3000/number_facts',<br/> 
'http:localhost:3000/jokes',<br/> 
'http:localhost:3000/trivia',<br/>
'http:localhost:3000/math_questions'

## Starting the front end (opening the application)
You'll need this-- https://github.com/tfunk2/Brain-Spark-Front-End --fork and clone.
Open a separate terminal.<br/>
From the root directory of the front end repo:
```
lite-server
```
Make sure your back end server is still running on http://localhost:3000
Your browser should automatically open up to 'http://localhost:3001/', and show you the interface.

## Walkthrough

### Login Page
This page introduces you to the fun with a welcome joke, and prompts you to create a username, or login if you are an existing user. This project does not use full Authentication and Authorization, but the login forms WILL check to make sure you create a username and password 6-14 characters long, and will check to make sure you typed in your username and password correctly to log in.</br>
I have named 'password' ```password_digest``` so that it would be partially set up to eventually go back and use JWT based Auth with 'bcrypt' gem and tokens being provided to users. For now it serves as a light interface for the app with no security (theres no personal information to be hacked on my app for now anyways).

### Home Page
Here you are welcomed by all your User information at the top, followed by a link/button to the leaderboard. Beneath that, you will see a random fact about the current date, and a corresponding fact about the number associated with the current date (ex. 3/17/2020; todays number-->17). Below that you will find a trivia section, if you get a question correct, the score will post to your lifetime 'Spark' score, and persists to the back end/leaderboard as well.

### Leaderboard
(Here from a clicking a leaderboard link in the user section of the main page)<br/>
From this page you can view the top 7 lifetime 'Spark' score earners (on your local machine anyways, since this isn't deployed yet) There is a button labeled 'Home" that takes you back to your personal homepage without logging back in in the left side of the header.

## Final comments
Thanks for opening and tinkering with one of my first full-stack web applications made during my time in the Flatiron School program, I hope it was enjoyable, and not too big of a struggle setting up the database! I would love feedback that is constructive and helpful from all who read/tinkered thus far!

## Youtube Demo Link
Youtube link to a screen recording of the app! - https://youtu.be/mbnTiPIdJkY

## Creators / Collaborators: 
Tyler Funk:
GitHub--> https://github.com/tfunk2
LinkedIn--> https://www.linkedin.com/in/tylerfunk/