Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: 'tasks#index'

  # rota para listar todas as tarefas
  get 'tasks', to: 'tasks#index'

  # rota para exibir o form
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # rota para exibir os detalher de uma tarefa específica
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # rota para criar a nova tarefa
  post 'tasks', to: 'tasks#create'

  # rota para exibir o form para edição
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # rota para atualizar uma tarefa específica
  patch 'tasks/:id', to: 'tasks#update'

  # rota para deletar a tarefa
  delete 'tasks/:id', to: 'tasks#destroy'
  # root "posts#index"
end
