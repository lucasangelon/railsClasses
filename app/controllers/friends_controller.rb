class FriendsController < ApplicationController
  def ross
    @friend = Friend.new(
        first_name: 'Ross',
        last_name: 'Geller',
        career: 'Archaeologist',
        famous_sentence: 'We were on a break!')
  end

  def monica
    @friend = Friend.new(
        first_name: 'Ross',
        last_name: 'Geller',
        career: 'Archaeologist',
        famous_sentence: 'We were on a break!')
  end

  def rachel
  end

  def phoebe
  end

  def chandler
  end

  def joey
  end
end
