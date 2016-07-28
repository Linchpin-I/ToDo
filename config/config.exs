# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_todos_api,
  ecto_repos: [PhoenixTodosApi.Repo]

# Configures the endpoint
config :phoenix_todos_api, PhoenixTodosApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "q5WkE2/2pJK7pqv82X4HRICyfzAjxN2btrArbZqRjGpnf52XuVXEV/dFwF37dvpM",
  render_errors: [view: PhoenixTodosApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixTodosApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
