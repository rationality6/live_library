books = [
  %Library.Books.Book{
    name: "12 Rules for Life",
    author: "Jordan B. Peterson",
    image: "https://m.media-amazon.com/images/I/41bK7Jt8k+L.jpg"
  },
  %Library.Books.Book{
    name: "Maps of Meaning",
    author: "Jordan B. Peterson",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/41o3KPXTjYL._SX364_BO1,204,203,200_.jpg"
  },
  %Library.Books.Book{
    name: "Map of the Soul",
    author: "Jung",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/41BJmkr9M7L._SX332_BO1,204,203,200_.jpg"
  },
  %Library.Books.Book{
    name: "The brothers karamazov",
    author: "dostoevsky",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/4155MlQWD7L._SX324_BO1,204,203,200_.jpg"
  },
  %Library.Books.Book{
    name: "Crime and Punishment",
    author: "dostoevsky",
    image: "https://qph.cf2.quoracdn.net/main-qimg-9ff5d7256dc21668d2fcf2af51575439-lq"
  }
]

defmodule Seed do
  @default_range 1..10

  def run_insert_random_stock(list) when is_list(list) do
    insert_random_stock(list, [])
  end

  def insert_random_stock([], acc) do
    acc
  end

  def insert_random_stock([book_head | tail], acc) do
    updated_book = %{book_head | stock: random}
    insert_random_stock(tail, acc ++ [updated_book])
  end

  def random(number_range \\ @default_range) do
    Enum.random(@default_range)
  end
end

books_with_stock = Seed.run_insert_random_stock(books)

books_with_stock
|> Enum.each(fn book -> Library.Repo.insert!(book) end)
