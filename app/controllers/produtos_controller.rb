class ProdutosController < ApplicationController
    
    before_action :set_produto, only: [:edit, :update, :destroy]

    def index
        @listaProduto = Produto.order(:nome).limit 10
    end

    def create
        valores = produto_params
        @produto = Produto.new valores
        if @produto.save
            flash[:notice] = "Produto cadastrado com sucesso"
            redirect_to root_url
        else
            @departamentos = Departamento.all
            render :new
        end
    end

    def new
        @produto = Produto.new
        renderiza(:new)
    end

    def destroy
        Produto.destroy 
        redirect_to root_url
    end

    def busca
        @nome_busca = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@nome_busca}%"
    end

    def edit
        renderiza(:edit)
    end

    def update
        valores = produto_params
        if @produto.update valores
            flash[:notice] = "Produto autualizado com sucesso"
            redirect_to root_url
        else
            render :new
        end
    end

    private

    def renderiza(view)
        @departamentos = Departamento.all
        render view
    end

    def set_produto
        id = params[:id]
        @produto = Produto.find(id)
    end

    def produto_params
        params.require(:produto).permit :nome, :preco, :descricao, :quantidade_estoque, :departamento_id
    end

end

