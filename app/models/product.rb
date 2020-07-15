class Product < ApplicationRecord
  attr_accessor :url
  validates :url, presence: true, if: :new_record?
end
