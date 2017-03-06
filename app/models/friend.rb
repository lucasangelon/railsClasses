class Friend < ApplicationRecord

  # Ensures a Friend has a first name.
  # We are also defining a custom message for the error.
  # If the following situation is true:
  #
  # friend = Friend.new
  # friend.valid? #=> false
  #
  # We can access the model errors based on the validation via:
  # friend.errors[:first_name] #=> A friend needs a valid name.
  validates :first_name, presence: { message: 'A friend needs a valid name.' }
end
