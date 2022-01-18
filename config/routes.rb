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
      resources :doctor_comments, except:[:index, :show]
      resource  :checks, only:[:create, :destroy]
    end
  end


  #妊婦・患者側
  devise_for :patients, skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
    
    resource :patients, only:[:edit, :update] do
      get "my_page" => "patients#show"
    end
    
    resources :appointment_frames, only:[:index, :edit, :update]
    resources :appointments, only:[:new, :index, :show] do
      post "confirm" => "appointments#confirm"
    end
  end
    
    
end
