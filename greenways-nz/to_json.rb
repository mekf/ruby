# converting a list of locations to json

# Bhana Brothers Fruiterers
# 129 Ponsonby Road, Ponsonby
# Auckland
# 09 3765329
#
# {
#   "name": "Bhana Brothers Fruiterers",
#   "address": "129 Ponsonby Road, Ponsonby",
#   "region": "Auckland",
#   "phone": "09 3765329"
# },

source_file = File.open('locations')
target_file = File.open('locations.json', 'w')

@target = target_file
@target.truncate(0)  # clean the file
@lines  = source_file.readlines

def write_line(num)
  @target.write("\n\t" + '"name":'    + "\s\"#{@lines[num].strip}\",")
  @target.write("\n\t" + '"address":' + "\s\"#{@lines[num + 1].strip}\",")
  @target.write("\n\t" + '"region":'  + "\s\"#{@lines[num + 2].strip}\",")
  @target.write("\n\t" + '"phone":'   + "\s\"#{@lines[num + 3].strip}\"")
end

i = 0
while i < @lines.length
  @target.write("{")
  write_line(i)
  
  if i < @lines.length - 4
    @target.write("\n},\n")
  else
    @target.write("\n}")
  end
  
  i += 4
end

source_file.close
target_file.close