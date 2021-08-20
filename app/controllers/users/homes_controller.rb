class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    if user_signed_in?
      gon.user_name = current_user.name
    end
    # byebug
  end
  
end
