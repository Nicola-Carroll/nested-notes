# Nested Notes

## Overview

This is a web app where users can make and store notes, which can have an unlimited number of child notes. The motivation for creating this came from my brother saying he wished he had something free to use which was similar to Confluence when creating a Dungeons & Dragons universe, that allows you to store hierarchical notes. I hadn't yet had to consider how to store an unlimited number of nested relations inside a database, so I thought this would be interesting to attempt.

As this is my first project with no added time pressure, my main aim in this project is to consolidate coding best practices, such as remaining disciplined with TDD.

## Technologies

- Framework: Ruby on Rails with React
- Database tools/ORM: ActiveRecord, ActiveStorage
- Testing: RSpec and Capybara
- Linting: Rubocop
- Deployment: Heroku
- Continuous integration: CircleCI
- Business tools: Miro, Trello
- Other: jQuery

## Initial domain model

Initially, I wanted to build this project in Ruby on Rails because of how easy it is to get a simple app up and running quickly. Each project I've worked on so far has been in a new stack, so I wanted to use a framework I was familiar with to just focus on my best practices as opposed to learning something new.

Since relational databases are better suited for non-heirarachical data, I was aware a stack which uses a NoSQL DB might be more appropriate for Nested Notes than RoR. I then discovered the nested set model for storing heirarchical, and a [gem built for RoR](https://github.com/collectiveidea/awesome_nested_set) to make handling nested sets easy. Since there's no real need for scalability on this app this is the route I'm planning to start off with.

The diagrams below show the nested set model demostrated on a collection of 6 notes about holidaying in Europe, with their corresponding node indexes.

![image](https://user-images.githubusercontent.com/83607124/139241901-9397c7ed-bd8e-46a9-827f-f0cd45af1860.png)

![image](https://user-images.githubusercontent.com/83607124/139241972-d74d9dc0-9c1a-4298-bab7-e2a93d0a919a.png)

![image](https://user-images.githubusercontent.com/83607124/139245647-f9d2cff6-3023-47fd-91d7-1cdb03caa169.png)


## Running the program locally

Ensure you have Node.js installed on your machine as the JavaScript runtime. 


```
brew install node
```

Then, after cloning this repository run:

```
bundle install
bin/rails db:migrate

rspec # Run the tests to ensure it works
bin/rails server # Start the server at localhost:3000
```
