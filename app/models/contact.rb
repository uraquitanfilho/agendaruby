class Contact < ActiveRecord::Base
  belongs_to :kind #pertence a um único tipo
  has_one :address #pertence apenas 1 endereço se fosse mais de um o address seria addresses
  has_many :phones
  
  accepts_nested_attributes_for :address #singular pois é has_one
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true  #plural pois é has_many
  
  validates :name, presence: true, length: {minimum: 3}
  validates :email, presence: true
end
