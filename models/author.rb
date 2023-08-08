class Author < ApplicationRecord
  has_many :books, counter_cache: :count_of_books
end
