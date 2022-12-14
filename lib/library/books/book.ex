defmodule Library.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :author, :string
    field :name, :string
    field :image, :string
    field :stock, :integer

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:name, :author, :image, :stock])
    |> validate_required([:name, :author, :image, :stock])
  end
end
