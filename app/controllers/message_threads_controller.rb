class MessageThreadsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    user = User.includes(message_threads: [:messages])
               .find(params[:current_user])

    if user.role === "patient"
      unread_messages = user.messages.where(read: false)
      render json: {
        unread_messages_count: unread_messages.count,
        unread_messages: unread_messages
      }
    elsif user.role === "care_manager"
      threads = user.patients.as_json(include: :messages)
      render json: threads
    end
  end

  def update
    message_thread = MessageThread.find(params[:id])

    message_thread.messages.update_all(read: true)

    render status: 204, json: {
      message: "Messages successfully marked as read"
    }
  end
end
