class PagesController < ApplicationController

    def index

       @title = t('title_dashboard') + ' ' + t('system_name')
         

    end


    private

    def set_pages
        
    end
    
    

end
