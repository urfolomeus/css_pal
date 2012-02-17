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
    (val * 100)
  end

  def self.calc_pt_to_em(val)
    (val / 12.0).round(PRECISION)
  end

  def self.method_missing(*args)
    raise "I don't know how to '#{args.first}'"
  end
end
