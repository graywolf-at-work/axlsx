require 'tc_helper.rb'

class TestCellProtection < Minitest::Unit::TestCase

  def setup
    @item = Axlsx::CellProtection.new
  end

  def teardown
  end

  def test_initialiation
    assert_nil @item.hidden
    assert_nil @item.locked
  end

  def test_hidden
    assert_raises(ArgumentError) { @item.hidden = -1 }
    assert_nothing_raised { @item.hidden = false }
    assert_equal(@item.hidden, false )
  end

  def test_locked
    assert_raises(ArgumentError) { @item.locked = -1 }
    assert_nothing_raised { @item.locked = false }
    assert_equal(@item.locked, false )
  end

end
