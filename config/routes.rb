Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #RAIZ
  root "produtos#index"
  
  #Pagina PRODUTO
  get "/produtos/new" => "produtos#cadastro"
  delete "produtos/:id" => "produtos#destroy", as: :produto
  post "/produtos" => "produtos#create"

end
