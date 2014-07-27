# README #

### What is this repository for? ###

* This repository is for solthiruthi-server Project.

### Build Status ###
[![Build Status](https://travis-ci.org/vraravam/solthiruthi-server.png?branch=master)](https://travis-ci.org/vraravam/solthiruthi-server)


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

Application instructions
========================

## Workflow  - Follow strictly!

### Version control - Git

- [Write good commit messages with proper one line or possible description about commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
- NOTE: *Do NOT use git push -f*

#### Create features

- Use [git flow](https://github.com/nvie/gitflow)
- Create a feature branch lets say ("performer-dashboard"), once the feature branch is done. Issue a pull request for someone to review and suggest changes, **do not merge into develop or master branch directly**

Eg: Install git flow.

``` bash
git flow init
#enter enter all
git flow feature start payments
# after few commits
git flow feature publish payments
# issue pull request in the github page
# do changes when suggested and commit, then comment in the issue page
git flow feature finish payments
# issue pull request instead of merging the develop branch, until then start working on the next feature
git flow feature start performer-dashboard
```
