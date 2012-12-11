module EViewTest__ViewPrefix
  class App < E
    map '/path-test-i-dont-care'
    view_prefix '/path-test'
    layouts_path 'layouts'
    layout :base

    def index
      render
    end
  end

  Spec.new App do

    get
    expect(last_response.body) == 'HEADER/index.erb'

  end
end