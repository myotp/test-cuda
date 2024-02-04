defmodule TestCuda.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    IO.inspect(Application.get_env(:test_cuda, :test_user), label: "Test User")

    children = [
      # Starts a worker by calling: TestCuda.Worker.start_link(arg)
      # {TestCuda.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TestCuda.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
