MineApp::Application.routes.draw do
  resources :employees


  authenticated :user do
    root :to => "employees#index"
  end

  resources :employees do
    collection do
      post "importCsv"
    end
  end


  devise_for :users
  resources :users
end