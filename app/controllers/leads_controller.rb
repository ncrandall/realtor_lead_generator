class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      redirect_to @lead
    else
      render :new, status: :unprocessable_entity
    end
  end

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
