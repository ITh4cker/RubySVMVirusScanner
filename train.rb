#!/usr/bin/env ruby
#
# This file is used to product the 'rvs.model' file.
#
#

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require "rvscore"

class RVSTrainCLI < RVSCore
  attr_accessor :argv

  def initialize(argv=ARGV)
    @argv = argv
  end

  def run
    optparser = OptionParser.new do |opts|
      opts.banner = 'Usage: train [options]'
      opts.on '--version','Print version information and exit' do
        puts '0.0.0.1'
        exit
      end

      opts.on '--train','Train on specified ' do

      end

    end

    if (@argv = optparser.parse(@argv)).empty?
      puts optparser.help
      return
    end
  end
end
