class AboutController < ApplicationController
  def index
    set_meta_tags :title => t("titles.about"),
                  :description => "",
                  :keywords => ""

    breadcrumbs.add "titles.about"
  end

end
