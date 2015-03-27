class Product < ActiveRecord::Base
  belongs_to :state
  has_many :pujas

  def close?
    if Time.now > self.created_at + 2.hours + self.pujas.count*2.minutes
      return true
    else
      return false 
    end
  end

 end



