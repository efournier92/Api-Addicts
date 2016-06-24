module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin

    def authenticate_admin
    end
  end
end
