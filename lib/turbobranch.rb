require 'term/ansicolor'

require 'turbobranch/version'
require 'turbobranch/error'
require 'turbobranch/branch'
require 'turbobranch/git_command'

module Turbobranch

  def self.verbose=(value)
    @verbose = value
  end

  def self.verbose?
    @verbose
  end
end
