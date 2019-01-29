require 'tc_helper.rb'

class TestXf < Minitest::Unit::TestCase

  def setup
    @item = Axlsx::Xf.new
  end

  def teardown
  end

  def test_initialiation
    assert_nil @item.alignment
    assert_nil @item.protection
    assert_nil @item.numFmtId
    assert_nil @item.fontId
    assert_nil @item.fillId
    assert_nil @item.borderId
    assert_nil @item.xfId
    assert_nil @item.quotePrefix
    assert_nil @item.pivotButton
    assert_nil @item.applyNumberFormat
    assert_nil @item.applyFont
    assert_nil @item.applyFill
    assert_nil @item.applyBorder
    assert_nil @item.applyAlignment
    assert_nil @item.applyProtection
  end

  def test_alignment
    assert_raises(ArgumentError) { @item.alignment = -1.1 }
    assert_nothing_raised { @item.alignment = Axlsx::CellAlignment.new }
    assert(@item.alignment.is_a?(Axlsx::CellAlignment))
  end

  def test_protection
    assert_raises(ArgumentError) { @item.protection = -1.1 }
    assert_nothing_raised { @item.protection = Axlsx::CellProtection.new }
    assert(@item.protection.is_a?(Axlsx::CellProtection))
  end

  def test_numFmtId
    assert_raises(ArgumentError) { @item.numFmtId = -1.1 }
    assert_nothing_raised { @item.numFmtId = 0 }
    assert_equal(@item.numFmtId, 0)
  end

  def test_fillId
    assert_raises(ArgumentError) { @item.fillId = -1.1 }
    assert_nothing_raised { @item.fillId = 0 }
    assert_equal(@item.fillId, 0)
  end

  def test_fontId
    assert_raises(ArgumentError) { @item.fontId = -1.1 }
    assert_nothing_raised { @item.fontId = 0 }
    assert_equal(@item.fontId, 0)
  end

  def test_borderId
    assert_raises(ArgumentError) { @item.borderId = -1.1 }
    assert_nothing_raised { @item.borderId = 0 }
    assert_equal(@item.borderId, 0)
  end

  def test_xfId
    assert_raises(ArgumentError) { @item.xfId = -1.1 }
    assert_nothing_raised { @item.xfId = 0 }
    assert_equal(@item.xfId, 0)
  end

  def test_quotePrefix
    assert_raises(ArgumentError) { @item.quotePrefix = -1.1 }
    assert_nothing_raised { @item.quotePrefix = false }
    assert_equal(@item.quotePrefix, false)
  end

  def test_pivotButton
    assert_raises(ArgumentError) { @item.pivotButton = -1.1 }
    assert_nothing_raised { @item.pivotButton = false }
    assert_equal(@item.pivotButton, false)
  end

  def test_applyNumberFormat
    assert_raises(ArgumentError) { @item.applyNumberFormat = -1.1 }
    assert_nothing_raised { @item.applyNumberFormat = false }
    assert_equal(@item.applyNumberFormat, false)
  end

  def test_applyFont
    assert_raises(ArgumentError) { @item.applyFont = -1.1 }
    assert_nothing_raised { @item.applyFont = false }
    assert_equal(@item.applyFont, false)
  end

  def test_applyFill
    assert_raises(ArgumentError) { @item.applyFill = -1.1 }
    assert_nothing_raised { @item.applyFill = false }
    assert_equal(@item.applyFill, false)
  end

  def test_applyBorder
    assert_raises(ArgumentError) { @item.applyBorder = -1.1 }
    assert_nothing_raised { @item.applyBorder = false }
    assert_equal(@item.applyBorder, false)
  end

  def test_applyAlignment
    assert_raises(ArgumentError) { @item.applyAlignment = -1.1 }
    assert_nothing_raised { @item.applyAlignment = false }
    assert_equal(@item.applyAlignment, false)
  end

  def test_applyProtection
    assert_raises(ArgumentError) { @item.applyProtection = -1.1 }
    assert_nothing_raised { @item.applyProtection = false }
    assert_equal(@item.applyProtection, false)
  end

end
