#!/usr/bin/env ruby

class Foobar

  attr_reader :start_num
  attr_reader :end_num
  
  def initialize(start_num, end_num)
    @start_num = start_num
    @end_num = end_num
  end

  def foobarize
    (self.start_num..self.end_num).each do |n|
      if n % 15 == 0 # Divisible by both 3 and 5
        puts "#{n}: foobar"
      elsif n % 3 == 0
        puts "#{n}: foo"
      elsif n % 5 == 0
        puts "#{n}: bar"
      end
    end
  end

end