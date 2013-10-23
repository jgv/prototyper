require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'
require 'pathname'

$:.unshift File.dirname(__FILE__) + '/../../lib'
require 'prototyper'
class TestSinatraApp < MiniTest::Test

  def setup
    Prototyper.generate("test_sinatra", { :type => :sinatra })
  end

  def teardown
    FileUtils.rm_rf("test_sinatra")
  end

  def test_that_it_creates_a_project
    assert Dir.exists?("test_sinatra")
  end

  def test_that_it_creates_subdirs
    assert Dir.exists?("test_sinatra/assets")
    assert Dir.exists?("test_sinatra/views")
  end

  def test_that_it_creates_a_sinatra_app
    all_files = `find test_sinatra`.split("\n").map { |f| File.basename(f, ".*") }
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

class TestHTMLApp < MiniTest::Test

  def setup
    Prototyper.generate("test_html")
  end

  def teardown
#    FileUtils.rm_rf("test_html")
  end

  def test_that_it_creates_a_project
    assert Dir.exists?("test_html")
  end

  def test_that_it_creates_subdirs
    assert Dir.exists?("test_html/assets")
  end

  def test_that_it_creates_necessary_files
    all_files = `find test_html`.split("\n").map { |f| File.basename(f, ".*") }
    %w(index
    assets
    javascripts
    stylesheets
    application).each do |file|
      assert all_files.include?(file)
    end
  end

end
