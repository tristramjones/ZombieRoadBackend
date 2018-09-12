
module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:hobbies), include: ['hobbies']
      end

      def show
        render json: User.find(params[:id]), include: ['hobbies']
      end
    end
  end
end
