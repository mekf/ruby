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

def write_lines_of_entry(num)
  @target.write("\n\t\t\t" + '"name":'    + "\s\"#{@lines[num].strip}\",")
  @target.write("\n\t\t\t" + '"address":' + "\s\"#{@lines[num + 1].strip}\",")
  @target.write("\n\t\t\t" + '"region":'  + "\s\"#{@lines[num + 2].strip}\",")
  @target.write("\n\t\t\t" + '"phone":'   + "\s\"#{@lines[num + 3].strip}\"")
end

def write_entries
  i = 0
  while i < @lines.length
    @target.write("\t\t{")
    write_lines_of_entry(i)
    (i < @lines.length - 4) ? @target.write("\n\t\t},\n") : @target.write("\n\t\t}")
    i += 4
  end
end

def write_outline
  @target.write("{" + "\n")
  @target.write("\t\"locations\":\s")
  @target.write("[" + "\n")
  write_entries
  @target.write("\n\t]")
  @target.write("\n}")
end

write_outline
source_file.close
target_file.close