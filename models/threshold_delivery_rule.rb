require_relative 'delivery_rule'

class ThresholdDeliveryRule < DeliveryRule
  def initialize(rules)
    @rules = rules.sort_by { |r| -r[:threshold] }
  end

  def calculate(subtotal)
    rule = @rules.find { |r| subtotal >= r[:threshold] }
    rule[:cost]
  end
end
