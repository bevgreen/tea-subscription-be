class Api::V1::TeasController < ApplicationController
    def index
      teas = Tea.all
      render json: TeaSerializer.new(teas), status: :ok
    end
  end