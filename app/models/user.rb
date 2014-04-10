class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # TODO: we should create a setter and validator for phone to ensure that we stick
  #       to the format that Twilio wants. 
  #       https://www.twilio.com/docs/api/rest/making-calls
  #       http://en.wikipedia.org/wiki/E.164
  attr_accessor :phone
end
