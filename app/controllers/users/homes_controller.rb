class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    gon.user_name = current_user.name
  end
  
end
