class EntriesController < ApplicationController
  def index
    UpdateEntries.new.go && @entries = Entry.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end
  end

  def update
    UpdateEntries.new.go
    redirect_to entries_path
  end


end
