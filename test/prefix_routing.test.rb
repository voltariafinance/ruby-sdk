# frozen_string_literal: true

# Tests for the hand-written prefix-routing wrapper (lib/voltaria/prefix_routing.rb).
#
# Run via: bundle exec rake customtest
# (the customtest task globs test/*.test.rb)

require "minitest/autorun"
require_relative "test_helper"
require_relative "../lib/voltaria/prefix_routing"

# Pull the resolved base_url back off a constructed client so we can assert that
# Voltaria.new wired the right environment into the underlying raw client.
def resolved_base_url(client)
  client.instance_variable_get(:@raw_client).base_url
end

describe "Voltaria.resolve_environment" do
  it "maps the live_ prefix to production" do
    assert_equal Voltaria::Environment::PRODUCTION,
                 Voltaria.resolve_environment("live_abc123")
  end

  it "maps the sandbox_ prefix to sandbox" do
    assert_equal Voltaria::Environment::SANDBOX,
                 Voltaria.resolve_environment("sandbox_abc123")
  end

  it "raises InvalidApiKeyError for an unknown prefix" do
    assert_raises(Voltaria::InvalidApiKeyError) do
      Voltaria.resolve_environment("test_abc123")
    end
  end

  it "raises InvalidApiKeyError for an empty key" do
    assert_raises(Voltaria::InvalidApiKeyError) do
      Voltaria.resolve_environment("")
    end
  end

  it "raises InvalidApiKeyError for a nil key" do
    assert_raises(Voltaria::InvalidApiKeyError) do
      Voltaria.resolve_environment(nil)
    end
  end

  it "lets an explicit environment override prefix routing" do
    assert_equal "https://custom.example.com",
                 Voltaria.resolve_environment("live_abc123", environment: "https://custom.example.com")
  end

  it "defers to an explicit base_url (returns nil) even with a bad key" do
    assert_nil Voltaria.resolve_environment("garbage", base_url: "https://custom.example.com")
  end

  it "prefers an explicit environment over an explicit base_url" do
    assert_equal "https://env.example.com",
                 Voltaria.resolve_environment(
                   "garbage",
                   environment: "https://env.example.com",
                   base_url: "https://base.example.com"
                 )
  end
end

describe "Voltaria.new" do
  it "routes a live_ key to the production base url" do
    client = Voltaria.new("live_abc123")

    assert_instance_of Voltaria::Client, client
    assert_equal Voltaria::Environment::PRODUCTION, resolved_base_url(client)
  end

  it "routes a sandbox_ key to the sandbox base url" do
    client = Voltaria.new("sandbox_abc123")

    assert_equal Voltaria::Environment::SANDBOX, resolved_base_url(client)
  end

  it "raises InvalidApiKeyError for an unknown prefix" do
    assert_raises(Voltaria::InvalidApiKeyError) { Voltaria.new("test_abc123") }
  end

  it "raises InvalidApiKeyError for an empty key" do
    assert_raises(Voltaria::InvalidApiKeyError) { Voltaria.new("") }
  end

  it "honours an explicit base_url override" do
    client = Voltaria.new("live_abc123", base_url: "https://custom.example.com")

    assert_equal "https://custom.example.com", resolved_base_url(client)
  end

  it "honours an explicit base_url override even with an invalid key" do
    client = Voltaria.new("garbage", base_url: "https://custom.example.com")

    assert_equal "https://custom.example.com", resolved_base_url(client)
  end

  it "honours an explicit environment override" do
    client = Voltaria.new("sandbox_abc123", environment: Voltaria::Environment::PRODUCTION)

    assert_equal Voltaria::Environment::PRODUCTION, resolved_base_url(client)
  end
end
