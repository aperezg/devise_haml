# DeviseHaml

Is a simple gem for conver erb devise files into haml files, using this: '[html2haml](https://github.com/plataformatec/devise/wiki/How-To:-Create-Haml-and-Slim-Views)'.
This gem can do this in a much simpler and more transparent. 

## Installation

Add this line to your application's Gemfile:
    group :development do
      gem 'devise_haml', github:'gandark/devise_haml'
    end

And then execute:

    $ bundle install

## Usage

Once you have generated devise views execute in your console next:
    rails generate devise_haml:convert
Or If you have used scopes, execute next:
    rails generate devise_haml:convert scope_name

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
