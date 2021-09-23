# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :boopagram,
  ecto_repos: [Boopagram.Repo]

# Configures the endpoint
config :boopagram, BoopagramWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "E7zMrYEFK8Cv6r3iwfc3zozQQP64cxLspcz3Og7yMua3LzRyhB+tN+aVeoG/RyAQ",
  render_errors: [view: BoopagramWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Boopagram.PubSub,
  live_view: [signing_salt: "+sQ14fBY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
