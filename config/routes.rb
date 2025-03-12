Rails.application.routes.draw do
  root to: "homes#top"
  get 'products', to: 'products#index'  # 商品一覧を表示する
  get 'products/new'
  post 'products', to: 'products#create'
  get 'products/:id', to: 'products#show', as: 'product'  # 商品詳細を表示する
  get 'products/:id/edit', to: 'products#edit', as: 'edit_product'  # 商品編集フォームを表示
  patch 'products/:id', to: 'products#update'  # 商品を更新する
  delete 'products/:id', to: 'products#destroy', as: 'destroy_product'  # 商品を削除する
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
