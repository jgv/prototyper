require 'fileutils'

module Prototyper
  class << self

    def generate(name, opts={ :type => "html" })
      dir = FileUtils.mkdir(name)
      new_dir = "#{Dir.pwd}/#{name}"
      FileUtils.cp_r Dir["#{Dir.pwd}/lib/templates/#{opts[:type].to_s}/*"], new_dir, :preserve => true
      puts "done!"
    end

  end
end
