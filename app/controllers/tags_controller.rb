class TagsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @tag = Tag.find(params[:id])
  end
end
