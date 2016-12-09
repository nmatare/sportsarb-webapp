Rails.application.routes.draw do
  devise_for :users
  resources :bios
  resources :transactions
  resources :teams
  resources :sports

  ########
  # Static Landing Pages
  ########

  	root "home#index"
  	get "/home/contact" => "home#contact"
  	get "/home/white_paper" => "home#white_paper"
  	get "/home/hist_perform" => "home#hist_perform"

  ########
  # Dynamic User Accounts
  ########

    # Profile Manipulation
    	# READ 
      get "/bios/show/:id", :controller => "bios", :action => "show" # Summary page
      get "/bios/profile/:id", :controller => "bios", :action => "profile" # Profile
    	# UPDATE
     	post "/bios/profile_edit/:id", :controller => "users", :action => "edit"
    	# DESTROY
     	post "/bios/destory", :controller => "users", :action => "destroy"

      # Financial Account Manipulation
      # DEPOSIT (CREATE)
      post "/bios/deposit/:id", :controller => "charges", :action => "deposit" # Balance
      # READ
      get "/bios/balance/:id", :controller => "charges", :action => "balance" # Balance

      # Historical Performance (teams)
      # CREATE
      post "/bios/teams/:id", :controller => "teams", :action => "create" # Balance
      # READ
      get "/bios/teams/:id", :controller => "teams", :action => "show" # Balance

  ########
  # Dynamic Sport Portal
  ########

      #Displays the sport specific dashboard
      get "/sports/basketball/:id", :controller => "sports", :action => "basketball" 
      get "/sports/football/:id", :controller => "sports", :action => "football" 
      get "/sports/soccer/:id", :controller => "sports", :action => "soccer" 
      post "/sports/predict/:id", :controller => "sports", :action => "predict"
      get "/sports/optimize/:id", :controller => "sports", :action => "optimize"

  end
