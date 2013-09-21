module DeviseHaml
  module Generators
    class ConvertGenerator < Rails::Generators::Base
      argument :scope, :required => false,
                       :default => nil,
                       :desc => 'The scope to convert views to'
      
      def target_path
        @target_path ||= "app/views/#{scope || :devise}"
      end
      
      def verify_haml_existence
        begin
          require "html2haml"
        rescue LoadError
            say "html2haml is not installed, or it is not specified in your Gemfile."
          exit
        end
      end
           
      def convert_views
        system("for file in #{target_path}/**/*.erb; do html2haml -e $file ${file%erb}haml && rm $file; done")
        p 'conversion end'
      end
      
    end
  end
end