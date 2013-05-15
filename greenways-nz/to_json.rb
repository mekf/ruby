# converting a list of locations to json

# Bhana Brothers Fruiterers
# 129 Ponsonby Road, Ponsonby
# Auckland
# 09 3765329

source = File.open('locations')
target = File.open('locations.json', 'w')

lines = source.readlines

# for i in 0...lines.length
#   puts "#{i} :" + lines[i]
# end

1.times do
  i = 0
  target.write("{")
  target.write("\n\t" + '"name":'    + "\s\"#{lines[i].strip}\",")
  target.write("\n\t" + '"address":' + "\s\"#{lines[i + 1].strip}\",")
  target.write("\n\t" + '"city":'    + "\s\"#{lines[i + 2].strip}\",")
  target.write("\n\t" + '"phone":'   + "\s\"#{lines[i + 3].strip}\"")
  target.write("\n},")
end

source.close
target.close