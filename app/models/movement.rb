class Movement < ApplicationRecord
    belongs_to :product

    @@typeMovement = { "Entrada" => 1, "Salida" => 0 }

    def self.typeMovements
        return @@typeMovement
    end

    def typeMovementName
        return "Entrada" if typemov == @@typeMovement["Entrada"]
        return "Salida" if typemov == @@typeMovement["Salida"]
    end
end
