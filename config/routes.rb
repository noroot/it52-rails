Rails.application.routes.draw do

  get 'authentications/destroy'

  devise_for :user,
             path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "signup", edit: 'my/profile/secret' },
             controllers: { omniauth_callbacks: :omniauth_callbacks}

  # Редактирование профиля и аккаунта
  namespace :my do
    resource :profile, controller: 'users', only: [:show, :edit, :update,]
    resources :authentications, only: [:destroy]
  end

  # Список пользователей и публичные профили
  resources :users, only: [:index, :show]

  # События
  resources :events, except: [:destroy] do
    patch :publish, on: :member
    patch :cancel_publication, on: :member
  end

  post '/participate_in_event' => 'event_participations#create'
  delete '/cancel_participation' => 'event_participations#destroy'

  root to: redirect('/events')

  get ':id' => 'high_voltage/pages#show', as: :page
end
