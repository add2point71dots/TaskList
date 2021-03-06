Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  patch '/tasks/:id/toggle_complete', to: 'tasks#toggle_complete', as: 'toggle_complete'

  get '/tasks/:id/edit', to: "tasks#edit", as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
end
