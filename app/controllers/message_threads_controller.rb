class MessageThreadsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    # if a patient retrieve their message thread
    # if a care managers retrieve their message threads
    
    user = User.includes(message_threads: [:messages])
               .find(params[:current_user])
    unread_messages = user.message_threads[0].messages.where(read: false)


    render json: {
      message_threads: user.message_threads,
      unread_message_count: unread_messages.count,
      unread_messages: unread_messages
    }


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
