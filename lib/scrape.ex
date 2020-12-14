defmodule Scrape do

  def base_url() do
    "https://www.petfinder.com/search/?page=1&limit[]=40&status=adoptable&token=Nk8R9-RhPvfywACDxoSm2nVpLAKNhruiKILiLUAXF2A&distance[]=Anywhere&type[]=cats&sort[]=recently_added&shelter_id[]=WA27&include_transportable=true"
  end

  def parse() do
    HTTPoison.get!(base_url())
  end


end
