require 'optparse'

module CssPal
  class Options
    attr_reader :opts

    def initialize
      @options = {}
      @opts = OptionParser.new do |opts|
        banner =  "\n\nUsage:   css_pal <mode> <value> [options]"
        banner << "\n\nExample: css_pal to_em 12pt -p 3"
        banner << "\n\nModes:"
        banner << "\n\tto_em      - convert a value from (pt | px | %) to em"
        banner << "\n\tto_percent - convert a value from (pt | px | em) to %"
        banner << "\n\tto_hex     - convert an RGB color value to hex"
        banner << "\n\nOptions:"
        opts.banner = banner

        opts.on("-p", "--precision N", Integer, "Specify the precision of the return value [DEFAULT 1]") do |p|
          @options[:precision] = p.to_i
        end
      end
    end

    def parse(args)
      mode, param = args
      @opts.parse!(args)
      [mode, param, @options]
    end

    def help
      @opts.help
    end
  end
end

