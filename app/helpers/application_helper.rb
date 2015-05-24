# Helper methods defined here can be accessed in any controller or view in the application

module Intrjekt
  class App
    module ApplicationHelper
      def errors_for(model)
        %Q{<div class="text-danger">#{model.errors.full_messages.join("<br/> ")}</div>}.html_safe unless model.errors.empty?
      end
    end

    helpers ApplicationHelper
  end
end
