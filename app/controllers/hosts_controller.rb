# typed: true
# frozen_string_literal: true

class HostsController < ApplicationController
  before_action :set_host, only: %i[show update destroy]

  def index
    _search_params = params[:q].presence
    hosts = Host.all
    render json: HostSerializer.new(hosts), status: :ok
  end

  def show
    render json: HostSerializer.new(@host), status: :ok
  end

  def create
    host = Host.new(host_params)
    if host.save
      render json: HostSerializer.new(host), status: :created
    else
      render json: {errors: host.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @host.update(host_params)
      render json: HostSerializer.new(@host), status: :ok
    else
      render json: @host.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @host.destroy
    if @host.destroyed?
      render json: {notice: "Success"}, status: :ok
    else
      render json: {notice: "Failed"}, status: :unprocessable_entity
    end
  end

  private

  def set_host
    @host = Host.find(params[:id])
  end

  def host_params
    params.permit(:name)
  end
end
