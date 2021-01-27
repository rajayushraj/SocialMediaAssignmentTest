# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Enviornment Setup

Ruby version used is 3.0.0
rails version Rails 6.1.1
postgresql version 13.1

to setup db run
  rails db:create
  rails db:migrate

# Creating and Testing

You need to go to rails console and then need to create some sample User (User.create(fname: "something",email: "Something",lname: "Something)
You nedd to create some Friendship among the created user (Friendship.create(sender_id: some user id,receiver_id: someother user id,status: true)
To know a user all friend:
  user.friends->It will return an active association to all the user who you send friendreq and now in mutual friendship
  user.friendsrec->It will return an active association to all the user who sended you friendreq and now in mutual friendship
 
 Similarly one can create post and comment and like and can se association with user model and other respective model
