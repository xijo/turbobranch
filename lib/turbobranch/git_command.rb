# encoding: utf-8

module Turbobranch
  class GitCommand
    class FailedError < ::Turbobranch::Error; end

    def self.execute(command)
      output = `#{command}`
      if $?.success?
        puts "#{Term::ANSIColor.green '✓'} #{command}"
        Turbobranch.verbose? and STDOUT.puts(output)
      else
        puts "#{Term::ANSIColor.red '-'} #{command}"
        Turbobranch.verbose? and STDOUT.puts(output)
        raise Turbobranch::GitCommand::FailedError
      end
    end
  end
end
