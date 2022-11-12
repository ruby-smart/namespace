# frozen_string_literal: true

RSpec.describe RubySmart::Namespace do
  describe '.version' do
    it "returns a gem version" do
      expect(RubySmart::Namespace.version).to be_a Gem::Version
    end

    it "has a version number" do
      expect(RubySmart::Namespace.version.to_s).to eq RubySmart::Namespace::VERSION::STRING
    end

    it "returns a version string" do
      expect(RubySmart::Namespace::VERSION.to_s).to eq RubySmart::Namespace::VERSION::STRING
    end
  end
end
