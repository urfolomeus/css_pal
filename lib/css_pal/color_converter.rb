module CssPal
  class ColorConverter
    def self.to_hex(val)
      hues = val.split(',')
      hues.map! { |hue| hexualize(hue) }
      "##{hues.join}"
    end

    def self.hexualize(hue)
      hue.to_i.to_s(16).rjust(2,"0")
    end
  end
end

