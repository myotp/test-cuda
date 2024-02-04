import Config

config :test_cuda, :test_user, "Jia"

config :nx, :default_backend, EXLA.Backend

# https://hexdocs.pm/exla/EXLA.html#module-clients
config :exla, :default_client, :cuda
