#class InitializerGenerator < Rails::Generators::Base
class StorefrontGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../templates/', __FILE__)
  desc "This is meant to create a storefront template"

  def copy_routes_file
    directory "storefront", STOREFRONTS_ROOT.join("#{file_name}/")
  end

end