class Admin::MembersController < ApplicationController
  
  
# --------------- 会員一覧ページ --------------
  def index
    @members = Member.all
  end
# --------------- 会員詳細ページ --------------
  def show
    @member = Member.find(params[:id])
  end
# --------------- 会員情報更新ページ（強制退会用） --------------
  def update
    member = Member.find(params[:id])
    member.update(member_params)
    redirect_to admin_members_path
  end
  
# --------------- ストロングパラメーター --------------
  private
  
    def member_params
      params.require(:member).permit(:email, :name, :name_kana, :gender, :birthday, :tel, :is_mail_magazine, :is_deleted)
    end
end
