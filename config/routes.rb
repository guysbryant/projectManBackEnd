Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resouces :api do
    resources :v1 do
      resources :project, only: %i[index create show]
      resources :user, only: %i[index create show]
    end
  end
end
