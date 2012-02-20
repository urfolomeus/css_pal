module CssPal
  class ColorConverter
    def initialize(options={})
    end

    def to_hex(val)
      hues = val.split(',')
      hues.map! { |hue| hexualize(hue) }
      "##{hues.join}"
    end

    def hexualize(hue)
      hue.to_i.to_s(16).rjust(2,"0")
    end
  end
end

