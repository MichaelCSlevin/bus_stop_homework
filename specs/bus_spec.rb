require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bus'
require_relative '../person'


class TestBus < MiniTest::Test

  def setup()
    @bus = Bus.new(47, "Utopia Planitia")
    @passenger1 = Person.new("Burnham", 32)
  end

  def test_number()
    assert_equal(47, @bus.number)
  end

  def test_terminus()
    assert_equal("Utopia Planitia", @bus.terminus)
  end

  def test_drive()
    assert_equal("Vroom vroom, I'm a bus!", @bus.drive)
  end

  def test_count_passengers
    assert_equal(0, @bus.count_passengers)
  end

  def test_collect
    # act
    @bus.collect(@passenger1)

    assert_equal(1, @bus.count_passengers)
end

end
