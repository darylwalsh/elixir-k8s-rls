# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reactolatry,
  ecto_repos: [Reactolatry.Repo]

# Configures the endpoint
config :reactolatry, ReactolatryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lrBt9DUyUKKWew4hfsBGuAS1HCQ67dGmkIr8/nTT34lsFjAQxRskRF8aDpJsjAHC",
  render_errors: [view: ReactolatryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Reactolatry.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
