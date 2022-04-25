class Public::ContactsController < ApplicationController
  # --------------- お問い合わせページ --------------
  def new
    @contact = Contact.new
  end

  # --------------- お問い合わせ送信機能 ---------------
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      InquiryMailer.send_mail(@contact).deliver_now
      redirect_to root_path
    else
      render "new"
    end
  end

  private
# --------------- ストロングパラメータ ---------------
  def contact_params
    params.require(:contact).permit(:name, :email, :body)
  end
end
