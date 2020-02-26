# typed: false
# frozen_string_literal: true

class PlaysController < ApplicationController
  before_action :set_play, only: %i[show update destroy]

  def index
    search_params = params[:q].presence
    searched_plays = Play.ransack(search_params[:q])
    searched_plays.sorts = "played_at desc"
    plays = searched_plays.result
    render json: PlaySerializer.new(plays), status: :ok
  end

  def show
    render json: PlaySerializer.new(@play), status: :ok
  end

  def create
    play = Play.new(play_params)
    if play.save
      render json: PlaySerializer.new(play), status: :created
    else
      render json: {errors: play.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @play.update(play_params)
      render json: PlaySerializer.new(@play), status: :ok
    else
      render json: @play.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @play.destroy
    if @play.destroyed?
      render json: {notice: "Success"}, status: :ok
    else
      render json: {notice: "Failed"}, status: :unprocessable_entity
    end
  end

  private

  def set_play
    @play = Play.find(params[:id])
  end

  def play_params
    params.permit(:played_at, :play_time, :episode_id)
  end

  def search_params
    params.permit(q: %i[episode_id_eq])
  end
end
