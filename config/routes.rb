Rails.application.routes.draw do

get	'/'			=> 'posts#index'
post '/book'	=>	'posts#create'
get '/book-delete/:id'	=> 'posts#delete'
get '/show/:id'	=> 'posts#show'
post '/post/:id'	=> 'posts#update'
end
