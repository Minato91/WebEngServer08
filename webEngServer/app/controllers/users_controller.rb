class UsersController < ApplicationController

  def anmelden
    @user = User.find_by(login: params[:login])

    if @user.nil?
      # return status 400
      head 400
    else
      render json: @user.to_json(only: %w(salt_masterkey privkey_user_enc pubkey_user))
    end
  end

  def create

  end

  def pubkey

  end
end
