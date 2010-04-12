ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home", :action => "index"

  map.home '/home', :conditions => { :method => :get}, :controller => 'home', :action => 'index'
  
  # About controller ... information about this application
  map.about   '/about',   :controller => 'about', :action => 'index'
  map.contact '/contact', :controller => 'about', :action => 'contact'
  map.tos     '/tos',     :controller => 'about', :action => 'tos'
  map.license '/license',  :controller => 'about', :action => 'license'

  
  # Sessions controller. Used for login and logout
  map.login '/login', :controller => "sessions", :action => "new"
  map.logout '/logout', :controller => "sessions", :action => "destroy"

  map.resource :account, :controller => "users", :member => { :confirm => :get }
  map.resource :session, :users
  map.resources :users
  map.resource :password_reset

  map.resources :projects
end
