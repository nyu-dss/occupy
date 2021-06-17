require 'vips'

start_dir   = "_data/images"
target_dir  = "_data/new"

Dir.glob("#{start_dir}/*").each do |file|
  source    = Vips::Source.new_from_file file
  image     = Vips::Image.new_from_source source, "fail=true"

  if image.width > 5000
    image   = image.thumbnail_image 5000, height: 10000000
    target  = "#{target_dir}/#{File.basename(file)}"

    puts "resizing #{file} to #{image.width}px, saving to #{target}"
    image.write_to_file target
  end
end
