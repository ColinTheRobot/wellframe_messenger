class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  # Controller expecting query_paramter `current_user=1`

  def index
    messages = Message.where(message_thread_id: params[:message_thread_id])

    render json: { messages: messages}
  end

  def create
    message_thread = MessageThread.find(params[:message_thread_id])

    message_thread.messages.create(message_params)

    render status: 201, json: {message: "Successfully created message."}
  end

  private

  def message_params
    params.required(:message).permit(:message_text, :author)
  end
end
