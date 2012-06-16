require 'nokogiri'
require 'open-uri'

class AddMockupSerie < ActiveRecord::Migration

	series_ids = [3332,  # Doctor Who
					      18388, # Fringe
                21704, # Glee
                15319  # Californication
               ]

  series_ids.each do |id|

    doc = Nokogiri::HTML(open('http://services.tvrage.com/feeds/showinfo.php?sid=' + id.to_s));
    Serie.new(:name => doc.xpath('//showname').text,
              :show_id => id,
              :status => doc.xpath('//status').text,
              :url => doc.xpath('//showlink').text,
              :last_update => DateTime.now
    ).save()



  end
end
