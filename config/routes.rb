# frozen_string_literal: true

Rails.application.routes.draw do
  resources :feeds do
    resources :episodes, only: %i[index create]

    get :sync, on: :member
  end

  resources :episodes
end
