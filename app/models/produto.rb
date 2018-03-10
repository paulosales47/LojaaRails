class Produto < ApplicationRecord

    validates :quantidade_estoque, presence: true
    validates :nome, length: {minimum: 5}
    
end
