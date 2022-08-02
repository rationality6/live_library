defmodule LibraryWeb.PageController do
  use LibraryWeb, :controller

  alias Library.Book
  alias Library.Repo

  def index(conn, _params) do
    all_books = Book |> Repo.all()
    render(conn, "index.html", all_books: all_books)
  end
end
