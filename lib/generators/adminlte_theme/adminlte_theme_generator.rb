class AdminlteThemeGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  class_option :with_datatable, type: :boolean, default: false, description: "Add datatable"
  # argument :main_layout, type: :string

  # I can't make it work.
  # hook_for :orm
  def generate_layout
    template "layouts/adminlte_theme.html.erb", "app/views/layouts/#{name}.html.erb"
    template "layouts/_control_sidebar.html.erb", "app/views/layouts/_control_sidebar.html.erb"
    template "layouts/_header.html.erb", "app/views/layouts/_header.html.erb"
    template "layouts/_footer.html.erb", "app/views/layouts/_footer.html.erb"
    template "layouts/_sidebar.html.erb", "app/views/layouts/_sidebar.html.erb"

  end

private

	def objects
		@objects ||= name.underscore.pluralize
	end

  def object
  	@object ||= objects.singularize
  end
  def with_datatable?
		options.with_datatable.present?
  end
end
