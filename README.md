<p align="center">
  <img src="https://blog.dominwrites.com/wp-content/uploads/2022/07/cropped-cropped-cropped-D-1.png" />
</p>
<center><h1>Info</h1></center>
 This project was created to give users access to several different API endpoints relating to Merchants, Items, and their show pages.

## About the Project
This Front-end application is a basic setup showing the capabilities of SOA so the functionality is currently limited to merchant index page, item index page, and their show pages.

This application also has a backend API it is consuming as a service. That is located [here](https://github.com/Dominicod/rails-engine-lite/)

## Built With
![RoR](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-316192?style=for-the-badge&logo=bootstrap&logoColor=white)

## Gems
![rspec](https://img.shields.io/gem/v/rspec-rails?label=rspec&style=flat-square)
![shoulda](https://img.shields.io/gem/v/shoulda-matchers?label=shoulda-matchers&style=flat-square)
![simplecov](https://img.shields.io/gem/v/simplecov?label=simplecov&style=flat-square)
![spring](https://img.shields.io/gem/v/spring?color=blue&label=spring)
![pry](https://img.shields.io/gem/v/pry?color=blue&label=pry)
![webmock](https://img.shields.io/gem/v/webmock?color=blue&label=webmock)
![vcr](https://img.shields.io/gem/v/vcr?color=blue&label=vcr)
![launchy](https://img.shields.io/gem/v/launchy?color=blue&label=launchy)

## Set Up
- Clone this repo
- Change puma config port from 3000, to 5000.
- `bundle install`
- `rails s`

Visit the [back-end application](https://github.com/Dominicod/rails-engine-lite/) to begin back-end setup.

## Database Creation
- `rails db:{create}`

## Deployment
- `rails s`

## Testing Instructions

- Clone this repo
- in terminal (apple or integrated)
    * bundle install
    * bundle exec rspec

## End Points

### Merchants Index

`http://localhost:5000/merchants`

<img src="app/assets/images/merchant_index.png">

### Merchant Show

`http://localhost:5000/merchants/1`

(This end point shows all of the Merchants Items)

<img src="app/assets/images/merchant_items.png">

### Items Index

`http://localhost:5000/items`

<img src="app/assets/images/item_index.png">

### Item Show

`http://localhost:5000/items/4`

<img src="app/assets/images/item_show.png">

## Contributions
<a href="https://github.com/Dominicod/rails-engine-lite/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Dominicod/rails-engine-lite" />
</a>
<p>🔥 Github: <a href="https://github.com/Dominicod">https://github.com/Dominicod</a> LinkedIn: <a href="https://www.linkedin.com/in/dominic-odonnell/">https://www.linkedin.com/in/dominic-odonnell/</a>  </p>
