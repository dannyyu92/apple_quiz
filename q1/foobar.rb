#!/usr/bin/env ruby
require_relative './validators/foobar_input_validator.rb'

class Foobar

  # Constants
  FOOBAR_STR = 'foobar'
  FOO_STR = 'foo'
  BAR_STR = 'bar'

  FOOBAR_NUM = 15 # Divisible by both 3 and 5
  FOO_NUM = 3
  BAR_NUM = 5

  attr_reader :start_num
  attr_reader :end_num
  
  def initialize(start_num, end_num)
    @start_num = start_num
    @end_num = end_num
    validate_inputs!
  end

  def print_result
    (self.start_num..self.end_num).each do |n|
      if divisible_by?(FOOBAR_NUM, n)
        puts "#{n}: #{FOOBAR_STR}"
      elsif divisible_by?(FOO_NUM, n)
        puts "#{n}: #{FOO_STR}"
      elsif divisible_by?(BAR_NUM, n)
        puts "#{n}: #{BAR_STR}"
      end
    end
  end

  private

  def divisible_by?(divisor, dividend)
    dividend % divisor == 0
  end

  def validate_inputs!
    input_validator.validate!
  end

  def input_validator
    @input_validator ||= FoobarInputValidator.new(
      self.start_num, 
      self.end_num
    )
  end

end