class User < ActiveRecord::Base
  validates_presence_of :email, :username
  validates_uniqueness_of :email, :username

  before_save :set_full_name

  private
    def set_full_name
      self.full_name = "#{self.name} #{self.surname}"
    end
end
