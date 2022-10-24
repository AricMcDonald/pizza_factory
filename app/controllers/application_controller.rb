class ApplicationController < ActionController::API
    def index
        pizzas = Pizza.get("created_at DESC")
        render json: pizzas
      end
    
      def create
        pizza = Pizza.create(pizza_param)
        render json: pizzas
      end
    
      def update
        pizzas = Pizza.find(params[:id])
        pizzas.update(pizza_param)
        render json: pizzas
      end
    
      def destroy
        pizzas = Pizza.find(params[:id])
        pizza.destroy
        head :no_content, status: :ok
      end
    
      private
        def pizza_param
          params.require(:pizzas).permit(:pizza, :topping)
        end
end

