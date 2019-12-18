require 'faker'
class User < ApplicationRecord
  def self.generate_user
    fname = random_first_name
    mname = random_middle_name
    lname = random_last_name
    uname = random_username(fname, lname)
    emaile = random_email(fname, lname)
    user = {
      id: rand(100),
      first_name: fname,
      middle_name: mname,
      last_name: lname,
      username: uname,
      email: emaile
    }
  end

  def self.random_first_name
    Faker::Name.first_name
  end

  def self.random_middle_name
    Faker::Name.middle_name
  end

  def self.random_last_name
    Faker::Name.last_name
  end

  def self.random_username(firstname, lastname)
    Faker::Internet.username(specifier: "#{firstname} #{lastname}", separators: %w(_ -))
  end

  def self.random_email(firstname, lastname)
    Faker::Internet.email(
      name: "#{firstname} #{lastname}",
      domain: 'fakify',
      separators: %w(. _ -)
    )
  end
end
