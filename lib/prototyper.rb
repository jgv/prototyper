require 'fileutils'
require File.join(File.dirname(__FILE__), 'templates', 'sinatra', 'generator')

module Prototyper
  class << self

    def generate(name)
      files = SinatraGenerator.generate
      FileUtils.mkdir(name)
      files.each do |path, contents|
        path = name + "/" + path
        FileUtils.mkdir_p(File.dirname(path))
        File.open(path, 'a') do |file|
          file.puts(contents)
        end
      end
      puts "done! just type 'cd #{name}' and start your server!"
    end

  end
end
