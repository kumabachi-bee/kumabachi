class Public::EventsController < ApplicationController
  # --------------- 投稿一覧ページ --------------
  def index
    @events = Event.all
  end

  # --------------- 投稿詳細ページ --------------
  def show
    @event = Event.find(params[:id])
  end

  # --------------- 投稿削除機能 --------------
  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to events_path
    else
      render 'show'
    end
  end
end
