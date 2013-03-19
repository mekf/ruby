# !/usr/bin/ruby

# Rename filenames of subtitles to match those of videos
# Might need customization

unless ARGV[0] and ARGV[1]
  puts "pass in both filenames"
  exit
end

sub_filename = ARGV[0]
vid_filename = ARGV[1]

unless File.exist?(sub_filename)
  puts "#{sub_filename} does not exist."
  exit
end

unless File.exist?(vid_filename)
  puts "#{vid_filename} does not exist."
  exit
end

sub_basename = File.basename(sub_filename, ".srt")
sub_ext = File.extname(sub_filename)

vid_basename = File.basename(vid_filename, ".mp4")

sub_basename_new = vid_basename
sub_filename_new = sub_basename_new + sub_ext

File.rename(sub_filename, sub_filename_new)