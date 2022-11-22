class LeasesController < ApplicationController

  def create
    lease = Lease.create(ls_params)
    render json: lease, status: :created
  end

  def destroy
    lease = find_ls
    lease.destroy
    head :no_content
  end

  private

  def find_ls
    Lease.find_by(id: params[:id])
  end

  def ls_params
    params.permit(:apartment_id, :tenant_id, :rent)
  end

  def render_not_found_response
    render json: { error: "Lease not found" }, status: :not_found
  end

end
