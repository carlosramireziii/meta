class SevenDayMVP
  PRODUCTS = ['firesize', 'squall', 'landline'].freeze

  def self.current
    Product.find_by(slug: PRODUCTS.first)
  end

  def self.recent
    PRODUCTS.drop(1).map { |s| Product.find_by(slug: s) }
  end
end
