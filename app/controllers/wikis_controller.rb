class WikisController < ApplicationController
  before_action :current_wiki, only: [:show, :edit, :update, :destroy]

  def index
    @wikis = Wiki.all
  end

  def show

  end

  def new
    @wiki = Wiki.new
  end

  def create
    wiki = Wiki.create(wiki_params)

    redirect_to wiki_path(wiki)
  end

  def edit

  end

  def update
    @wiki = Wiki.find(params[:id])

    @wiki.update(wiki_params)

    redirect_to wiki_path(@wiki)
  end

  def destroy
    @wiki.destroy

    redirect_to wikis_path
  end

  private

  def wiki_params
    params.require(:wiki).permit(:title, :description, :kind, :author)
  end

  def current_wiki
    @wiki = Wiki.find(params[:id])
  end

end