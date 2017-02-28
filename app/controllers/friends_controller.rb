class FriendsController < ApplicationController

  # Our actions are defined here, with this setup, every "Friends" main character
  # could have their own unique page.

  def ross
    @friend = Friend.new('Ross', 'Geller', 'Archaeologist', 'We were on a break!')
  end

  def monica
    @friend = Friend.new('Monica', 'Geller', 'Chef', 'I know!')
  end

  def rachel
    @friend = Friend.new('Rachel', 'Green', 'Fashion', 'I got off the plane.')
  end

  def phoebe
    @friend = Friend.new('Phoebe', 'Buffay', 'Musician', 'My eyes!')
  end

  def chandler
    @friend = Friend.new('Chandler', 'Bing', 'Transponster', 'Can you Be <insert something here>')
  end

  def joey
    @friend = Friend.new('Joey', 'Tribbiani', 'Actor', 'How you doin?')
  end
end
