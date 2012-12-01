module Turbobranch
  class Branch
    attr_accessor :name

    def self.current
      `git branch` =~ /\* (.*)/
      Branch.new($1.to_s)
    end

    def initialize(name)
      self.name = name.to_sym
    end

    def master?
      name.to_sym == :master
    end
  end
end
