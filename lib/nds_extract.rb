$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

<<<<<<< HEAD
def gross_for_director(nds, row_index)
  total_gross = 0
  movie_index = 0 
  movie_portfolio = nds[row_index][:movies].length
  while movie_index < movie_portfolio do
    total_gross += nds[row_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
  p total_gross
=======


def gross_for_director(nds, row_index)
  total_gross = 0
  movie_index = 0 
  while movie_index < nds[row_index][:movies].length do
    total_gross += nds[row_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
  total_gross
>>>>>>> 8fb4caef408720d886e99d550d828828f023783d
end

gross_for_director(directors_database, 0)

def directors_totals(nds)
  directors_box_office = {}
  row_index = 0 
  while row_index < nds.length do
    movie_index = 0 
    total_gross = 0 
    while movie_index < nds[row_index][:movies].length do 
      total_gross += nds[row_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
      director_name = nds[row_index][:name]
      directors_box_office[director_name] = total_gross
    end
    row_index += 1 
  end
  return directors_box_office
end 

<<<<<<< HEAD
=======
gross_for_director(directors_database, 1)
>>>>>>> 8fb4caef408720d886e99d550d828828f023783d
directors_totals(directors_database)