module ApplicationHelper
  def submit_delivery_button_text current_user, task
    default = t("count.deliver", count: current_user.deliveries.where(task_id: task.id).count)
    task.call_to_action.present? ? task.call_to_action : default
  end

  def user_path user
    "#{ENV['MEURIO_HOST']}/users/#{user.id}"
  end
end
