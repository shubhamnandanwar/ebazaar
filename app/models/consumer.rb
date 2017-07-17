class Consumer < ApplicationRecord
  validates :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, :with => /^ (?=.{7,})(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$/
end
