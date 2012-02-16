class Converter
  PRECISION = 1

  def self.pt_to_em(val)
    result = (val / 12.0).round(PRECISION)
    "#{result}em"
  end

  def self.em_to_percent(val)
    result = (val * 100)
    sprintf "%g%", result
  end
end
