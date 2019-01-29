require 'tc_helper.rb'

class TestCellStyle < Minitest::Unit::TestCase

  def setup
    @item = Axlsx::CellStyle.new
  end

  def teardown
  end

  def test_initialiation
    assert_nil @item.name
    assert_nil @item.xfId
    assert_nil @item.builtinId
    assert_nil @item.iLevel
    assert_nil @item.hidden
    assert_nil @item.customBuiltin
  end

  def test_name
    assert_raises(ArgumentError) { @item.name = -1 }
    assert_nothing_raised { @item.name = "stylin" }
    assert_equal(@item.name, "stylin" )
  end

  def test_xfId
    assert_raises(ArgumentError) { @item.xfId = -1 }
    assert_nothing_raised { @item.xfId = 5 }
    assert_equal(@item.xfId, 5 )
  end

  def test_builtinId
    assert_raises(ArgumentError) { @item.builtinId = -1 }
    assert_nothing_raised { @item.builtinId = 5 }
    assert_equal(@item.builtinId, 5 )
  end

  def test_iLevel
    assert_raises(ArgumentError) { @item.iLevel = -1 }
    assert_nothing_raised { @item.iLevel = 5 }
    assert_equal(@item.iLevel, 5 )
  end

  def test_hidden
    assert_raises(ArgumentError) { @item.hidden = -1 }
    assert_nothing_raised { @item.hidden = true }
    assert_equal(@item.hidden, true )
  end

  def test_customBuiltin
    assert_raises(ArgumentError) { @item.customBuiltin = -1 }
    assert_nothing_raised { @item.customBuiltin = true }
    assert_equal(@item.customBuiltin, true )
  end

end
