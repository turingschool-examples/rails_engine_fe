# Rails Engine FE

This is the Front End app related to the [Rails Engine API](github.com/aspeth/rails-engine).

Rather than using a database, this app consumes the Rails Engine API to gather data before displaying it to the user.

I learned some simple Bootstrap CSS and was able to implement some more advanced styling, including a navbar.


## Getting Started
### *_Both the FE and BE rails servers must be running in order to the FE app to work_*
* Clone the project down
* Run `rails s` in your terminal from the project directory for the FE
* Clone down the [Rails Engine API](github.com/aspeth/rails-engine).
* Run `rails s` in your terminal from the project directory for the BE
* Visit `localhost:5000/merchants` in your browser

# Below is the user story provided as a guideline for the frontend app

## The Challenge

### User Story - Merchants
As a visitor, <br>
When I visit '/merchants' <br>
I should see a list of merchants by name <br>
and when I click the merchant's name <br>
I should be on page '/merchants/:id' <br>
And I should see a list of items that merchant sells.

<br>
<br>

![Wireframe for /merchants index](/docs/rails_engine_challenge_merchants.png)

<br>
<br>

![Wireframe for /merchants show](/docs/rails_engine_challenge_merchants_show.png)
