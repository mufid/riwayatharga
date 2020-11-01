module RiwayatHarga
  class Scraper
    def self.recognize(product)
      uri = URI(product.url)
      uri

      if !['tokopedia.com', 'www.tokopedia.com'].include?(uri.host)
        product.errors.add(:url, :ecommerce_not_supported)
        return product
      end
    end

    def self.identify_external_id
    end
  end
end