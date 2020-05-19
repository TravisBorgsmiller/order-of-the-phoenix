class SearchController < ApplicationController

  def index
    @members = HpService.new.get_object(params[:house])
  end

end
