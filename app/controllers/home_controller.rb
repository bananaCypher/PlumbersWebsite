class HomeController < ApplicationController
  def services
  end

  def welcome
    render 'menu'
  end

  def search
    case params['option'].downcase
      when 'taps' then redirect_to('/taps')
      when 'tap' then redirect_to('/taps')
      when 'showers' then redirect_to('/showers')
      when 'shower' then redirect_to('/showers')
      when 'baths' then redirect_to('/baths')
      when 'bath' then redirect_to('/baths')
      when 'toilets' then redirect_to('/toilets')
      when 'toilet' then redirect_to('/toilets')
      else render 'menu'
    end
  end

  def contact_us
    @details = {'name' => params['name'], 'service' => params['service'], 'contact' => params['contact']}
  end
end