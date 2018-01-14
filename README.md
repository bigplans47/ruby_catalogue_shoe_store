A project that uses ActiveRecord to make a Web Application for adding stores and a Shoe Inventory in General and to specific Stores and also tests code with RSpec.

An application where employees can view, add, update and delete stores with shoes that they set up then assign to stores. Date of README: 10/1/2017 Updated README: 1/13/2017

![Ticketing](/img/rspec.png?raw=true "rspec")
------------------------------------------
<!-- ![Ticketing](/img/home-page.png?raw=true "home-page") -->
-----------------------------------------
[Ticketing](/img/store-specific-page.png?raw=true "store-specific-page")

Description

There are the following features in the Project: Stores and Shoes are created with ActiveRecord, Stores have CRUD functionality with manually created Stores and Shoes. The Stores and Shoes have custom callbacks such as capitalizing first letters and validations to ensure blanks and duplicates are not submitted as well as words over 100 characters. There are custom classes, custom instance methods(plain) and custom instance variables(@), custom class methods(use word self). This allows the user to look at stores in a bullet list and assign shoe inventory to them, but clicking the link.

To Test Locally

git clone https://github.com/bigplans47/ruby_catalogue_shoe_store.git to your desktop
cd volunteer_tracker
bundle to install all required gems
rspec and the tests will be ran
ruby app.rb will start a localhost server
Visit localhost:4567
For a Live Version


Specifications

Write a program to track shoe brands and the stores they are in. Here are the user stories:

As a user, I want to be able to add, update, delete and list shoe stores.
As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
As a user, I want to be able to associate the same brand of shoes with multiple stores.
As a user, I want to be able to see all of the brands a store sells on the individual store page.
As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone.
As a user, I want store and brand names to have a maximum of one hundred characters.

Known Bugs

Issues with non-integer numbers entered as a price with how user views that.

Technologies Used

Bootstrap,HTML,Ruby(ActiveRecord),Sinatra,Postgres

Support and contact details

Dan Kiss email me as needed at flowfast47@gmail.com

License

This website is licensed under the MIT License

Copyright (c) 2017 Dan Kiss
