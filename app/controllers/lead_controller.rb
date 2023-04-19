class LeadController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      something
    else

    end
  end

  private
  def lead_params
    params.require(:lead).permit(:e_mail,
                                 :phone_number,
                                 :current_city,
                                 :move_in_city,
                                 :price_range_low,
                                 :prince_range_high,
                                 :salary,
                                 :credit_score)
  end
end
