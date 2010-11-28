class ApotomoWidget < Apotomo::Widget
  responds_to_event :update, :with => :update
  def display
    render
  end

  def update
    # TODO render :json doesent work - requests template
    # TODO using :callback param when rendering text doesent work
    text = params[:callback] + '(' + PostLink.all.to_json + ')'
    render :text => text, :content_type => 'application/json'
  end

end
