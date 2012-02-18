module CssPal
  class Converter
    CONVERTERS = ['ColorConverter', 'UnitConverter']

    def self.convert(action, value)
      CONVERTERS.each do |c|
        converter = CssPal.const_get c
        return converter.send action, value if converter.respond_to? action
      end
      raise NoMethodError, "I don't know how to '#{action}'"
    end
  end
end

