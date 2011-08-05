class SpecialsController < ApplicationController
  def index
    set_meta_tags :title => t("titles.specials"),
                  :description => "",
                  :keywords => ""
    breadcrumbs.add "titles.specials"
  end

end
