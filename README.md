# AdminlteTheme

A gem that simplifies your adminLTE setup on ruby on rails.

## Installation

Add these to your gemfile

```ruby
gem 'jquery-rails'
gem 'bootstrap-sass'
gem "font-awesome-rails"
gem 'adminlte_theme'
```
I didn't include those gem as dependencies to allow you to customize and manage your gems

Add this to your ```application.js```
```js
//= require jquery
//= require bootstrap-sprockets
//= require adminlte
```

Then in your ```application.css.scss```
```scss
@import "bootstrap-sprockets";
@import "bootstrap";
@import 'font-awesome';
@import "AdminLTE";
@import "AdminLTE/skins/skin-green";
```

Generate your layout.
``` sh
rails g adminlte_theme layout_name
```

```layout_name``` is your layout file name. You can also use ```application``` to use the default layout but be aware that it will be overwritten by this command.

The command will create a file structure similar below but with ```layout_name.html.erb``` instead of ```application.html.erb```.

Some ```image_tag``` were commented out because temporary adminlte image files were not included on the pipeline by default.


### HTMLs
See this [Admin LTE Installation Guide](https://adminlte.io/docs/2.4/installation) to configure template.

You might want to see how [POSko](https://github.com/neume/posko) used this gem.

You can use this file structure:
```
app/
  views/
    layouts/
      application.html.erb
      _footer.html.erb
      _header.html.erb
      _control_sidebar.html.erb
      _sidebar.html.erb
```
Render those partial in application.html.erb
## TODOs
+ Create generator
+ Spec! Spec! Spec!


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/neume/adminlte_theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AdminlteTheme project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/neume/adminlte_theme/blob/master/CODE_OF_CONDUCT.md).
