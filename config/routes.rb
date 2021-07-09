Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :suppliers, only: [:create, :show, :index, :update, :destroy]
  delete 'suppliers/:id/destroy' => 'suppliers#destroy'
end
