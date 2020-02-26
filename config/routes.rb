# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  resources :feeds do
    resources :episodes, only: %i[index create]

    get :sync, on: :member
  end

  resources :episodes do
    resources :appearances, only: %i[index create]
  end

  resources :appearances, only: %i[destroy]

  resources :hosts
end
