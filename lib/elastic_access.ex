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
    |> parse_body()    
  end

  defp parse_body({:ok, data}) do
    %{body: body_data} = data
    
    Jason.decode!(body_data)
    |>IO.inspect()
  end
end
