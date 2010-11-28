class PostLink < ActiveRecord::Base
  # Validations
  validates_presence_of :title, :url
  validates_uniqueness_of :title

  # Overrides
  def as_json(options)
    super(:only => [:title, :url])
  end

end
