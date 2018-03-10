class ProdutosController < ApplicationController
    
    def index
        @listaProduto = Produto.order(:nome).limit 10
    end

    def create
        valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade_estoque
        @produto = Produto.new valores
        if @produto.save
            flash[:notice] = "Produto cadastrado com sucesso"
            redirect_to root_url
        else
            render :new
        end
    end

    def new
        @produto = Produto.new
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

