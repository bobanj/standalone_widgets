class FrontPageController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:apotomo_widget, 'apotomo_widget', :display)
  end

  def index
  end

end
