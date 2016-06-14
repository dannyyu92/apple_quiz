#!/usr/bin/env ruby
require_relative '../foobar.rb'
require 'minitest/autorun'

describe Foobar do

  describe 'when given valid input' do 

    before do
      @foobar = Foobar.new(1, 100)
    end

    it 'must print \'foo\' if the number is divisible by 3' do
      assert_output(/9: foo/) do 
        @foobar.print_result
      end
    end

    it 'must print \'bar\' if the number is divisible by 5' do
      assert_output(/10: bar/) do 
        @foobar.print_result
      end
    end

    it 'must print \'foobar\' if the number is divisible by 3 and 5' do
      assert_output(/15: foobar/) do 
        @foobar.print_result
      end
    end

  end

  describe 'when given invalid input' do

    it 'will raise an error on nonnumeric start values' do
      err = assert_raises(RuntimeError) do
        foobar = Foobar.new('foo', 100)
      end
      assert_match /must be a Numeric/, err.message
    end

    it 'will raise an error on nonnumeric end values' do
      err = assert_raises(RuntimeError) do
        foobar = Foobar.new(1, 'bar')
      end
      assert_match /must be a Numeric/, err.message
    end

    it 'will raise an error if start num is greater than end num' do
      err = assert_raises(RuntimeError) do
        foobar = Foobar.new(100, 1)
      end
      assert_match /You must supply an ascending range of numbers/, err.message
    end

  end

end