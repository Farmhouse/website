class MembershipsController < ApplicationController
  def index
    @slug = "memberships"
    @memberships = Membership.all
  end

  def show
    @slug = "membership"
    @membership = Membership.where(:slug => params[:slug]).first
    @sub_slug = "#{@membership.slug}-membership"
  end
end
