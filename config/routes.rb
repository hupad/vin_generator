Rails.application.routes.draw do
  
  root "welcome#index"
  get "/vin" => "vin#index"
end
