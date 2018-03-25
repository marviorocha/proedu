module CursesHelper



def board

    @curses         = current_user.curse
    @days_for       = Content.all
    @days_for.each do |data|
    @current_time   = Time.zone.now
    @inscricaodate  = current_user.created_at
    @userday        = (@current_time.to_i - @inscricaodate.to_i).to_i / data.days.days
    @day_to_publish = Content.where('days > ?', @userday)
    @contents       = Content.where("days = ?", @userday)
    @unpublish      = Content.unpublish(@current_time)
    @noficar        = Content.where("publish_on >= ?", @current_time ).limit("1")


  # End each
end

  @user_progress    = current_user.progress
  @licao_total      = @day_to_publish.size + @contents.size + @unpublish.size
  @porcentagem      = 100 / 5 * @user_progress.size
  @licao            = @porcentagem


  # # Send OneSignal
  # @noficar.each do |notif|
  # @date_now = current_user.created_at + notif.days.days
  # if(@date_now == Time.zone.now)
  # notification(notif.title, "https://images.cdn2.stockunlimited.net/clipart/alarm-icon_2005848.jpg",
  # notif.body.truncate(80,  omission: '... (Veja mais...)'), Time.zone.now + 2.hour)
  # UserMailer.new_publish(current_user).deliver_now
  # end
  # end
  #
end



end
