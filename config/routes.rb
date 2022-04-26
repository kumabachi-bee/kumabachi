Rails.application.routes.draw do
  # =============== 管理者用(URLに/admin/を付与する為、namespace) ===============
  namespace :admin do
    resources :events, except:[:index, :show]
  end

  # =============== 会員用(URLに/public/不要な為、scope module) ===============
  devise_for :members
  scope module: :public do
    root 'homes#top'
    get 'about_me' => 'homes#about_me'
    resources :events, only:[:index, :show]
  end
end
