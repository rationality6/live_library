defmodule Library.Cards.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :contents, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:title, :contents])
    |> validate_required([:title, :contents])
  end
end
