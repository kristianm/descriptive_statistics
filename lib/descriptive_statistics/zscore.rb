module DescriptiveStatistics
  def zscore(raw, collection = self, &block)
    values = Support::convert(collection, &block)

    return DescriptiveStatistics.zscore_empty_collection_default_value if values.empty?

    (raw.to_f - values.mean) / values.standard_deviation
  end
end