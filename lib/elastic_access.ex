defmodule ElasticAccess do
  @moduledoc """
  Documentation for `ElasticAccess`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElasticAccess.hello()
      :world

  """
  def start do
    Finch.build(:get, "http://localhost:9200/booklist/_search") 
    |> Finch.request(:finch)
    |> IO.inspect()
  end
end
