require 'minitest/autorun'
require 'minitest/rg'

require_relative '../person'

class TestPerson < MiniTest::Test

  def setup()
    @person1 = Person.new("Kirk", 32)
    @person2 = Person.new("Spock", 35)
    @person3 - Person.new("McCoy", 39)
  end

  def test_name()
    assert_equal("Spock", @person2.name)
  end

  def test_age()
    assert_equal(32, @person1.name)
    assert_equal(35, @person2.name)
    assert_equal(39, @person3.name)
end
