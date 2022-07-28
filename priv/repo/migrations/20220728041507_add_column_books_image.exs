defmodule Library.Repo.Migrations.AddColumnBooksImage do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :image, :string
    end
  end
end
