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
        first_name: 'Monica',
        last_name: 'Geller',
        career: 'Chef',
        famous_sentence: 'I know!')
  end

  def rachel
    @friend = Friend.new(
        first_name: 'Rachel',
        last_name: 'Green',
        career: 'Fashion',
        famous_sentence: 'I got off the plane.')
  end

  def phoebe
    @friend = Friend.new(
        first_name: 'Phoebe',
        last_name: 'Buffay',
        career: 'Musician',
        famous_sentence: 'My eyes!')
  end

  def chandler
    @friend = Friend.new(
        first_name: 'Chandler',
        last_name: 'Bing',
        career: 'Transponster',
        famous_sentence: 'Can you Be <insert something here>')
  end

  def joey
    @friend = Friend.new(
        first_name: 'Joey',
        last_name: 'Tribbiani',
        career: 'Actor',
        famous_sentence: 'How you doin?')
  end
end
