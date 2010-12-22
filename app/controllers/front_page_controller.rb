class FrontPageController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:apotomo_widget, 'apotomo_widget', :display)
  end

  def index
    render :layout => 'widget_example'
  end

  def refresh_css
  end

end
