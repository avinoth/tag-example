class City < ActiveRecord::Base
  has_many :companies
  belongs_to :state

end
