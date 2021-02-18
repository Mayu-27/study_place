Rails.application.routes.draw do
  root to: "spots#index"
  devise_for :users
end
