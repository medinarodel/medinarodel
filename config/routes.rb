Medinarodel::Application.routes.draw do
  root :to => 'pages#index'

  match 'contact' => 'pages#contact'
  match 'views' => 'pages#views'
end
