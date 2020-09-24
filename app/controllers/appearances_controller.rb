class AppearancesController < ApplicationController


      def index
      end
      def show
      end 


      def new
          @appearance = Appearance.new
      end
      def create 
          appearance = Appearance.create(appearance_params)

          if appearance.valid
             redirect_to appearance_path(appearance)
          else
              flash[:user_errors] = appearance.errors.full_messages
              redirect_to new_apperance_path
          end
      end 


      private 

      def appearance_params
          params.require(:appearance).permit!
      end 


end
