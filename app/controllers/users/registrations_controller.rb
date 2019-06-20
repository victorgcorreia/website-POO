# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
 #    before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
    if @user.role == 2
        @owner = @user.owners.build
    elsif @user.role == 3
        @volunteer = @user.volunteers.build
    end
    puts("Deu certo")
  end

  # POST /resource
  # class Users::RegistrationsController < Devise::RegistrationsController
  def create
      super do |resource|

         # if @user.role == 2
         #   @owner = Owner.create(user: @user)
         # #  redirect_to owners_update_path #path não existe -> falta rota?
         # elsif @user.role == 3
         #   @volunteer = Volunteer.create(user: @user)
         # end
         puts "this works"
      end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # def sign_up_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
  # end

  # def configure_permitted_parameters
  #     devise_parameter_sanitizer.permit(:sign_up)  { |u| u.permit(  :name, :email, :password, :password_confirmation, :role ) }
  # end


  # def other_signup_params
  #   params.require(:extra_user_attributes).permit(:first_name, :last_name)
  # end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   if current_user.role == 2
  #       redirect_to users_path
  #   else redirect_to home_path
  # end

  # def after_sign_in_path_for(user)
  #   origin_path = session[:origin_path]
  #   clear_origin_path
  #   if origin_path.present?
  #     origin_path
  #   else
  #     params[:target].presence || default_redirect_path
  #   end
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
