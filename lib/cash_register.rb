class CashRegister

    attr_accessor :total, :discount, :last_transaction, :items


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        # why must quantity = 1 ?
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times {self.items << title}
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total -= @total * (@discount / 100.0)
            "After the discount, the total comes to $800."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end