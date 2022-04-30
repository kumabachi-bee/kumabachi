class Public::MembersController < ApplicationController
  
  def show
    @member = Member.find(current_member.id)
  end
  
  def edit
    @member = Member.find(current_member.id)
  end
  
  def update
    @member = Member.find(current_member.id)
    if @member.update(member_params)
      redirect_to member_path(@member.id)
    else
      render :show
    end
  end
  
  def confirm
    @member = Member.find(current_member.id)
  end
  
  def withdraw
    @member = current_member
    @member.update(is_deleted: true)
    #セッション情報を削除
    reset_session
    #退会後の画面遷移
    redirect_to root_path
  end
  
  private
    def member_params
      params.require(:member).permit(:email, :name, :name_kana, :gender, :birthday, :tel, :is_mail_magazine, :is_deleted)
    end
  
end
