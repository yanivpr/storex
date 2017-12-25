defmodule Storex.Sales.Cart do
  use Ecto.Schema
  import Ecto.Changeset
  alias Storex.Sales.Cart


  schema "sales_cart" do
    has_many :line_items, Storex.Sales.LineItem
    timestamps()
  end

  @doc false
  def changeset(%Cart{} = cart, attrs) do
    cart
    |> cast(attrs, [])
    |> validate_required([])
  end
end
