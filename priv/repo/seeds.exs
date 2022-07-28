# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Library.Repo.insert!(%Library.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

books = [
  %Library.Book{name: "12가지 인생의 법칙", author: "조던 피터슨"},
  %Library.Book{name: "의미의 지도", author: "조던 피터슨"},
  %Library.Book{name: "영혼의 지도", author: "융"},
  %Library.Book{name: "죄와 벌", author: "도스토예프스키"}
]

books
|> Enum.each(fn book -> Library.Repo.insert(book) end)
