Rails.application.routes.draw do
  get 'newhome/index'

  get 'subscribe/create'

  get 'subscribe/destroy'

  get 'subscribe/edit'

  get 'subscribe/index'

  get 'subscribe/new'

  get 'subscribe/show'

  get 'subscribe/update'

  get 'contact/create'

  get 'contact/destroy'

  get 'contact/edit'

  get 'contact/index'

  get 'contact/new'

  get 'contact/show'

  get 'contact/update'

  get 'home/index'
  root 'home#index'
  get 'newhome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
