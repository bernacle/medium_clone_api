# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :medium_clone_api,
  ecto_repos: [MediumCloneApi.Repo]

# Configures the endpoint
config :medium_clone_api, MediumCloneApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LyGZrYnRMjLXQvz+IjRGLep/mcNO4RqMFlBIs/vQNPa0wSnu0AYfsday8F2XghL/",
  render_errors: [view: MediumCloneApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MediumCloneApi.PubSub,
  live_view: [signing_salt: "hJS8cB1v"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian Config
config :medium_clone_api, MediumCloneApi.Guardian,
  issuer: "medium_clone_api",
  secret_key: "19M08RtucmcEohiRGLShTtwzX+3+/P5vk0JjUYaa4Z4vTB6FUMFzZBJw13wuor20"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
