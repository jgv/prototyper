require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'

$:.unshift File.dirname(__FILE__) + '/../../lib'
require 'prototyper'

class TestPrototyper < MiniTest::Unit::TestCase

  def setup
    Prototyper.generate("minitest")
  end

  def teardown
    FileUtils.rm_rf("minitest")
  end

  def test_that_it_creates_a_project
    assert Dir.exists?("minitest")
  end

  def test_that_it_creates_subdirs
    assert Dir.exists?("minitest/assets")
    assert Dir.exists?("minitest/views")
  end


  def test_that_it_creates_appropriate_files
    all_files = `find minitest`.split("\n").map { |f| File.basename(f, ".*") }
    %w(app
    assets
    javascripts
    application
    html5shiv
    stylesheets
    application
    config
    Gemfile
    Procfile
    views
    index).each do |file|
      assert all_files.include?(file)
    end
  end

end
