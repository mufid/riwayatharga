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
require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
