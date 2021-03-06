Rails.application.routes.draw do





	scope "/:locale" do

		namespace :purchase do
			resources :requests
		end



		resources :rimes do
			collection do
				post :import 
				get :summary
			end
		end

		namespace :newspaper do
			resources :layouts
		end


		namespace :adv do
			resources :requests 
			resources :pdates
			resources :originalsources
			resources :finaldesigns
			resources :advsizes
			resources :advtypes
		end


		namespace :general do
			resources :notices
			resources :industries
		end


		namespace :issue do
			resources :areas
			resources :provinces
			resources :returns
			resources :cpublishes
			resources :publishes do
				collection do
					post :copy
					post :plabel
					post :pinvoice
					get :summary
				end
			end
			resources :cities
			resources :customers do
				collection do
					get :summary
					post :plabel
				end
			end
			resources :types
		end

		devise_for :users do
			get '/users/sign_out' => 'devise/sessions#destroy'
		end

		resources :users

		# The priority is based upon order of creation: first created -> highest priority.
		# See how all your routes lay out with "rake routes".

		# You can have the root of your site routed with "root"
		resources :site do
			collection do
				get 'index'
				get 'main'
				get 'presentation'
				get 'weixin'
				get 'weixin_mobile'
			end
		end

		# Example of regular route:
		#   get 'products/:id' => 'catalog#view'

		# Example of named route that can be invoked with purchase_url(id: product.id)
		#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

		# Example resource route (maps HTTP verbs to controller actions automatically):
		#   resources :products

		# Example resource route with options:
		#   resources :products do
		#     member do
		#       get 'short'
		#       post 'toggle'
		#     end
		#
		#     collection do
		#       get 'sold'
		#     end
		#   end

		# Example resource route with sub-resources:
		#   resources :products do
		#     resources :comments, :sales
		#     resource :seller
		#   end

		# Example resource route with more complex sub-resources:
		#   resources :products do
		#     resources :comments
		#     resources :sales do
		#       get 'recent', on: :collection
		#     end
		#   end

		# Example resource route with concerns:
		#   concern :toggleable do
		#     post 'toggle'
		#   end
		#   resources :posts, concerns: :toggleable
		#   resources :photos, concerns: :toggleable

		# Example resource route within a namespace:
		#   namespace :admin do
		#     # Directs /admin/products/* to Admin::ProductsController
		#     # (app/controllers/admin/products_controller.rb)
		#     resources :products
		#   end
	end
	root 'site#index'
end
