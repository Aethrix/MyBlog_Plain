Rails.application.routes.draw do
  root 'welcome#home'
  devise_for :users
  resources :articles
  get '/search' => 'welcome#search', as: 'search_page'
  get '/chat' => 'chatroom#chat', as: 'chat_page'
  post 'message'=> 'message#create'
  
  mount ActionCable.server, at: '/cable'
end
