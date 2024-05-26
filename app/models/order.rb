class Order < ApplicationRecord
  belongs_to :customer
  has_many :detaik_order
  
  validates_presence_of :price
  validates_numericality_of :price

end
