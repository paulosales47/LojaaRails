Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #RAIZ
  root "produtos#index"
  
  #Pagina PRODUTO
  get "/produtos/novo" => "produtos#cadastro"
  post "/produtos" => "produtos#create"

end
