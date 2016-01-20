Medinarodel::Application.routes.draw do
  root 'pages#home'
  get 'home' => 'pages#home', as: :home
  get 'portfolio' => 'pages#portfolio', as: :portfolio
  get 'contact' => 'pages#contact', as: :contact
  get 'views' => 'pages#views', as: :views
  get 'randomizer' => 'pages#randomizer', as: :randomizer
end
