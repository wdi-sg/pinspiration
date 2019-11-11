class UsersController < ApplicationController
    
    def index
        @customers = Customer.all
    end

    def show
        @kopi = Kopi.find(params[:id])
    end
  
    def new
        @origins = Origin.all

    end
  
    def edit
    end
  
    def create
        @customer = Customer.new(customer_params)

        @customer.save
        redirect_to @customer
    end
  
    def update
    end
  
    def destroy
    end

private

    def customer_params
    params.require(:customer).permit(:name)
    end

end
end