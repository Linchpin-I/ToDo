defmodule PhoenixTodosApi.TodoView do
  use PhoenixTodosApi.Web, :view

  def render("index.json", %{todos: todos}) do
    # %{data: replaced with %{todos:
    %{todos: render_many(todos, PhoenixTodosApi.TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    # %{data: replaced with %{todo:
    %{todo: render_one(todo, PhoenixTodosApi.TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id,
      title: todo.title,
      ia_completed: todo.ia_completed}
  end
end
