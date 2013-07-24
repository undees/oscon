require "minitest/spec"
require "minitest/autorun"

class Temperature
  attr_reader :celsius

  def initialize(celsius)
    @celsius = celsius
  end

  def fahrenheit
    @celsius * 5.0 / 9.0 + 32.0
  end

  def kelvin
    @celsius + 273.0
  end
end

describe Temperature do
  let(:celsius) { Temperature.new(0.0) }

  [["Fahrenheit", 32.0],
   ["Kelvin",     273.0]].each do |units, expected|
    it "converts to #{units}" do
      method = units.downcase.to_sym
      celsius.send(method).must_equal(expected)
    end
  end
end

describe Temperature do
  let(:zero_c) { Temperature.new(0.0) }

  it "converts to Fahrenheit" do
    zero_c.fahrenheit.must_equal(32.0)
  end

  it "converts to Kelvin" do
    zero_c.kelvin.must_equal(273.0)
  end
end
