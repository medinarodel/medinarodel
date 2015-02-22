Medinarodel::Application.routes.draw do
  root 'pages#home'
  get 'home' => 'pages#home', as: :home
  get 'portfolio' => 'pages#portfolio', as: :portfolio
  get 'contact' => 'pages#contact', as: :contact
end
