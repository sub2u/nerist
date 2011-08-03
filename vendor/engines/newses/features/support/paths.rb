module NavigationHelpers
  module Refinery
    module Newses
      def path_to(page_name)
        case page_name
        when /the list of newses/
          admin_newses_path

         when /the new newse form/
          new_admin_newse_path
        else
          nil
        end
      end
    end
  end
end
