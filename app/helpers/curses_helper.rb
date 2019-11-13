module CursesHelper


def status_curse

  @total = @progress.size * 100 / @licao.size
  number_to_percentage(@total, precision: 0)

end

def list_curses
  @curse = current_user.curse.last 
  Curse.where("id > ?", @curse.id )
end

def status_progress(size, licao)
 
  @total = size * 100 / licao  
  number_to_percentage(@total, precision: 0)

end

end
