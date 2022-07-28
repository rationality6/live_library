books = [
  %Library.Book{
    name: "12 Rules for Life",
    author: "Jordan B. Peterson",
    image: "https://m.media-amazon.com/images/I/41bK7Jt8k+L.jpg"
  },
  %Library.Book{
    name: "Maps of Meaning",
    author: "Jordan B. Peterson",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/41o3KPXTjYL._SX364_BO1,204,203,200_.jpg"
  },
  %Library.Book{
    name: "Map of the Soul",
    author: "Jung",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/41BJmkr9M7L._SX332_BO1,204,203,200_.jpg"
  },
  %Library.Book{
    name: "The brothers karamazov",
    author: "dostoevsky",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/4155MlQWD7L._SX324_BO1,204,203,200_.jpg"
  },
  %Library.Book{
    name: "Crime and Punishment",
    author: "dostoevsky",
    image: "https://qph.cf2.quoracdn.net/main-qimg-9ff5d7256dc21668d2fcf2af51575439-lq"
  }
]

books
|> Enum.each(fn book -> Library.Repo.insert!(book) end)
