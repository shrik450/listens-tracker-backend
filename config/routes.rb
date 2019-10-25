# frozen_string_literal: true

Rails.application.routes.draw do
  get "episodes/index"

  get "episodes/show"

  get "episodes/create"

  get "episodes/update"

  get "episodes/destroy"
end
