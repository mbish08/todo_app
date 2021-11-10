class HomeController < ApplicationController

    def remove_all_completed
        @remove_all_completed = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: 'All completed items were successfully removed.'
    end

end