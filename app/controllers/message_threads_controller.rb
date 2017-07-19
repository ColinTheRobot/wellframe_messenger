class MessageThreadsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    user = User.includes(message_threads: [:messages])
               .find(params[:current_user])
    # if user.role == 'patient'
      unread_messages = user.messages.where(read: false)
    # else

    if user.role == 'patient'
      render json: {
        # message_threads: user.message_threads,
        unread_message_count: unread_messages.count,
        unread_messages: unread_messages
      }
    elsif user.role == 'care_manager'
      binding.pry
      render json: {
        message_threads: user.message_threads.merge({messages: messages}),
        unread_message_count: unread_messages.count,
        unread_messages: unread_messages
      }
    end


    # TODO merge data fields
    # render json: {
    #   message_threads: user.message_threads.attributes.merge(
    #     message_count: user.message_threads[0].messages.count,
    #     messages: [user.message_threads[0].messages]
    #   )
    # }
  end

  def update
    message_thread = MessageThread.find(params[:id])

    message_thread.messages.update_all(read: true)

    render status: 204, json: {
      message: "Messages successfully marked as read"
    }
  end
end
