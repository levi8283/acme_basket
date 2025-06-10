require_relative 'models/product'
require_relative 'models/red_widget_offer'
require_relative 'models/threshold_delivery_rule'
require_relative 'models/basket'

catalog = {
  'R01' => Product.new(code: 'R01', name: 'Red Widget', price: 32.95),
  'G01' => Product.new(code: 'G01', name: 'Green Widget', price: 24.95),
  'B01' => Product.new(code: 'B01', name: 'Blue Widget', price: 7.95)
}

delivery_rule = ThresholdDeliveryRule.new([
  { threshold: 90, cost: 0.0 },
  { threshold: 50, cost: 2.95 },
  { threshold: 0, cost: 4.95 }
])

offers = [RedWidgetOffer.new]

basket = Basket.new(product_catalog: catalog, delivery_rule: delivery_rule, offers: offers)

ARGV.each { |code| basket.add(code) }
puts "Total: $#{basket.total}"
