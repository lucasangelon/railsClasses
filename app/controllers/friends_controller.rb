class FriendsController < ApplicationController
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
    puts friend2.errors[:first_name]
  end

  # By not initializing the object, the app _would_ crash on this page if we did not have an if in the view.
  # Luckily we do so it will not crash upon an empty model.
  def monica
    #@friend = Friend.new('Monica', 'Geller', 'Chef', 'I know!')
  end

  def rachel
    #@friend = Friend.new('Rachel', 'Green', 'Fashion', 'I got off the plane.')
  end

  def phoebe
    #@friend = Friend.new('Phoebe', 'Buffay', 'Musician', 'My eyes!')
  end

  def chandler
    #@friend = Friend.new('Chandler', 'Bing', 'Transponster', 'Can you Be <insert something here>')
  end

  def joey
    #@friend = Friend.new('Joey', 'Tribbiani', 'Actor', 'How you doin?')
  end
end
