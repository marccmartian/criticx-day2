class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies
  end

  def show
    @companies = Company.find(params[:id])
    render json: @companies
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: @company
    else
      render json: @company.errors
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :description, :start_date, :country)
  end

  def destroy
    @comp = Company.find(params[:id])
    @comp.destroy
    render json: { status: 'Successfully destroyed', data: @comp }, status: :ok
  end
end
