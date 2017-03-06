# RailsClasses Sample

So, in order to run this project:

- Ensure gems are installed by running `bundle install` in the root directory;
- Ensure you have Ruby 2.3+ installed;
- In order for the **tests** to work, run `rails db:migrate`; and
- To run tests, use: `rails test`.

The tests for FriendsControllerTest were commented out due to the lack of a database table for them.

Pets were generated via: `rails generate model pets nickname:string species:string`

Friends controller was generated via: `rails generate controller friends ross monica rachel phoebe chandler joey`

Friends model was generated via: `rails generate model friend first_name:string last_name:string career:string 
famous_sentence:string`

Friends image_url field was added via: `rails generate migration add_image_url_to_friends image_url:string`

Database was seeded via: `rails db:seed`