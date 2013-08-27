require 'fileutils'

module Prototyper
  class << self

    def generate(name, opts={})
      dir = FileUtils.mkdir(name)
      FileUtils.cp_r Dir["lib/templates/#{opts[:type].to_s}/*"], dir, :preserve => true, :verbose => true
      puts "done!"
    end

  end
end
