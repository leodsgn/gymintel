# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#main"
  devise_for :users
end
