require 'test_helper'

class PetTest < ActiveSupport::TestCase
  setup do
    @pet1 = pets(:one)
    @pet2 = pets(:two)
  end

  test 'A pet should have a valid nickname' do
    assert_instance_of String, @pet1.nickname
    assert_not_empty @pet1.nickname
  end

  test 'Dividing by 0 should raise an exception' do
    assert_raise ZeroDivisionError do
      10 / 0
    end
  end
end

