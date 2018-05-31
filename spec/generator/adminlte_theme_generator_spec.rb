require "generator_spec"
# require "generators/adminlte_theme/adminlte_theme_generator.rb"
RSpec.describe AdminlteThemeGenerator, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)
  arguments %w(adminlte_theme)

  before(:all) do
    prepare_destination
    run_generator
  end
  after(:all) do
    system "rm -rf spec/tmp"
  end

  it "creates layout files" do
    assert_file "app/views/layouts/adminlte_theme.html.erb"
    assert_file "app/views/layouts/_control_sidebar.html.erb"
    assert_file "app/views/layouts/_header.html.erb"
    assert_file "app/views/layouts/_footer.html.erb"
    assert_file "app/views/layouts/_sidebar.html.erb"
  end
end
