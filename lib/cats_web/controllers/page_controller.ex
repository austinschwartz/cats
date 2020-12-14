defmodule CatsWeb.PageController do
  use CatsWeb, :controller

  def index(conn, _params) do
    {:ok, pets} = Petfinder.Animals.get_animals(%{location: "Seattle, WA", distance: 6, sort: "recent", type: "Cat"})
    IO.inspect pets
    render(conn, "index.html", pets: pets)
  end
end
