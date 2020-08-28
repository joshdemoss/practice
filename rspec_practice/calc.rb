module Calc
    def self.add(x, y)
        x + y
    end

    def self.difference(x,y)
        x - y
    end

    def self.mult(x, y)
        x * y
    end

    def self.divide(x, y)
        if y == 0
            0
            # raise ZeroDivisionError
        else
            x / y
        end
    end
end