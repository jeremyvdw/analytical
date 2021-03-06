module Analytical

  class Api
    attr_accessor :options, :modules

    def initialize(options={})
      @options = options
      @modules = @options[:modules].inject(ActiveSupport::OrderedHash.new) do |h, m|
        h[m] = "Analytical::#{m.to_s.camelize}::Api".constantize.new(self, @options[m] || {})
        h
      end
    end

    #
    # Catch commands such as :track, :identify and send them on to all of the modules.
    # Or... if a module name is passed, return that module so it can be used directly, ie:
    # analytical.console.go 'make', :some=>:cookies
    #
    def method_missing(method, *args, &block)
      if @modules.keys.include?(method.to_sym)
        @modules[method.to_sym]
      else
        process_command method.to_sym, *args
      end
    end


    #
    # Delegation class that passes methods to
    #
    class ImmediateDelegateHelper
      def initialize(_parent)
        @parent = _parent
      end
      def method_missing(method, *args, &block)
        @parent.modules.values.collect do |m|
          m.send method, *args
        end.join("\n")
      end
    end

    #
    # Returns a new delegation object for immediate processing of a command
    #
    def now
      ImmediateDelegateHelper.new(self)
    end

    #
    # These methods return the javascript that should be inserted into each section of your layout
    #
    def head_javascript
      [init_javascript(:head), tracking_javascript(:head)].delete_if{|s| s.blank?}.join("\n")
    end
    def body_prepend_javascript
      [init_javascript(:body_prepend), tracking_javascript(:body_prepend)].delete_if{|s| s.blank?}.join("\n")
    end
    def body_append_javascript
      [init_javascript(:body_append), tracking_javascript(:body_append)].delete_if{|s| s.blank?}.join("\n")
    end

    private

    def process_command(command, *args)
      @modules.values.each do |m|
        m.queue command, *args
      end
    end

    def tracking_javascript(location)
      commands = []
      @modules.each do |name, m|
        commands += m.process_queued_commands if m.init_location?(location) || m.initialized
      end
      commands = commands.delete_if{|c| c.blank? || c.empty?}
      unless commands.empty?
        commands.unshift "<script type='text/javascript'>"
        commands << "</script>"
      end
      commands.join("\n")
    end

    def init_javascript(location)
      @modules.values.collect do |m|
        m.init_javascript(location)
      end.compact.join("\n")
    end
  end

end