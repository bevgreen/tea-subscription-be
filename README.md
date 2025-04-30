# Kettle On Tea Subscription BE

## Overview
This is the backend repo for the Kettle On Tea Subscription website. This repo holds code responsible for running the database and where the front end can make API calls to get information on tea, customer subscriptions, and tea subscriptions. 

### Tech Stack
- Ruby
- Rails
- RSpec
- simplecov

## How to Run Locally

### Requirements
 - Ruby `3.2.2`
 - bundler gem: `gem install bundler`

## Set Up Steps
1. Clone the repo to your local machine: `git clone https://github.com/bevgreen/tea-subscription-be.git`
2. Open the directory: `cd tea-subscription-be`
3. Install required gems: `bundler install`
4. Setup the database: `bundle exec rails db:{create,migrate,seed}`

### Running Test Suite
1. To run all tests: `bundle exec rspec`
2. To run model tests: `bundle exec rspec spec/models`
3. To run request tests: `bundle exec rspec spec/requests`

## Database Tables and Relationships
![tea-subscription-be-db-diagram.pdf](https://github.com/user-attachments/files/19985326/tea-subscription-be-db-diagram.pdf)


