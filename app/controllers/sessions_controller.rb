class SessionsController < ApplicationController
  before_action :set_session, only: %i[show edit update destroy]

  def index
    @q = Session.ransack(params[:q])
    @sessions = @q.result(distinct: true).includes(:course, :professor,
                                                   :posts, :bookmarks, :users).page(params[:page]).per(10)
  end

  def show
    @bookmark = Bookmark.new
    @post = Post.new
  end

  def new
    @session = Session.new
  end

  def edit; end

  def create
    @session = Session.new(session_params)

    if @session.save
      message = "Session was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @session, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @session.update(session_params)
      redirect_to @session, notice: "Session was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @session.destroy
    message = "Session was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to sessions_url, notice: message
    end
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:course_id, :professor_id)
  end
end
