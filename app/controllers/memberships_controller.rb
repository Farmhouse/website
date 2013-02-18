class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
  end

  def show
    @membership = Membership.where(:slug => params[:slug]).first
  end
end
