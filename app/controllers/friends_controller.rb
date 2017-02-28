class FriendsController < ApplicationController

  # Our actions are defined here, with this setup, every "Friends" main character
  # could have their own unique page.

  def ross
    @friend = Friend.new('Ross', 'Geller', 'Archaeologist', 'We were on a break!')



    # The following segment is going to be available in the logs / console.
    #
    # This will raise a "TypeError" exception.
    # Rescuing *all* exceptions is not a good practice, we are rescuing exactly
    # what we know that can go wrong here.
    begin
      @friend.career += 17
    rescue TypeError => error
      logger.fatal "\n\nAn error has occurred: #{error.message}"
      logger.fatal "#{error.inspect}\n"
      logger.fatal "#{error.backtrace}\n"
    ensure
      logger.debug "\nFinished the Ross Begin-Rescue-Ensure section.\n"
    end
  end

  def monica
    @friend = Friend.new('Monica', 'Geller', 'Chef', 'I know!')



    # The following segment is going to be available in the logs / console.
    #
    # We can also manually raise exceptions such as "ArgumentError" in this case:
    begin
      raise ArgumentError, 'some argument was nil'
    rescue ArgumentError => error
      logger.fatal "\n\nManually raised: #{error.message}"
      logger.fatal "#{error.inspect}\n"
      logger.fatal "#{error.backtrace}\n"
    ensure
      logger.debug "\nFinished the Monica Begin-Rescue-Ensure section.\n"
    end
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
