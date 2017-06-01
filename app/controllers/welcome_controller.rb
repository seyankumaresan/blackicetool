class WelcomeController < ApplicationController
  def show
  end

  def index
  	redirect_to :show
  end 

  def calculate
    prediction = true

    ["Heavy Rain", "Heavy Snowfall", "Heavy Snow", "Clear"].each do |s|
      if s.casecmp(params[:current_weather]) == 0
        prediction = false
      end
     end

    ["Rain", "Light Rain", "Light Snow", "Light Snowfall", "Misty", "Foggy"].each do |s|
      if s.casecmp(params[:current_weather]) == 0
        prediction = true
      end
    end

    if params[:air_temp].to_f > 5.0
      prediction = false
    end
    
    if params[:pop].to_f < 70
      prediction = false
    end

    if params[:temp_drop].to_f < 11.1
      prediction = false
    end

    if params[:wind_speed].to_f >= 36.0
      prediction = false
    end

    if(prediction == true)
      render "risk/risk"
    else
      render "risk/no_risk"
    end
  
  end 

  def back
    render "welcome/show"
  end    
end
