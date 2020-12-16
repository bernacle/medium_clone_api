defmodule MediumCloneApiWeb.Resolvers.UserResolver do
  alias MediumCloneApi.Accounts

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end

  def register_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end
end
