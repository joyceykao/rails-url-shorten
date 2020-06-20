class ApplicationController < ActionController::Base
  def render_404
    render file: "#{Rails.root}/public/404", status: :not_found
  end
end
