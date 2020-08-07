defmodule ElasticAccess.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      ElasticAccess.hello(),
      {Finch, name: "MyFinch"}
      # Starts a worker by calling: ElasticAccess.Worker.start_link(arg)
      #ElasticAccess.hello()
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElasticAccess.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
