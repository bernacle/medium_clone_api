defmodule MediumCloneApi.Repo do
  use Ecto.Repo,
    otp_app: :medium_clone_api,
    adapter: Ecto.Adapters.Postgres
end
