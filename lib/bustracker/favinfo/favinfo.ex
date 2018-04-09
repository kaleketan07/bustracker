defmodule Bustracker.Favinfo do
  @moduledoc """
  The Favinfo context.
  """

  import Ecto.Query, warn: false
  alias Bustracker.Repo

  alias Bustracker.Favinfo.Fav

  @doc """
  Returns the list of favs.

  ## Examples

      iex> list_favs()
      [%Fav{}, ...]

  """
  def list_favs do
    Repo.all(Fav)
  end

  @doc """
  Gets a single fav.

  Raises `Ecto.NoResultsError` if the Fav does not exist.

  ## Examples

      iex> get_fav!(123)
      %Fav{}

      iex> get_fav!(456)
      ** (Ecto.NoResultsError)

  """
  def get_fav!(id), do: Repo.get!(Fav, id)

  @doc """
  Creates a fav.

  ## Examples

      iex> create_fav(%{field: value})
      {:ok, %Fav{}}

      iex> create_fav(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_fav(attrs \\ %{}) do
    %Fav{}
    |> Fav.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a fav.

  ## Examples

      iex> update_fav(fav, %{field: new_value})
      {:ok, %Fav{}}

      iex> update_fav(fav, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_fav(%Fav{} = fav, attrs) do
    fav
    |> Fav.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Fav.

  ## Examples

      iex> delete_fav(fav)
      {:ok, %Fav{}}

      iex> delete_fav(fav)
      {:error, %Ecto.Changeset{}}

  """
  def delete_fav(%Fav{} = fav) do
    Repo.delete(fav)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking fav changes.

  ## Examples

      iex> change_fav(fav)
      %Ecto.Changeset{source: %Fav{}}

  """
  def change_fav(%Fav{} = fav) do
    Fav.changeset(fav, %{})
  end
end
