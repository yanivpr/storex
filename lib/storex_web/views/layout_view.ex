defmodule StorexWeb.LayoutView do
  use StorexWeb, :view
  import StorexWeb.Helpers.PriceFormatter
  
  def items_count(conn) do
    StorexWeb.Plugs.ItemsCount.get(conn)
  end

  def items_price(conn) do
    StorexWeb.Plugs.ItemsPrice.get(conn)
  end
end
