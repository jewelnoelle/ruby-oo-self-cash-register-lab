class CashRegister

    attr_accessor :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total=(total)
        @total = total
    end

    def total
        return @total
    end

    def discount
        @discount = 20
    end

    def add_item(title, amount, quantity = 1)
        self.total += amount * quantity
        quantity.times do
           @items << title
        end 
        self.last_transaction = amount * quantity
    end

    def apply_discount #come back to
        if @discount != 0
            self.total = (self.total - (self.total * (discount.to_f/100))).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

    def items
        @items
    end
end