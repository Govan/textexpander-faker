#!/usr/bin/ruby
require 'rubygems'
require 'faker'

class FakeText
  def initialize(&action)
    @action = action
  end

  def fire
    @action.call(self)
  end
end

calls = {
	:fname=>   FakeText.new{ Faker::Name.first_name },
	:unname=>  FakeText.new{ Faker::Name.user_name },
	:lname=>   FakeText.new{ Faker::Name.last_name },
	:name=>    FakeText.new{ Faker::Name.first_name+' '+Faker::Name.last_name },
	:tel=>     FakeText.new{ Faker::PhoneNumber.phone_number },
	:street=>  FakeText.new{ Faker::Address.street_address },
	:postcode=>FakeText.new{ Faker::Address.uk_postcode },
	:zip=>     FakeText.new{ Faker::Address.zip_code },
	:email=>   FakeText.new{ Time.now.to_f.to_s.gsub(".", "").ljust(15, "0")<<"@test.leftbrained.co.uk"},
	:company=>   FakeText.new{ Faker::Company.name },
	}

template = ARGV[0]
template = "#"+template unless template.include?(" ") || template.include?('#')

puts template.gsub(/#([a-z]+)/) {|key|
  sym_key = key.gsub("#", "").to_sym
  key = calls[sym_key].fire if calls.has_key? sym_key
  key    
}