Rails.application.routes.draw do

  root to: "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: :create
  end
  ##### RECOURCES AUTOMATIC CREATES ALL THE PATHES (7) WITH ONLY WE TELL THEM ONLY WHAT WE REALLY NEED
  ##### DOSES IS NESTED BECAUSE IT DOESNT ITS OWN URL - ITS USED ON THE SHOW COCKTAIL PAGE

  resources :doses, only: [:destroy]
  ##### ????
end
