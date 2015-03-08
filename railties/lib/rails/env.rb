module Rails
  class << self
    # Returns the current Rails environment.
    #
    #   Rails.env # => "development"
    #   Rails.env.development? # => true
    #   Rails.env.production? # => false
    def env
      @_env ||= ActiveSupport::StringInquirer.new(ENV["RAILS_ENV"] || ENV["RACK_ENV"] || "development")
    end

    # Sets the Rails environment.
    #
    #   Rails.env = "staging" # => "staging"
    def env=(environment)
      @_env = ActiveSupport::StringInquirer.new(environment)
    end
  end
end
