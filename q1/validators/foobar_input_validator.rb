#!/usr/bin/env ruby

class FoobarInputValidator

  attr_reader :start_num
  attr_reader :end_num
  
  def initialize(start_num, end_num)
    @start_num = start_num
    @end_num = end_num
  end

  def validate!
    check_if_numeric!(self.start_num)
    check_if_numeric!(self.end_num)
    check_start_and_end_order!
  end

  private

  def check_if_numeric!(input)
    if !input.is_a? Numeric # Ints and Floats
      raise "'#{input}' is of type #{input.class}, but must be a Numeric"
    end
  end

  def check_start_and_end_order!
    if !(self.start_num <= self.end_num)
      raise 'You must supply an ascending range of numbers'
    end
  end

end