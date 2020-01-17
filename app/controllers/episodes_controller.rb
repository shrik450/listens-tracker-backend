# frozen_string_literal: true

class EpisodesController < ApplicationController
  before_action :set_episode, only: %i[show update destroy]

  def index
    feed_id = params[:feed_id].presence
    episodes =
      if feed_id.present?
        Episode.for_feed(feed_id)
      else
        Episode.all
      end
    page_number = search_params[:page_number] || 1
    page_size = search_params[:page_size] || 25
    searched_episodes = episodes.ransack(search_params[:q].try(:merge, m: "or"))
    searched_episodes.sorts = "air_date desc"
    paged_episodes = searched_episodes.result.includes(:plays).page(page_number).per(page_size)
    meta = {
      total_records: episodes.count,
      total_pages:   paged_episodes.total_pages,
      current_page:  page_number
    }
    render json: EpisodeSerializer.new(paged_episodes).serializable_hash.merge(meta: meta), status: :ok
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

  def search_params
    params.permit(:page_number, :page_size, q: %i[number_cont name_cont show_notes_cont])
  end
end
