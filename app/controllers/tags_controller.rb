class TagsController < ApplicationController
  before_filter :zero_authors_or_authenticated, only: [:destroy]

  def zero_authors_or_authenticated
    unless Author.count == 0 || current_user
    redirect_to root_path
      return false
    end
  end
  def show
  @tag = Tag.find(params[:id])
  end
end
