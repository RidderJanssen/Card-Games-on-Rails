class CardPassingsController < ApplicationController

  before_filter :assign_game

  def create
    current_round.pass_cards

    reload_game_page
  end

  def choose_card_to_pass
    player_choice = PlayerCard.find(params[:card].to_i)
    current_player.card_passing_set.player_cards << player_choice

    reload_game_page("shared/my_hand")
  end
  
  def unchoose_card_to_pass
    player_choice = PlayerCard.find(params[:card].to_i)
    player_choice.update_attributes(:card_passing_set_id => nil)
    
    reload_game_page("shared/my_hand")
  end
  
  def passing_set_ready
    current_player.card_passing_set.update_attributes(:is_ready => true)
    
    reload_game_page("shared/nothing")
  end

end
