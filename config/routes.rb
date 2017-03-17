Rails.application.routes.draw do
	resources :urls
	root "urls#index"
	get 'urls/:id/short' => 'urls#short'
end
