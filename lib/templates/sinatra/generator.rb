module SinatraGenerator

  attr_accessor :files

  def self.generate
    @files = {}
    `find #{File.dirname(__FILE__)}`.split("\n").each do |path|
      next if File.basename(path, ".*") == "generator"
      @files[path.split('sinatra').last[1..-1]] = File.read(path) if not File.directory?(path)
    end
    return @files
  end

end
