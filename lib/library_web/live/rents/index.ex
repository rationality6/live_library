defmodule LibraryWeb.Rents.Index do
  use LibraryWeb, :live_view

  alias Library.Books.Book
  alias Library.Repo

  def render(assigns) do
    ~L"""
    <div>
      <h2>rents</h2>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, default: 0)}
  end

end
