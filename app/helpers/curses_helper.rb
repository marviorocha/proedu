module CursesHelper


def status_curse

  @total = @progress.size * 100 / @licao.size
  number_to_percentage(@total, precision: 0)
 
end


   
end
