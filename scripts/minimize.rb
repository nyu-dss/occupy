# This script will look for source images
# in a given @start_dir directory.
# It will copy them to @target_dir &
# resize them down to 5000px if necessary.
# Otherwise it will copy them over as is to@target_dir

require 'fileutils'
require 'vips'

@start_dir   = "source/_data/images"
@target_dir  = "source/_data/resized"

FileUtils.mkdir_p @target_dir

def resize(file, target_dir)
  source    = Vips::Source.new_from_file file
  image     = Vips::Image.new_from_source source, "fail=true"

  if image.width < 5000
    FileUtils.cp file, target_dir
  else
    image   = image.thumbnail_image 5000, height: 10000000
    target  = "#{target_dir}/#{File.basename file}"

    return if File.exist? target

    puts "resizing #{file} to #{image.width}px, saving to #{target}"
    image.write_to_file target
  end
end

files = Dir.glob("#{@start_dir}/*").select { |f| File.file? f }
dirs  = Dir.glob("#{@start_dir}/*").select { |f| File.directory? f }

files.each { |f| resize(f, @target_dir) }
dirs.each do |d|
  dir = "#{@target_dir}/#{File.basename d}"
  FileUtils.mkdir_p dir
  Dir.glob("#{d}/*").each do |f|
    resize(f, dir)
  end
end
