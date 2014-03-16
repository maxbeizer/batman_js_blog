BatmanJsBlog::Application.routes.draw do
  resources :posts do
    resource :comments
  end
end
