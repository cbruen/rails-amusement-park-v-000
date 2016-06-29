
class RidesController < ApplicationController
    def create

        ride = Ride.new(user_id: session[:user_id],  attraction_id: params[:attraction_id])

        print = ride.take_ride

        if print == true
          redirect_to user_path(ride.user), notice: "Thanks for riding the #{ride.attraction.name}!"
        else

          redirect_to user_path(ride.user), notice: "#{print}"
        end
    end
end
