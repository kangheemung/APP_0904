Rails.application.routes.draw do
  #top
 root 'posts#index'
 post 'posts/create' => 'posts#create', as:'posts'

  #ログイン
  get 'users/new'=>'users#new' ,as:'signup'
  post'users/create'=>'users#create',as:'users'
  
 #mypage
  get 'users/mypage'=>'users#mypage',as: 'mypage'
 
  #会員登録
  get 'sessions/new'=>'sessions#new',as: 'login'
  post 'sessions/create'=>'sessions#create',as: 'sessions'
  delete 'logout' => 'sessions#destroy'

#ユーザ一覧
get 'users'=>'users#index',as:'users_index'
get 'users/:id'=>'users#show',as:'users_show'
get  'posts/:id' => 'posts#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
