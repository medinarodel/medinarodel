Medinarodel::Application.routes.draw do
  root :to => 'pages#index'

  match 'portfolio' => 'pages#portfolio'
  match 'jobs' => 'pages#jobs'
end
