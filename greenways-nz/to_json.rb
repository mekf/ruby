# converting a list of locations to json

source      = File.open('locations')
destination = File.open('locations.json', 'w')

lines = source.readlines

# for i in 0...lines.length
#   puts "#{i} :" + lines[i]
# end