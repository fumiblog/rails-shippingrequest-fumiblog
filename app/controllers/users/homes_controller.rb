class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    
  end
  
end
