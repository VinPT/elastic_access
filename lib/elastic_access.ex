defmodule ElasticAccess do
  use Application
  @moduledoc """
  Documentation for `ElasticAccess`.
  """

  def start(_type, _args) do
    IO.puts "starting"
    # some more stuff
    #hello()
  end




  @doc """
  Hello world.

  ## Examples

      iex> ElasticAccess.hello()
      :world

  """
  def hello do
    Finch.build(:get, "https://hex.pm") 
    |> Finch.request("MyFinch")
  end
end
