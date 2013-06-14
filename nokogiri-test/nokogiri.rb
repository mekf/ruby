require 'nokogiri'
require 'restclient'
require 'uri'

def valid_url?(url)
  valid = begin
    URI.parse(url).kind_of?(URI::HTTP)
  rescue URI::InvalidURIError
    false
  end
end

page_url_1 = 'http://www.economist.com/blogs/democracyinamerica/2013/06/surveillance-0'
page_url_2 = 'http://www.bbc.co.uk/news/world-us-canada-22883078'
page_url_3 = 'http://www.reuters.com/article/2013/06/12/us-google-nsa-transparency-request-idUSBRE95A11820130612'
page_url_4 = 'safg.sfwofjowag.fdsafasdf.fdsafads'

page_1 = Nokogiri::HTML(RestClient.get(page_url_1))
page_2 = Nokogiri::HTML(RestClient.get(page_url_2))
page_3 = Nokogiri::HTML(RestClient.get(page_url_3))
page_4 = Nokogiri::HTML(RestClient.get(page_url_4)) if valid_url?(page_url_4)

def get_title(page)
  unless page == nil
    og_title_meta = page.xpath("//meta[@property='og:title']")
    og_title_meta[0]['content']
  end
end

def get_description(page)
  unless page == nil
    og_description_meta = page.xpath("//meta[@property='og:description']")
    if og_description_meta.size != 0
      og_description_meta[0]['content']
    else
      page.xpath("//meta[@name='description' or @name='Description']")[0]['content']
    end
  end
end

p get_title(page_1)
p get_description(page_1)

p ""
p get_title(page_2)
p get_description(page_2)

p ""
p get_title(page_3)
p get_description(page_3)

p ""
p get_title(page_4)
p get_description(page_4)