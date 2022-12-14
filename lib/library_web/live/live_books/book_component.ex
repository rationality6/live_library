defmodule BookComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="w-32 shrink flex flex-col items-center">
    <img class="h-32 w-24 object-cover border-2 border-black-500" src={@book.image}>

    <div><%= @book.name %></div>
    <div class="text-sm text-slate-400"><%= @book.author %></div>
    </div>
    """
  end
end
