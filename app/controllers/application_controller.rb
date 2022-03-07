class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Authentication
  include Internationalization
end
