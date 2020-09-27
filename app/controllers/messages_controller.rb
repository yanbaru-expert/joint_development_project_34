class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  
  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update(message_params)
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
  end

  private
  def message_params
    params.require(:message).permit(:title, :content)
  end

end
