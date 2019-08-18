class SecretsController < ApplicationController

  def show
    if !require_login
      redirect_to("/")
    end
  end

end
