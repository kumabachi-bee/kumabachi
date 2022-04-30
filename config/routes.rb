Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  # =============== 管理者用(URLに/admin/を付与する為、namespace) ===============
  namespace :admin do
    resources :events, except:[:index, :show]
    resources :members, only:[:index, :show, :update]
  end

  # =============== 会員用(URLに/public/不要な為、scope module) ===============
  devise_for :members, skip: [:passwords,], controllers: {
    registrations:"public/registrations",
    sessions:'public/sessions'
  }
  scope module: :public do
    root 'homes#top'
    get 'about_me' => 'homes#about_me'
    resources :events, only:[:index, :show]
    resources :contacts, only:[:new, :create]
    
    # 退会確認用
    get 'member/confirm' => 'members#confirm'
    # 退会機能(データは削除しない)
    patch 'member/withdraw' => "members#withdraw"
    resources :members, only:[:show, :edit, :update]
    
  end
end
