class Service < ApplicationRecord
  has_many :orders


  def name_title
    title.capitalize
  end
end
