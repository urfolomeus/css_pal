module CssPal
  class Converter
    CONVERTERS = ['ColorConverter', 'UnitConverter']

    def self.convert(action, value, options={})
      CONVERTERS.each do |c|
        klass = CssPal.const_get c
        if klass.instance_methods.include? action
          converter = klass.new(options)
          return converter.send action, value
        end
      end
      raise NoMethodError, "I don't know how to '#{action}'"
    end
  end
end

