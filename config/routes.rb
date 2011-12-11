Collectivity::Engine.routes.draw do
  devise_for :members, :class_name => "Collectivity::Member"
  mount Collectivity::API => "/"
end
#== Route Map
# Generated on 10 Dec 2011 22:39
#
