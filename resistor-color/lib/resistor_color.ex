defmodule ResistorColor do
  @colors ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  @moduledoc false

  @spec colors() :: list(String.t())
  def colors, do: @colors

  @spec code(String.t()) :: integer()
  def code(color) do
    @colors
    |> Enum.find_index(&(color == &1))
  end
end
