class PagesController < ApplicationController
  def about
    render template: "pages/about"
  end
end
