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

def fetch_article_details(url)
  page = Nokogiri::HTML(RestClient.get(url)) if valid_url?(url)
  details = {
    title:        get_title(page),
    description:  get_description(page)
  } if page
end

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

page_url_1 = 'http://www.economist.com/blogs/democracyinamerica/2013/06/surveillance-0'
page_url_2 = 'http://www.bbc.co.uk/news/world-us-canada-22883078'
page_url_3 = 'http://www.reuters.com/article/2013/06/12/us-google-nsa-transparency-request-idUSBRE95A11820130612'
page_url_4 = 'safg.sfwofjowag.fdsafasdf.fdsafads'

p fetch_article_details(page_url_1)
p fetch_article_details(page_url_2)
p fetch_article_details(page_url_3)
p fetch_article_details(page_url_4)