defmodule BorsNgBot.Repo do
  use Ecto.Repo,
    otp_app: :bors_ng_bot,
    adapter: Ecto.Adapters.Postgres
end
