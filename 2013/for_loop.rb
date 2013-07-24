require 'minitest/unit'

include MiniTest::Assertions

Measurement = Struct.new :day, :weight

@table =
[
  Measurement.new( 1, 150.0),
  Measurement.new( 2, 151.0),
  Measurement.new(10, 155.0),
]

no_meas = Measurement.new -1, Float::NAN

def first_after(day)
  @table.find { |m| m.day > day } || no_meas
end

assert_block do
  first_after(5).weight == 155.0
end
