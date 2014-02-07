Rails.application.routes.draw do
  root :to => "pages#welcome"

  resources :pages, :only => :index do
    collection do
      get :welcome
    end
  end
end
