class Produto < ApplicationRecord

    belongs_to :departamento

    validates :quantidade_estoque, presence: true
    validates :nome, length: {minimum: 5}
    
end
