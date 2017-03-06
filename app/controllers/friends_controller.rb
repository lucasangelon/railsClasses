class FriendsController < ApplicationController

  # before_action will ensure a certain method runs before executing given actions.
  before_action :set_friend, only: [:show]



  def ross
    # With the Friends model migration, we get some new methods and can build the object similarly to a hash.
    @friend = Friend.new(first_name: 'Ross',
                         last_name: 'Geller',
                         career: 'Archaeologist',
                         famous_sentence: 'We were on a break!')

    # Have a look at the console for the following.
    friend2 = Friend.new
    puts friend2.valid?
    puts friend2.errors.as_json

    # Displays our custom validation. Check out friend.rb for this.
    puts friend2.errors[:first_name]
  end



  # By not initializing the object, the app _would_ crash on this page if we did not have an if in the view or
  # handled a possible exception here.
  # Luckily we do so it will not crash upon an empty model.
  def monica
  end



  # Now that we have a migration linked to a model, we have a database table for it.
  # Let's create an action that follows the RESTful way of doing things.
  # Have a look at the routes.rb file to check how we will define this specific route.
  def show
    # Before_action will run before this method. Check lines 3 and 4 for this.
    # This means that unless we need to modify something, our model is ready for the view!

    # Make sure there is some data in your database before running this otherwise you will not see anything.
    # You can use the db/seeds.rb file. Check it out!

    # This route will be behind friends/:id
    # Where :id is the id for the object.
    #
    # Example: friends/2
    #
    # In our case, thanks to our seed.rb file, this will be Janice. Oh. My. God!
  end



  # Defining methods which no other class should need.
  private

    # This will set a Friend object for us based on the Id.
    def set_friend
      begin
        @friend = Friend.find(params[:id])

      # To rescue this specific error, we need to specify ActiveRecord in the name of the exception.
      rescue ActiveRecord::RecordNotFound  => e
        @message = "Record not found, #{e.message}"
      end
    end
end
