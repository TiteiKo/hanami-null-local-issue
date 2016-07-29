require 'spec_helper'
require_relative '../../../../apps/web/views/bar/index'

describe Web::Views::Bar::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/bar/index.html.erb') }
  let(:view)      { Web::Views::Bar::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
