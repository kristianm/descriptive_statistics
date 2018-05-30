module DescriptiveStatistics
  def coefficient_of_variation(collection = self, &block)
    values = Support::convert(collection, &block)

    if values.empty?
      return DescriptiveStatistics.coefficient_of_variation_empty_collection_default_value
    end

    values.standard_deviation / values.mean
  end

  alias_method :cv, :coefficient_of_variation
end