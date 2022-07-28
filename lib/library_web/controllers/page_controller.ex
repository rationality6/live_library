defmodule LibraryWeb.PageController do
  use LibraryWeb, :controller

  alias Library.Book
  alias Library.Repo

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def ecto_test(conn, _params) do
    all_books = Book |> Repo.all()
    username = "foo"
    render(conn, "ecto_test.html", username: username, all_books: all_books)
  end
end
