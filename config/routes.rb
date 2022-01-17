Rails.application.routes.draw do
  
  #管理者側
  devise_for :admin, skip: [:passwords], controllers: {
    registrations: "admin/registrations",
    sessions: "admin/sessions"
  }
  
  #妊婦・患者側
  devise_for :patients, skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

end
