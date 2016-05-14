class TagsController < ApplicationController
  def autocomplete
     results = Tag.select("*, name <-> #{ActiveRecord::Base.sanitize(params[:q])} as distance").order('distance').limit(5)
     render json: results
  end
end
