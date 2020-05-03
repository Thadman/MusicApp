class Band < ApplicationRecord
  has_one :record_label, dependent: :destroy 
  has_many :albums, dependent: :destroy
  has_one_attached :picture
  belongs_to :user
end



