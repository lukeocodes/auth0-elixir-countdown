defmodule Countdown.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :title, :string
      add :due, :naive_datetime

      timestamps()
    end

  end
end
