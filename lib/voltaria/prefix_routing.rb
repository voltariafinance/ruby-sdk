# frozen_string_literal: true

# Hand-written prefix-routing wrapper around the Fern-generated SDK.
#
# The generated client is `Voltaria::Client.new(token:, base_url:)`. This file
# re-opens the `Voltaria` module to add a convenience factory that derives the
# base URL from the API key prefix:
#
#   "live_"    -> Voltaria::Environment::PRODUCTION
#   "sandbox_" -> Voltaria::Environment::SANDBOX
#   unknown / empty -> raises Voltaria::InvalidApiKeyError
#
# An explicitly supplied :environment or :base_url ALWAYS overrides prefix
# routing.
#
# This file is hand-written and must be listed in .fernignore so the generator
# does not overwrite it.
#
# Consumers can opt in with a single require, which also loads the generated SDK:
#
#   require "voltaria/prefix_routing"
#   client = Voltaria.new("live_abc123")

require_relative "../voltaria"

module Voltaria
  # Raised when the API key prefix cannot be mapped to a known environment and
  # no explicit environment / base_url was provided.
  class InvalidApiKeyError < StandardError
    def initialize(message = "API key must start with 'live_' or 'sandbox_', " \
                             "or an explicit :environment / :base_url must be supplied")
      super
    end
  end

  # Prefix -> environment base URL mapping.
  API_KEY_ENVIRONMENTS = {
    "live_" => Voltaria::Environment::PRODUCTION,
    "sandbox_" => Voltaria::Environment::SANDBOX
  }.freeze

  class << self
    # Construct a Voltaria::Client, resolving the base URL from the API key
    # prefix unless an explicit environment / base_url is given.
    #
    # @param api_key [String] the API key (e.g. "live_abc", "sandbox_abc")
    # @param environment [String, nil] explicit base URL; overrides prefix routing
    # @param base_url [String, nil] explicit base URL; overrides prefix routing
    # @param options [Hash] forwarded to Voltaria::Client.new
    #
    # @return [Voltaria::Client]
    def new(api_key, environment: nil, base_url: nil, **)
      resolved = resolve_environment(api_key, environment: environment, base_url: base_url)
      Voltaria::Client.new(token: api_key, base_url: base_url || resolved, **)
    end

    # Resolve the base URL to use.
    #
    # Mirrors the reference behavior exactly:
    #   - explicit environment wins
    #   - explicit base_url defers resolution to the caller (returns nil here)
    #   - otherwise derive from the api_key prefix
    #   - unknown / empty prefix raises InvalidApiKeyError
    #
    # @param api_key [String]
    # @param environment [String, nil]
    # @param base_url [String, nil]
    #
    # @return [String, nil]
    def resolve_environment(api_key, environment: nil, base_url: nil)
      return environment if environment
      return nil if base_url

      prefix = API_KEY_ENVIRONMENTS.keys.find { |p| api_key.to_s.start_with?(p) }
      raise InvalidApiKeyError unless prefix

      API_KEY_ENVIRONMENTS.fetch(prefix)
    end
  end
end
