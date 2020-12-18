defmodule MediumCloneApiWeb.Router do
  use MediumCloneApiWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
    plug(MediumCloneApiWeb.Plugs.Context)
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, schema: MediumCloneApiWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: MediumCloneApiWeb.Schema)
    end
  end
end
