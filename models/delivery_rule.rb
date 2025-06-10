class DeliveryRule
    def calculate(subtotal)
      raise NotImplementedError, "Subclasses must implement `calculate`"
    end
  end
  