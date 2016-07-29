require 'spec_helper'
require_relative '../../../../apps/web/controllers/foo/index'

describe Web::Controllers::Foo::Index do
  let(:action) { Web::Controllers::Foo::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
