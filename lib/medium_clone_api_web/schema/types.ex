defmodule MediumCloneApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MediumCloneApiWeb.Schema.Types

  import_types(Types.Usertype)
  import_types(Types.SessionType)
end
