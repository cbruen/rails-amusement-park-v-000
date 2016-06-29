class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  def mood
    if self.nausea && self.nausea > self.happiness
      return "sad"
    elsif self.nausea && self.nausea < self.happiness
      return "happy"
    else
      return "neutral"
    end
  end
end
