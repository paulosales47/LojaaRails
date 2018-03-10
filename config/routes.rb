Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Pagina PRODUTO
  resources :produtos, only: [:new, :create, :destroy]
  post "/produtos/busca" => "produtos#busca", as: :busca_produto
  get "/produtos/busca" => "produtos#busca"
  #RAIZ
  root "produtos#index"
  

end
