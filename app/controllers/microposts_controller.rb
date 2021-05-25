class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def create

  end

  def destroy

  end
end
