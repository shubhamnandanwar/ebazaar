class Consumer < ApplicationRecord
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_format_of :password, :with => /^ (?=.{7,})(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$/
end
