require 'bcrypt'
class Consumer < ApplicationRecord

  has_secure_password
  before_save :encrypt_password

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_one :cart, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates_presence_of :first_name, :last_name, :phone, :email, :password, :address, :city, :state, :country, :zip_code
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, format: { with: /\A(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)\Z/ }, length: { minimum: 7}

  scope :user, -> (email) { where(email: email).first }

   def self.authenticate(email, password)
    consumer = find_by_email(email)
    if consumer && consumer.password_digest == BCrypt::Engine.hash_secret(password, consumer.password_salt)
      consumer
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_digest = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def set_default_role
    self.role ||= :user
  end

  def user_name
    self.first_name + " " + self.last_name
  end

  def user_address
    self.address + ", " + self.city + ", " + self.state + ", " + self.country + ", Zip Code " + self.zip_code.to_s
  end

  def is_admin?
    self.role == "admin"
  end

end
