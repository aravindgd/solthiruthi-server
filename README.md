# README #

### What is this repository for? ###

* This repository is for solthiruthi-server Project.

### Prerequisites for Project ###

* To develop/run this app, you will need the following system-level pre-requisites already installed:
    * Ruby version 2+
    * sqlite3


### How do I get set up? ###

* Clone the repo on your local.
* Copy the config/database.yml.sample to config/database.yml
* Edit the config/database.yml file to have password of local sqlite3 database.
* Go to the working dir and run following commands
```
#!bash
bundle
rake db:create db:migrate db:seed
rake populate_dictionary_with_fake_data:all
rails s
```
* Your machine is set up
* Your site is available over [here](localhost:3000)


### How do I contribute? ###

* The current codebase is missing rspec specs - you can start by adding these.
* Need to setup deployment scripts using something like capistrano (https://github.com/capistrano/capistrano)
* Asset processing (minification, etc) can be setup.
* Run the YSlow/PageSpeed developer tools and fix any issues that they might report.
