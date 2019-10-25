Rails.application.routes.draw do
  get 'episodes/index'

  get 'episodes/show'

  get 'episodes/create'

  get 'episodes/update'

  get 'episodes/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
