defmodule Library.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :title, :string
      add :contents, :string

      timestamps()
    end
  end
end
