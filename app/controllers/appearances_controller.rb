# frozen_string_literal: true

class AppearancesController < ApplicationController
  before_action :set_appearance, only: %i[show update destroy]

  def index
    _search_params = params[:q].presence
    appearances = Appearance.all
    render json: AppearanceSerializer.new(appearances), status: :ok
  end

  def show
    render json: AppearanceSerializer.new(@appearance), status: :ok
  end

  def create
    appearance = Appearance.new(appearance_params)
    if appearance.save
      render json: AppearanceSerializer.new(appearance), status: :created
    else
      render json: {errors: appearance.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @appearance.update(appearance_params)
      render json: AppearanceSerializer.new(@appearance), status: :ok
    else
      render json: @appearance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appearance.destroy
    if @appearance.destroyed?
      render json: {notice: "Success"}, status: :ok
    else
      render json: {notice: "Failed"}, status: :unprocessable_entity
    end
  end

  private

  def set_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.permit(:speaking_time, :host_id, :episode_id)
  end
end
