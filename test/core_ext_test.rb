require 'test_helper'

class CoreExtTest < Test::Unit::TestCase
  test 'deep_symbolize_keys walks arrays, too' do
    hash     = { 'foo' => [{ 'bar' => 'bar', 'baz' => { 'buz' => 'buz' } }] }
    expected = { :foo  => [{ :bar  => 'bar', :baz  => { :buz  => 'buz' } }] }
    assert_equal expected, hash.deep_symbolize_keys
  end
end