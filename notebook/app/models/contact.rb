class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_one :address
 
  accepts_nested_attributes_for :phones
  accepts_nested_attributes_for :address
  
end
