# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

This is an API backend for my first Javascript frontend project. I was given 
7 days to learn and deploy a website that would pull data from a github api 
and display it, and create a voting system so users would be able to vote on
the api framework they liked the best(Angular, Ember, React, Vue, etc...).

The code freatures a back end built with Ruby on Rails and a front end 
located in '/client' build with node react javascript. There is no css
(didn't have time). All in all it is my belief that the code is a bit rough
definalty in need of polish, some bugs, and a few security flaws, I will
address these in the future as I learn more.

Deleopment timeline:

I was given the porject Thursday 8/22/19, but I started this project on Friday 
8/23/19 that day was dedicated to road mapping the time needed for each section 
of the project. the following weekend was used to brush up on the react framework 
and build a skeleton(routing) for the website. Then on Monday 8/26/19 I had a 
change of heart and scrapted the Rails back end for a node express backend, why, 
because I belived an express backend would be lighter in weight and not bogged 
down with usless middleware, Monday was also adding more features to the web site 
mainly connecting to the github api and displaying the content. Tuesday 8/27/19 
came another change of heart as it became difficult of retrive and store data with 
an express backround, again I changed the backend api back to Rails and added 
features for people to vote on diffrent framworks on the website. Wednesday 
8/28 was used to add email registration and deployment to Heroku which came with 
challenges of its own.

both back end and front end are deployed to Heroku
frontend: https://framework-react.herokuapp.com/
backend:  https://framework-react-api.herokuapp.com/

backend api is provited through
frameworks: https://framework-react-api.herokuapp.com/api/frameworks
voters: https://framework-react-api.herokuapp.com/api/voters

The code especially the front end, is in need of some polishing, why it hasn't
been is due to a lack of time and rushing to complete features. Parts that I can see
are the '/client/src/components/Votes.js' and the '/client/src/components/PulicVotes.js'
are very similar and could be bundled togreather or share functions to reduce 
redundant code. Also it would be better practice to consolidate all api calls into one
file for easy access and navigation. I am also not happy with the 
'/client/src/components/Home.js' file the code can be reduced to use less redundant code.

Some bugs are; when a user votes they are redirected back to the home page, the vote
value is updated in the database but not on screen, also the votes have a habit of
rearranging themselves after each vote, the website requests an Email to register but
will accept any string as long as it hasent been used before and users can access the
voting page without giving an email by entering https://framework-react.herokuapp.com/Vote.

most of these bugs are minor, they can be fixed with a bit more reading and bug fixing, the
email validation and voting witout access would require a bit more skill and work.

and some security flaws are that the api is compleatly open, and user can preform any CURD
operation on them. This is a major security flaw but with an easy fix. I installed the 
rack-cors gem late in the project to attempt to fix a problem when I deployed to Heroku, the
frontend Javascript was not correctly getting the data from the api. I left the rack-cors as
the default which accepts any connection, fixing this security flaw woudl require some reading
deeper understanding on how to get the most out rack-cors. I could also adjust the rails router
so it would not accept any unused CRUD operation.

This has been a great learning experence and has only wet my appitite to learn more about Javascript
web development. The hardest part of this project was not learning a new coding language but learning
and understanding the frameworks and packages that are built for the languages. 
