# This script temporarily patches a wax bug
# that doesn't add full image paths to metadata file
# if they already exist / aren't being created.
#
# Needs to be run with `bundle exec ruby scripts/interpolate_full_images.rb`

require 'fileutils'
require 'wax_tasks'

METADATA_FILE = './_data/occupy.csv'
metadata = WaxTasks::Utils.ingest METADATA_FILE

metadata.each_with_index.map do |meta, i|
  WaxTasks::Record.new(meta).tap do |r|
    thumb = r.hash.dig 'thumbnail'
    return if thumb.nil?

    fullpath = thumb.gsub '250', '1140'
    r.set 'full', fullpath
  end
end

  # reformatted = case File.extname @metadata_source
  #                     when '.csv'
  #                       csv_string records
  #                     when '.json'
  #                       json_string records
  #                     when /\.ya?ml/
  #                       yaml_string records
  #                     end
  #       File.open(@metadata_source, 'w') { |f| f.puts reformatted }
