
module Api
  module V1
    class GamesController < ApplicationController

      def index
        render json: Game.includes(:user), include: ['users']
      end

      def create
        game = Game.create(game_params)
        render json: game, status: 201
      end

      def show
      end

      private

      def game_params
        params.permit(:score, :user_id)
      end
      
    end
  end
end
