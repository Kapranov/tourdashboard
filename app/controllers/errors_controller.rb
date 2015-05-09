class ErrorsController < ApplicationController
  skip_before_filter :require_login

  def error404
    render status: :not_found
  end

  def error422
    render status: :not_found
  end

  def error500
    render status: :not_found
  end

end
