Collectivity::Engine.routes.draw do
  devise_for :members, :class_name => "Collectivity::Member"

end
