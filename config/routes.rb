Rails.application.routes.draw do
  resources :departamentos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Pagina PRODUTO
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  get "/produtos/busca" => "produtos#busca", as: :busca_produto
  #RAIZ
  root "produtos#index"
  

end
