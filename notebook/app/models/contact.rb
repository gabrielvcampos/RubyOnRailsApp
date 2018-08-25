class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones, inverse_of: :contact
  has_one :address
 
  accepts_nested_attributes_for :phones
  accepts_nested_attributes_for :address, reject_if: :all_blank, allow_destroy: true
  
end
