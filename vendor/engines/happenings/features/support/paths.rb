module NavigationHelpers
  module Refinery
    module Happenings
      def path_to(page_name)
        case page_name
        when /the list of happenings/
          admin_happenings_path

         when /the new happening form/
          new_admin_happening_path
        else
          nil
        end
      end
    end
  end
end
