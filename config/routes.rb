Rails.application.routes.draw do
  # mostrar todas as tarefas na tela 
  get 'tasks', to: 'tasks#index'

  # mostrar um form para o user adicionar nova tarefa
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # mostrar os detalhes de cada tarefa em uma nova página
  get 'tasks/:id', to: 'tasks#show', as: :task

  # criar uma nova tarefa pelo form criado
  post 'tasks', to: 'tasks#create'

  # mostrar um form para user editar uma tarefa já criada
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # atualizar a task no db
  patch 'tasks/:id', to: 'tasks#update'

  # deletar uma task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

end
