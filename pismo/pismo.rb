require 'pismo'

doc_1 = Pismo::Document.new('http://www.bbc.co.uk/news/business-22931899')
doc_2 = Pismo::Document.new(File.open('stub/business-22931899.html'))

def parse_detaiils(page)
  p 'title: '     + page.title
  p 'desc: '      + page.description
  p 'lede: '      + page.lede
  p 'body: '      + page.body
  p 'html_body: ' + page.html_body
  p 'sentences: ' + page.sentences(3)
  # p 'keywords: '  + page.keywords

  # Stuffs that are likely not available
  # p 'author: '    + page.author if page.author
  # p 'authors: '   + page.authors

  # p 'feed: '      + page.feed
  # p 'feeds: '     + page.feeds
end

parse_detaiils(doc_1)
3.times {  p '#'  }
parse_detaiils(doc_2)