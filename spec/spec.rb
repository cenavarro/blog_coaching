module Spec
  class << self
    def execute_file?(file)
      file_to_excluded.each{|excluded| return true if file.split('/').include?(excluded)}
      return false
    end

    def file_to_excluded
      ["spec_helper.rb"]
    end
  end
end

Dir[Dir::pwd + "/spec/**/*.rb"].each do |file|
  next if Spec.execute_file?(file)
  require(file)
end
