def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM Books INNER JOIN Series ON Books.series_id = Series.id WHERE Series.id = 1; "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto FROM Characters WHERE length(Characters.motto) = (SELECT MAX(length(Characters.motto)) FROM Characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species) FROM Characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name FROM Authors INNER JOIN Subgenres ON Authors.id = Subgenres.id INNER JOIN Series ON Authors.id = Series.id;"
end

def select_series_title_with_most_human_characters
  # "SELECT Series.title FROM Series INNER JOIN Characters ON Series.id = Characters.series_id WHERE Characters.species = 'human' GROUP BY species.title COUNT(Characters.speices) FROM Characters;"
  
  "SELECT Series.title FROM Series JOIN Characters ON Series.id = Characters.series_id
    WHERE Characters.species = 'human' GROUP BY series.title ORDER BY COUNT(*) DESC LIMIT 1; "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Character_books.book_id) FROM Characters JOIN Character_books ON Characters.id = Character_books.character_id GROUP BY Characters.name ORDER BY COUNT(Character_books.book_id) DESC;"
end
