class Admin::EventsController < ApplicationController
  # --------------- 新規投稿機能 --------------
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  # --------------- 新規投稿ページ --------------
  def new
    @event = Event.new
  end

  # --------------- 投稿編集ページ --------------
  def edit
    @event = Event.find(params[:id])
  end

  # --------------- 投稿編集機能 --------------
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render 'edit'
    end
  end

  # --------------- ストロングパラメータ --------------
  def event_params
    params.require(:event).permit(:date, :limit, :category, :title, :body, :is_available)
  end
end
