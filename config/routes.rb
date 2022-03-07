Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    resources :questions do
      resources :answers, except: :new
    end

    resource :session, only: %i[new create destroy]
    resources :users, only: %i[new create edit update show]

    namespace :admin do
      resources :users, only: %i[index create]
    end

    root 'pages#index'
  end
end
