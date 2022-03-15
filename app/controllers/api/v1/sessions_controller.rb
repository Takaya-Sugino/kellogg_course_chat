class Api::V1::SessionsController < Api::V1::GraphitiController
  def index
    sessions = SessionResource.all(params)
    respond_with(sessions)
  end

  def show
    session = SessionResource.find(params)
    respond_with(session)
  end

  def create
    session = SessionResource.build(params)

    if session.save
      render jsonapi: session, status: :created
    else
      render jsonapi_errors: session
    end
  end

  def update
    session = SessionResource.find(params)

    if session.update_attributes
      render jsonapi: session
    else
      render jsonapi_errors: session
    end
  end

  def destroy
    session = SessionResource.find(params)

    if session.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: session
    end
  end
end
