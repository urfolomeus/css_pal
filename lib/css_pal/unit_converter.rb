module CssPal
  class UnitConverter
    PRECISION = 1

    def initialize(options={})
      @precision = options[:precision] || PRECISION
      p @precision
    end

    def pt_to_em(val)
      convert("em") { calc_pt_to_em(val) }
    end

    def px_to_em(val)
      convert("em") { calc_px_to_em(val) }
    end

    def em_to_percent(val)
      convert("%") { calc_em_to_percent(val) }
    end

    def pt_to_percent(val)
      em = calc_pt_to_em(val)
      convert("%") { calc_em_to_percent(em) }
    end

    private

    def convert(unit, &block)
      sprintf "%g#{unit}", yield
    end

    def calc_pt_to_em(val)
      (val.to_f / 12.0).round(@precision)
    end

    def calc_px_to_em(val)
      (val.to_f / 16.0).round(@precision)
    end

    def calc_em_to_percent(val)
      (val.to_f * 100)
    end
  end
end

