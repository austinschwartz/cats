# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cats,
  ecto_repos: [Cats.Repo]

# Configures the endpoint
config :cats, CatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vuqrluGoT/qow9rXI2592B0ItuI4QYiV/YvUKkAeBwNTz0DPRAOt3kUUs3MVFtcy",
  render_errors: [view: CatsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Cats.PubSub,
  live_view: [signing_salt: "C0J1Banx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :petfinder,
  oauth_client: "SSAhvYdStR5gYCeBIWrKnsKfarZkmKc3qU0cJoDZwmEUcBiqwu",
  oauth_secret: "Won0jrqiLiJIcRNs8WZeTQRNvKiZCizkhjvnmttt",
  base_url: "https://api.petfinder.com"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
