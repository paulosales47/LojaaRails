class ProdutosController < ApplicationController

    def index
        @listaProduto = Produto.order(:nome).limit 10
    end

    def create
        valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade_estoque
        produto = Produto.create valores
    end

end
