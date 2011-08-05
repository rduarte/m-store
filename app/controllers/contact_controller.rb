class ContactController < ApplicationController
  def index
    set_meta_tags :title => t("titles.contact"),
                  :description => "",
                  :keywords => ""
    breadcrumbs.add "titles.contact"
  end

end
