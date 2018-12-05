Rails.application.routes.draw do

  namespace :api do
    get '/students' => 'students#index'
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"

    get '/experience' => 'experience#index'
    post "/experience" => "experience#create"
    get "/experience/:id" => "experience#show"
    patch "/experience" => "experience#update"
    delete "/experience/:id" => "experience#destroy"

    get '/education' => 'education#index'
    post "/education" => "education#create"
    get "/education/:id" => "education#show"
    patch "/education" => "education#update"
    delete "/education/:id" => "education#destroy"

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
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
