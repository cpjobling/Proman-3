ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home", :action => "index"

  map.about 'about', :conditions => { :method => :get}, :controller => 'about', :action => 'index'
  map.home 'home', :conditions => { :method => :get}, :controller => 'home', :action => 'index'
  map.contact 'contact', :conditions => { :method => :get}, :controller => 'contact', :action => 'index'
  map.resources :projects
  
  map.login '/login', :controller => "sessions", :action => "new"
  map.logout '/logout', :controller => "sessions", :action => "destroy"

  map.resource :account, :controller => "users", :member => { :confirm => :get }
  map.resource :session, :users
  map.resources :users
  map.resource :password_reset
end
