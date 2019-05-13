Rails.application.routes.draw do
  get 'contact/index'
  root to: 'tops#index' #トップランディングページ
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact' => 'contact#index'  #  入力画面
  post '/confirm' => 'contact#confirm' #確認画面
  post '/thanks' => 'contact#thanks' #送信完了画面
end
