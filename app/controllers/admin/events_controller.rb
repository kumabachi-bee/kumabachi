class Admin::EventsController < ApplicationController
  # --------------- 新規投稿機能 --------------
  def create
    @event = Event.new(event_params)
    @event.save(event_params)
    redirect_to events_path
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
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  # --------------- 投稿削除機能 --------------
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path(@event)
  end

  # --------------- ストロングパラメータ --------------
  def event_params
    params.require(:event).permit(date, limit, is_available, category, title, body)
  end
end
