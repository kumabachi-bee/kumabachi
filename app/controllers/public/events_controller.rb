class Public::EventsController < ApplicationController
  # --------------- 投稿一覧ページ --------------
  def index
    @events = Event.all
  end

  # --------------- 投稿詳細ページ --------------
  def show
    @event = Event.find(params[:id])
  end
end
