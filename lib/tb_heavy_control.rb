require 'tb_heavy_control/configurable'

module TbHeavyControl
  extend TbHeavyControl::Configurable
end

require 'tb_heavy_control/railtie'

# stuff below is copy from trailblazer-rails gem
# stuff inside lib/trailblazer folder too =)

require 'trailblazer/operation'
# TODO: remove that once i18n, validations etc in Reform/AM are sorted.
Trailblazer::Operation.contract_class.class_eval do
  def self.name
    # for whatever reason, validations climb up the inheritance tree and require _every_ class to have a name (4.1).
    'Reform::Form'
  end
end
