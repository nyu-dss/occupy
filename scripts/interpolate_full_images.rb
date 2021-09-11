# This script temporarily patches a wax bug
# that doesn't add full image paths to metadata file
# if they already exist / aren't being created.
#
# Needs to be run with `bundle exec ruby scripts/interpolate_full_images.rb`

require 'fileutils'
require 'wax_tasks'

METADATA_FILE = './source/_data/occupy.csv'
metadata = WaxTasks::Utils.ingest METADATA_FILE

def csv_string(records)
  keys = records.flat_map(&:keys).uniq
  CSV.generate do |csv|
    csv << keys
    records.each do |r|
      csv << keys.map { |k| r.hash.fetch(k, '') }
    end
  end
end

metadata.map! do |meta|
  WaxTasks::Record.new(meta).tap do |r|
    thumb = r.hash.dig 'thumbnail'
    return if thumb.nil?

    fullpath = thumb.gsub '250', '1140'
    r.set 'full', fullpath
  end
end

reformatted = csv_string metadata.sort_by(&:order)
puts "Overwritting #{METADATA_FILE} with full 1140px width image paths"
File.open(METADATA_FILE, 'w') { |f| f.puts reformatted }
