require 'csv'

def file_to_excluded
  ["spec_helper.rb"]
end

def execute_file?(file)
  file_to_excluded.each{|excluded| return true if file.split('/').include?(excluded)}
  return false
end

CSV.open(Dir::pwd + "/spec/posts/posts_test_1.csv", "wb") do |csv|
  csv << ["title", "body", "author", "created_at"]
end

Dir[Dir::pwd + "/spec/**/*.rb"].each do |file|
  next if execute_file?(file)
  require(file)
end

