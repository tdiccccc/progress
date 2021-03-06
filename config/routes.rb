Rails.application.routes.draw do

  #管理者用
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update]
    resources :products, only: [:index, :new, :show, :create, :show, :edit, :update]
    resources :workers, only: [:index, :show, :edit, :update]
    resources :progresses, only: [:index, :show]
  end

  #従業員用
  devise_for :worker,skip: [:passwords], controllers: {
    registrations: "workers/registrations",
    sessions: 'workers/sessions'
  }
  scope module: :worker do
    resources :workers, only: [:index, :show, :edit, :update]
    resources :products, only: [:index, :show]
    resources :progresses, only: [:index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
