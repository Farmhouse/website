class MailingListsController < ApplicationController

  def create
    @mailing_list = MailingList.new(params[:mailing_list])

    if @mailing_list.save
      redirect_to root_path, notice: "#{@mailing_list.email} was added to The Farmhouse mailing list."
    else
      render action: "new"
    end
  end

end
