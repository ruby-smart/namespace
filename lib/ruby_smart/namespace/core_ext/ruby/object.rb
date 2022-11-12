# frozen_string_literal: true

require "ruby_smart/namespace/base"

# patches the Object class to directly access the namespace
class Object
  # returns a new namespace object which can be used to resolve namespace-related modules
  # @return [::RubySmart::Namespace::Base] namespace
  def namespace
    ::RubySmart::Namespace::Base.new(self)
  end
end