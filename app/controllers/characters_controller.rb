class CharactersController < ApplicationController

  def index
    @characters = Character.all.order(created_at: :asc)
    if params[:search]
      @search = params[:search]
      @characters = Character.where('title  ~* ?', "#{@search}")
    else
      @characters = Character.all.order(created_at: :asc)
    end
  end

  def show
    @character = Character.find(params[:id])
  end

end
