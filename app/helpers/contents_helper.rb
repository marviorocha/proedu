module ContentsHelper


def reg_youtube

     watch = @content.doc

    if watch.match(/youtube\.com/)
        
        @content.doc.split(/(youtube\.com\/(watch\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/)[4]
        
    else 
        @content.doc.split(/(youtu\.be\/)/)[2]
       
    end
end


 

end
