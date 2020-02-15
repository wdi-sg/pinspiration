class DashboardsController < ApplicationController
    before_action :authenticate_user!
    def index
        @pins = current_user.pin
    end
    def redirect
        redirect_to dashboards_path
    end
end