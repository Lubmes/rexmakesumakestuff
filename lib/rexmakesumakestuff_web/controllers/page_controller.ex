defmodule RexmakesumakestuffWeb.PageController do
  use RexmakesumakestuffWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
