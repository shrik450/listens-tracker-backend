class EpisodesController < ApplicationController
  before_action :set_episode, only: %i[show update destroy]

  def index
    _search_params = params[:q].presence
    episodes = Episode.all
    render json: EpisodeSerialize.new(episodes), status: :ok
  end

  def show
    render json: EpisodeSerializer.new(@episode), status: :ok
  end

  def create
    episode = Episode.new(episode_params)
    if episode.save
      render json: EpisodeSerializer.new(episode), status: :created
    else
      render json: {errors: episode.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @episode.update(episode_params)
      render json: EpisodeSerializer.new(@episode), status: :ok
    else
      render json: @episode.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @episode.destroy
    if @episode.destroyed?
      render json: {notice: "Success"}, status: :ok
    else
      render json: {notice: "Failed"}, status: :unprocessable_entity
    end
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.permit(:number, :name, :show_notes, :comments, :air_date, :feed)
  end
end
