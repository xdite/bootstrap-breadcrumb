# BootstrapBreadcrumb

Helpers to generate breadcrumbs


## Usage

Include `BootstrapBreadcrumb` in controller:

```ruby
class ApplicationController < ActionController::Base
  include BootstrapBreadcrumb
end
```

Drop breadcrumbs in controller actions:

```ruby
class PagesController < ApplicationController
  def welcome
    drop_breadcrumb "Pages", pages_path
    drop_breadcrumb "Welcome"
  end
end
```

Render breadcrumbs in view:

```ruby
render_breadcrumb
```

The generated HTML should be like:

```html
<ol class="breadcrumb">
  <li class="first">
    <a href="/">Home</a>
  </li>
  <li>
    <a href="/pages">Pages</a>
  </li>
  <li class="last active">
    Welcome
  </li>
</ol>
```


## Compatibility

BootstrapBreadcrumb should work on Rails 3.2 and 4.0.


## Testing

    rspec


## License

Copyright 2014 Rocodev

MIT-LICENSE

