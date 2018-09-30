# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rexmakesumakestuff,
  ecto_repos: [Rexmakesumakestuff.Repo]

# Configures the endpoint
config :rexmakesumakestuff, RexmakesumakestuffWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Rr3hjhMbzsv6rrJ8uX+zoQf7j3MKYdKl5wR43dpxbVVLrNbBEpPnMYh1xjQOrO/o",
  render_errors: [view: RexmakesumakestuffWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rexmakesumakestuff.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
