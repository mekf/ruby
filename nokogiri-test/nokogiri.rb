require 'nokogiri'
require 'restclient'

page_url_1 = 'http://www.economist.com/blogs/democracyinamerica/2013/06/surveillance-0'
page_url_2 = 'http://www.bbc.co.uk/news/world-us-canada-22883078'
page_url_3 = 'http://www.reuters.com/article/2013/06/12/us-google-nsa-transparency-request-idUSBRE95A11820130612'

page_1 = Nokogiri::HTML(RestClient.get(page_url_1))
page_2 = Nokogiri::HTML(RestClient.get(page_url_2))
page_3 = Nokogiri::HTML(RestClient.get(page_url_3))

def get_title(page)
  og_title_meta = page.xpath("//meta[@property='og:title']")
  og_title_meta[0]['content']
end

def get_description(page)
  og_description_meta = page.xpath("//meta[@property='og:description']")
  if og_description_meta.size != 0
    og_description_meta[0]['content']
  else
    page.xpath("//meta[@name='description' or @name='Description']")[0]['content']
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