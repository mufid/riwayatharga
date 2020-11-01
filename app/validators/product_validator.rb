class ProductValidator < ActiveModel::Validator
  def validate(record)
    validate_url_source(record)
  end

  def validate_product_limit(record)

  end

  def validate_url_source(product)
    if !['tokopedia.com', 'www.tokopedia.com'].include?(product.uri.host)
      product.errors.add(:url, :ecommerce_not_supported)
      return product
    end
  end
end