class Contact < ActiveRecord::Base
  belongs_to :kind #pertence a um único tipo
  has_one :address #pertence apenas 1 endereço se fosse mais de um o address seria addresses
  
  accepts_nested_attributes_for :address
end
