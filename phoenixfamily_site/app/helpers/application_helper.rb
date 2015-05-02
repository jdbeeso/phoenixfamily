module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | PhoenixfamilySite"
    end
  end
end
