
module Api
  module V1
    class GamesController < ApplicationController

      def index
        # all hobby objs loaded with their cats vs. 1 query per hobby
        # do both and take pic of terminal
        # render json: Hobby.all, include: ['cats']
        render json: Game.includes(:user), include: ['users']
      end

      def show
      end
    end
  end
end
