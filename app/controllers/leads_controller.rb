class LeadsController < ApplicationController

  # Create

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      redirect_to leads_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Read

  def index
    @leads = Lead.all
    @lead = Lead.new
  end

  def show
    @leads = Lead.find(params[:id])
  end

  # Update

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])

    if @lead.update(lead_params)
      redirect_to leads_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Delete

  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy

    redirect_to root_path, status: :see_other
  end

  # Helpers

  private
  def lead_params
    params.require(:lead).permit(:e_mail,
                                 :name,
                                 :phone_number,
                                 :current_city,
                                 :move_in_city,
                                 :price_range_low,
                                 :price_range_high,
                                 :salary,
                                 :credit_score)
  end
end
