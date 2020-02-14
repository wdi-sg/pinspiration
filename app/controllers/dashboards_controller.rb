class DashboardsController < ApplicationController
    def index
        redirect_to dashboards_path
    end
end