module Externals
  module TranspectProjectType
    class DefaultPathCalculator
      def default_path name
        if name
          if name == 'transpect'
            "."
          else
            File.join(".", name)
          end
        else
          raise "couldn't figure out project name..."
        end
      end
    end
  end

  class TranspectDetector
    def self.detected?
      File.exists? "Makefile" and
        File.exists? File.join("xmlcatalog", "catalog.xml")
    end
  end
end
