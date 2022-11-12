# frozen_string_literal: true

require_relative 'gem_version'

module RubySmart
  module Namespace
    # Returns the version of the currently loaded Gem as a <tt>Gem::Version</tt>
    def self.version
      gem_version
    end
  end
end