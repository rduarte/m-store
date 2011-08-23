class PagesController < ApplicationController
  def index
    begin
      @page = Page.find(params[:all])
    rescue ActiveRecord::RecordNotFound
      render :file => "#{RAILS_ROOT}/public/404.html", :status => 404, :layout => nil
    end
    
  end

end
