import Config

config :test_cuda, :test_user, "Jia"

config :nx, :default_backend, EXLA.Backend
config :nx, :default_defn_options, compiler: EXLA

# https://hexdocs.pm/exla/EXLA.html#module-clients
config :exla, :default_client, :cuda

config :exla, :clients,
  host: [platform: :host],
  cuda: [platform: :cuda]
