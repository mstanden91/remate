class Puja < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validate :time_restrict

  def time_restrict
    if Time.now > self.product.created_at + 2.hours + self.product.pujas.count*2.minutes
     return true
      else
      return false 
    end
  end

end
