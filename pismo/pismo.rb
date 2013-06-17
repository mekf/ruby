require 'pismo'

page = Pismo::Document.new('http://www.bbc.co.uk/news/world-us-canada-22945003')

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