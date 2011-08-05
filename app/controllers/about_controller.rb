class AboutController < ApplicationController
  def index
    breadcrumbs.add "titles.about"
  end

end
