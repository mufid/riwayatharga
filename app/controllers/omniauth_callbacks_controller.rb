class OmniauthCallbacksController < ApplicationController
  def developer
    binding.pry
  end

  def twitter
    user = User.authorize_from_twitter(request.env['omniauth.auth'])
    sign_in user
    redirect_to '/products/new'
  end

  def failure
    redirect_to '/'
  end
end
