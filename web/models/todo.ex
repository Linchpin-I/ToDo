defmodule PhoenixTodosApi.Todo do
  use PhoenixTodosApi.Web, :model

  schema "todos" do
    field :title, :string
    field :ia_completed, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :ia_completed])
    |> validate_required([:title, :ia_completed])
  end
end
