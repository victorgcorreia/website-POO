class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource_or_scope)
       if current_user.role == 1
         pets_path
       elsif current_user.role == 2
         owners_path
       elsif current_user.role == 3
         volunteers_path
       else
         '/'
       end
    end

    # def after_sign_up_path_for(resource_or_scope)
    #    if current_user.role == 1
    #      pets_path
    #    elsif current_user.role == 2
    #      owners_path
    #    elsif current_user.role == 3
    #      volunteers_path
    #    else
    #      '/'
    #    end
    # end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role, :email, :password])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :remember_me])
    end


end
