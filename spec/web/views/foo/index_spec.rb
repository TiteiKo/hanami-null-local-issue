require 'spec_helper'
require_relative '../../../../apps/web/views/foo/index'

describe Web::Views::Foo::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/foo/index.html.erb') }
  let(:view)      { Web::Views::Foo::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
