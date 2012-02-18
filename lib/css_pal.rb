class UnitConverter
  PRECISION = 1

  def self.pt_to_em(val)
    convert("em") { calc_pt_to_em(val) }
  end

  def self.em_to_percent(val)
    convert("%") { calc_em_to_percent(val) }
  end

  def self.pt_to_percent(val)
    em = calc_pt_to_em(val)
    convert("%") { calc_em_to_percent(em) }
  end

  def self.convert(unit, &block)
    sprintf "%g#{unit}", yield
  end

  def self.calc_em_to_percent(val)
    (val.to_f * 100)
  end

  def self.calc_pt_to_em(val)
    (val.to_f / 12.0).round(PRECISION)
  end

  def self.to_hex(val)
    hues = val.split(',')
    hues.map! { |hue| hexualize(hue) }
    "##{hues.join}"
  end

  def self.hexualize(hue)
    hue.to_i.to_s(16).rjust(2,"0")
  end
end
