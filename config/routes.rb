Alam::Application.routes.draw do
scope "(:locale)", :constraints => {:locale => /#{I18n.available_locales.join("|")}/} do
    get "search/index"

    resources :publications
    resources :activities
    resources :services
    resources :articles
    get "bereau/index"
    post "bereau/index"
    get "bereau/activities"
    post "bereau/activities"

 
    # root 'welcome#index'
    root to: "bereau#index", as: 'bereau'

    ActiveAdmin.routes(self)  
    devise_for :admin_users, ActiveAdmin::Devise.config

  
  end


  
  # get '*path', to: redirect {|params| "/ru/#{params[:path]}"}, constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  # get '', to: redirect("/#{I18n.default_locale}"), via: :all

end
