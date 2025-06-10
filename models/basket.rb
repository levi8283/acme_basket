class Basket
    def initialize(product_catalog:, delivery_rule:, offers:)
      @product_catalog = product_catalog
      @delivery_rule = delivery_rule
      @offers = offers
      @items = []
    end
  
    def add(product_code)
      product = @product_catalog[product_code]
      raise "Unknown product: #{product_code}" unless product
  
      @items << product
    end
  
    def total
      remaining_products = @items.dup
      total_price = 0
  
      @offers.each do |offer|
        offer_total, remaining_products = offer.apply(remaining_products)
        total_price += offer_total
      end
  
      total_price += remaining_products.sum(&:price)
      delivery = @delivery_rule.calculate(total_price)
  
      (total_price + delivery).round(2)
    end
  end
  