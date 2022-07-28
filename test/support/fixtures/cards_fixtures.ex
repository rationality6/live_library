defmodule Library.CardsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Library.Cards` context.
  """

  @doc """
  Generate a card.
  """
  def card_fixture(attrs \\ %{}) do
    {:ok, card} =
      attrs
      |> Enum.into(%{
        contents: "some contents",
        title: "some title"
      })
      |> Library.Cards.create_card()

    card
  end
end
