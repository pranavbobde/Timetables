class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
        params.require(:user).permit( :firstname, 
                                  :email, 
                                  :password, 
                                  :password_confirmation,
                                  :adminify)
    end
end