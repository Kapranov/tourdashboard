class CashorderController < ApplicationController
  skip_before_filter :require_login
  layout "cashorder"

  def index
  end
end
