# frozen_string_literal: true

require_relative "NewMpesa/version"

module NewMpesa
  class Error < StandardError; end
  # Your code goes here...

  def self.test(name)
    puts "Hello #{name}" 
  end
end
