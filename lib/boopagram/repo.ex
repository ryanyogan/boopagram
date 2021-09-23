defmodule Boopagram.Repo do
  use Ecto.Repo,
    otp_app: :boopagram,
    adapter: Ecto.Adapters.Postgres
end
