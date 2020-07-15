class CursesController < ApplicationController


    def index
        @title = t('curses.title')
        @curses = Curse.all
    end

end
