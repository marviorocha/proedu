module MessagerHelper
  def messager_count
    @msg = current_user.messager_ids
    @msg.count
  end
 
end
