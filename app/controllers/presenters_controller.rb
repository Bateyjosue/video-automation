class PresentersController < ApplicationController
  def index
    @presenters = Presenter.all
  end
  def new
    @presenter = Presenter.new
  end
  def show
    @presenter = Presenter.find(params[:id])
  end

  def create
    @presenter = Presenter.new(presenter_params)
    if @presenter.save
      redirect_to presenters_path
    else
      flash.now[:error] = @presenter.errors.full_messages
      render :new
    end
  end

  def edit
    @presenter = Presenter.find(params[:id])
    
  end
  def update
    @presenter = Presenter.find(params[:id])
    @presenter.update(
      presenter_params
      )
    redirect_to presenters_path(params[:id])
  end

  private
  def presenter_params
    params.require(:presenter).permit(:name, :twitter_handle, :linked_in, :role)
  end
end
