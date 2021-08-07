class ApplicationController < ActionController::Base
    # before_action :authenticate_user!

    def current_order
        if current_user
            order = Order.where(user_id: current_user.id).where(status:"created").last
            if order.nil?
                order = Order.create(user: current_user, status: "created")
            end
            return order
        end
        nil
    end
end
