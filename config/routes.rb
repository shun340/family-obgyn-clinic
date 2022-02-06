Rails.application.routes.draw do


  #管理者側
  devise_for :admin, skip: [:passwords], controllers: {
    registrations: "admin/registrations",
    sessions: "admin/sessions"
  }

  namespace :admin do
    root to: "homes#top"
    resources :patients, except:[:new, :create, :destroy]
    resources :appointment_frames, only: :index
    resources :appointments, only:[:index, :show, :update] do
      resources :appointment_frames, only: :update
      resources :doctor_comments, except:[:index, :show, :destroy]
      resource  :checks, only:[:create, :destroy]
    end
  end


  #妊婦・患者側
  devise_for :patients, skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  scope module: :public do
    root to: "homes#top"                                         #トップページ
    get "about" => "homes#about"                                 #アバウトページ　

    resource :patients, only:[:edit, :update] do                 #患者情報変更ページ・変更処理
      get "my_page" => "patients#show"                           #患者マイページ
    end

    resources :appointment_frames                                #予約一覧ページ・予約キャンセルページ・キャンセル処理
    resources :appointments, except:[:edit, :update, :destroy] do#予約情報入力ページ・予約一覧ページ・予約詳細ページ
      post "detail", on: :collection
      post "confirm", on: :collection                            #予約情報確認ページ
    end
  end

end
