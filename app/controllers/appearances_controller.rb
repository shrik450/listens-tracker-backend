# typed: false
# frozen_string_literal: true

class AppearancesController < ApplicationController
  before_action :set_appearance, only: %i[show update destroy]

  def index
    episode_id = params[:episode_id]
    searched_appearances =
      if episode_id.present?
        Episode.find(episode_id).appearances.ransack(search_params[:q])
      else
        Appearance.ransack(search_params[:q])
      end
    searched_appearances.sorts = "created_at desc"
    appearances = searched_appearances.result.includes(:host)
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

  def search_params
    params.permit(q: %i[episode_id_eq host_id_eq])
  end
end
