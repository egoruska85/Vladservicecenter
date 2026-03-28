class Order < ApplicationRecord
  belongs_to :service
  has_many_attached :images
  has_many :usermessages
end
