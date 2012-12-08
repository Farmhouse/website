class LabsController < ApplicationController
  def index
    @lab = Lab.new
  end
end
