class ProdutosController < ApplicationController

    def index
        @listaProduto = Produto.order(:nome).limit 10
    end

    def create
        valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade_estoque
        produto = Produto.create valores
        redirect_to new_produto_url
    end

    def destroy
        id = params[:id]
        Produto.destroy id
        redirect_to root_url
    end

    def busca
        @nome_busca = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@nome_busca}%"
    end

end
