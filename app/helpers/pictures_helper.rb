module PicturesHelper
  def form_choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_pictures_path
    elsif action_name == 'edit'
      confirm_picture_path(@picture.id)
    end
  end

  def confirm_choose_new_or_edit
    if action_name == 'new'
      pictures_path
    elsif action_name == 'edit'
      picture_path(@picture.id)
    end
  end
end
