# encoding: utf-8
require 'rubygems'
require 'open-uri'
namespace :apotomo do
  desc "Checks Xpaths For All Sources"
  task :get_links => :environment do
    rss_data = Nokogiri::XML(open("http://feeds.feedburner.com/Apotomo?format=xml", :proxy => nil),nil,'UTF-8')
    rss_data.search('entry').each do |entry|
      title = nil
      url = nil
      entry.elements.each do |element|
          title = element.text if element.name == "title"
          url = element.attributes["href"].text if element.name == "link"
      end
      PostLink.create :title => title, :url => url
    end
  end
end