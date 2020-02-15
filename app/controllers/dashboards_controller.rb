class DashboardsController < ApplicationController
    before_action :authenticate_user!
    def index
        @pins = current_user.pin
        @comments = current_user.comment
    end
    def redirect
        redirect_to dashboards_path
    end
end