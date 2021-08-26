defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna),
    do:
      dna
      |> to_string()
      |> String.graphemes()
      |> Enum.map(& translate(&1))
      |> Enum.join()
      |> to_charlist()

  defp translate(nuclotide) do
    case nuclotide do
      "G" -> "C"
      "C" -> "G"
      "T" -> "A"
      "A" -> "U"
    end
  end
end
