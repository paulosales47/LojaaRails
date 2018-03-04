class ProdutosController < ApplicationController

    def index
        @listaProduto = Produto.order(:nome).limit 10
    end



end
