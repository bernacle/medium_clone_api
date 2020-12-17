defmodule MediumCloneApi.Accounts.Session do
  alias MediumCloneApi.Accounts.User
  alias MediumCloneApi.Repo

  def authenticate(args) do
    user = Repo.get_by(User, email: String.downcase(args.email))

    case check_password(user, args) do
      true -> {:ok, user}
      _ -> {:error, "Incorrect Login credentials"}
    end
  end

  defp check_password(user, args) do
    case user do
      nil -> Argon2.dummy_checkpw()
      _ -> Argon2.check_pass(args.password, user.password_hash)
    end
  end
end
