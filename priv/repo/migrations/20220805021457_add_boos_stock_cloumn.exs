defmodule Library.Repo.Migrations.AddBoosStockCloumn do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :stock, :integer
    end
  end
end
