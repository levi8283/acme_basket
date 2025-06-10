require_relative 'offer'

class RedWidgetOffer < Offer
  def apply(products)
    red_widgets = products.select { |p| p.code == 'R01' }
    remaining = products.reject { |p| p.code == 'R01' }

    sorted = red_widgets.sort_by { |p| p.price }.reverse
    total = 0

    sorted.each_with_index do |item, index|
      total += (index % 2 == 0 ? item.price : item.price / 2)
    end

    [total, remaining]
  end
end
