# == Schema Information
#
# Table name: products
#
#  id                    :bigint           not null, primary key
#  original_url          :string
#  title                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  external_id           :string           not null
#  original_submitter_id :bigint
#
# Indexes
#
#  index_products_on_external_id            (external_id) UNIQUE
#  index_products_on_original_submitter_id  (original_submitter_id)
#
# Foreign Keys
#
#  fk_rails_...  (original_submitter_id => users.id)
#

class Product < ApplicationRecord
  attr_accessor :url
  validates :url, presence: true, if: :new_record?
  validates_with ProductValidator, if: :new_record?

  has_many :submitters, through: :user_products, class_name: 'User'
  belongs_to :original_submitter, class_name: 'User'


  def uri
    URI(url)
  end

  def find_similar
    nil
  end
end
