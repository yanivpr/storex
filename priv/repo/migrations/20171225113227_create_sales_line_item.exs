defmodule Storex.Repo.Migrations.CreateSalesLineItem do
  use Ecto.Migration

  def change do
    create table(:sales_line_item) do
      add :quantity, :integer, default: 0
      add :book_id, references(:store_books, on_delete: :nothing)
      add :cart_id, references(:sales_carts, on_delete: :nothing)

      timestamps()
    end

    create index(:sales_line_item, [:book_id])
    create index(:sales_line_item, [:cart_id])
  end
end