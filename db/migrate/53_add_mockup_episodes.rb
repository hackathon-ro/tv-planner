require 'nokogiri'
require 'open-uri'

class AddMockupEpisodes < ActiveRecord::Migration
	def up

    Serie.all.each do |sr|

      doc = Nokogiri::HTML(open('http://services.tvrage.com/feeds/episode_list.php?sid=' + sr.show_id.to_s));

      doc.xpath('//episode').each do |item|
        puts item.inspect
        sr.add_episode(item.xpath('title').text,
                       item.xpath('airdate').text,
                       item.xpath('seasonnum').text,
                       item.parent.xpath('@no').text,
                       true)
      end
  	end
  end
end