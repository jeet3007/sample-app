class User < ActiveRecord::Base
	before_save {self.email.downcase}
	validates :name , presence: true, length: {maximum: 50}
	validates :password, length: {minimum: 6, presence: true}
	Valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email , presence: true, length: {maximum: 255}, format: {with: Valid_email_regex}, uniqueness: {case_sensitve: false}
	has_secure_password
end
