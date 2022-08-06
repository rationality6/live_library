defmodule Library.Books do
  @moduledoc """
  The Books context.
  """

  import Ecto.Query, warn: false

  alias Library.Repo
  alias Library.Books.Book

  @doc """
  Returns the list of books.
  """
  def list_books do
    Repo.all(Book)
  end
end
