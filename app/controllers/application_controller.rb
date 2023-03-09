class ApplicationController < ActionController::Base
         before_action :configure_permitted_parameters, if: :devise_controller?

         protected
     
         def configure_permitted_parameters
             devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nombre, :rfc, :apellidouno, :apellidodos, :role]) 
             devise_parameter_sanitizer.permit(:account_update, keys: [:email, :nombre, :rfc, :apellidouno, :apellidodos, :role])
         end
end
