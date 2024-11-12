Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


# Route pour afficher la liste des tâches (équivalent de tasks_path)
get 'tasks', to: 'tasks#index', as: 'tasks'

# Route pour créer une nouvelle tâche (équivalent de new_task_path)
# placé avant task/:id car sinon new est considéré comme un id
get 'tasks/new', to: 'tasks#new', as: 'new_task'
post 'tasks', to: 'tasks#create'

# Route pour afficher une tâche spécifique (équivalent de task_path)
get 'tasks/:id', to: 'tasks#show', as: 'task'


# Route pour éditer une tâche existante (équivalent de edit_task_path)
get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
patch 'tasks/:id', to: 'tasks#update'

# Route pour supprimer une tâche (équivalent de task DELETE)
delete 'tasks/:id', to: 'tasks#destroy'

end
