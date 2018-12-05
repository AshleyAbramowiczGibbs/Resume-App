Rails.application.routes.draw do

  namespace :api do
    get '/students' => 'students#index'
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"

    get '/experiences' => 'experiences#index'
    post "/experiences" => "experiences#create"
    get "/experiences/:id" => "experiences#show"
    patch "/experiences" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"

    get '/education' => 'educations#index'
    post "/education" => "educations#create"
    get "/education/:id" => "educations#show"
    patch "/education" => "educations#update"
    delete "/education/:id" => "educations#destroy"

    get '/skills' => 'skills#index'
    post "/skills" => "skills#create"
    get "/skills/:id" => "skills#show"
    patch "/skills/:id" => "skills#update"
    delete "/skills/:id" => "skills#destroy"

    get '/capstones' => 'capstones#index'
    post "/capstone" => "capstones#create"
    get "/capstone/:id" => "capstones#show"
    patch "/capstone/:id" => "capstones#update"
    delete "/capstone/:id" => "capstones#destroy"

    post "/sessions" => "sessions#create"

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
