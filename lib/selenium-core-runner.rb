module SeleniumCoreRunner
  @@layout = false
  require 'selenium-core-runner/engine' if defined?(Rails)

  def self.layout=(layout)
    @@layout = layout
  end

  def self.layout
    @@layout
  end
end
