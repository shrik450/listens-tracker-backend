# typed: false
# frozen_string_literal: true

class FeedsController < ApplicationController
  before_action :set_feed, only: %i[show update destroy sync]

  def index
    _search_params = params[:q].presence
    feeds = Feed.all
    render json: FeedSerializer.new(feeds), status: :ok
  end

  def show
    render json: FeedSerializer.new(@feed), status: :ok
  end

  def create
    feed = Feed.new(feed_params)
    if feed.save
      render json: FeedSerializer.new(feed), status: :created
    else
      render json: {errors: feed.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @feed.update(feed_params)
      render json: FeedSerializer.new(@feed), status: :ok
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @feed.destroy
    if @feed.destroyed?
      render json: {notice: "Success"}, status: :ok
    else
      render json: {notice: "Failed"}, status: :unprocessable_entity
    end
  end

  def sync
    SyncFeedsJob.perform_later(feed_id: @feed.id)
    render json: {}, status: :ok
  end

  private

  def set_feed
    @feed = Feed.find(params[:id])
  end

  def feed_params
    params.permit(:name)
  end
end
