Rails.application.routes.draw do
  concern :commentable do
    resources :comments, only: %i[create destroy index]
  end

  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do

    resources :questions, concerns: :commentable do
      resources :answers, except: :new
    end

    resources :answers, except: :new, concerns: :commentable

    resource :session, only: %i[new create destroy]
    resources :users, only: %i[new create edit update show]

    namespace :admin do
      resources :users, only: %i[index create]
    end

    root 'pages#index'
  end
end
