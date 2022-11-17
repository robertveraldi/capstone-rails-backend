# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ... -->

# Gym Routine (Rails)

This rails project creates the database and lays the foundation for my app that allows the end user to browse and learn about different exercises. After creating an account, the user can then build a routine including whichever exercises they'd like. It's a great tool to take the uncertainity out of going to the gym, particularly for those who are just starting their fitness journey. I struggled with starting to work out because I was never sure of a plan for once I was actually in the gym. I've built this with my experience in mind.

This database / API is built using RoR version 7.0.4. It utilizes postgresql, bcrpyt authorization, json web tokens, the jb gem (for generating views), and git. Models with specified relationships have been built for users, exercises, and routines. Currently, the exercises data is static.

Read about the front end [here](https://github.com/robertveraldi/capstone-react-frontend).

<!-- Optional: Add screenshots or gifs of your application -->

## Installation

Clone this repository down to your computer. It will create a directory on its own, but if you'd prefer it to be within a certain directory, make sure to navigate there first. Then, cd into the directory and run -

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails s
```

This command initilizes the rails server. Unless you are running another server on port :3000, this server will run on http://localhost:3000. To be sure, see the last line output after running this command - 'Listening on...'.

You can test web requests as documented in the `requests.http` file. However, you must be logged in. Run the last request on the page, 'Login', using the already input content. Copy and paste the jwt token into the global jwt variable at the top of the file. Then, test any request. Feel free to change any of the content within POST or PATCH requests.

## Roadmap

Going forward, I'd like to implement an exercise API instead of static data. I'd also like to have categories for each exercise such as chest, back, or legs (this will be pulled from the API). Additionally, I'd like for a user to be able to create routines for each specific category.
