module Eye
  class Notify
    # to satisfy gem packaking
    class Eye::Notify::Custom < Eye::Notify; end

    class Bugsnag < Eye::Notify::Custom
      VERSION = '0.0.1'
    end
  end
end
