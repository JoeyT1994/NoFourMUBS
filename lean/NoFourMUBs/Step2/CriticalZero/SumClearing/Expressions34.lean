import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions33
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1632 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1630 e1631
def v1632 (X Y k : ℂ) : ℂ := (v1630 X Y k)+(v1631 X Y k)
theorem e1632_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1632) = v1632 X Y k := by
  simp only [e1632,v1632,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1630_eval,e1631_eval]
def e1633 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1632 e0057
def v1633 (X Y k : ℂ) : ℂ := (v1632 X Y k)*(v0057 X Y k)
theorem e1633_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1633) = v1633 X Y k := by
  simp only [e1633,v1633,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1632_eval,e0057_eval]
def e1634 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1633
def v1634 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1633 X Y k)
theorem e1634_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1634) = v1634 X Y k := by
  simp only [e1634,v1634,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1633_eval]
def e1635 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1634 e0127
def v1635 (X Y k : ℂ) : ℂ := (v1634 X Y k)*(v0127 X Y k)
theorem e1635_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1635) = v1635 X Y k := by
  simp only [e1635,v1635,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1634_eval,e0127_eval]
def e1636 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1627 e1635
def v1636 (X Y k : ℂ) : ℂ := (v1627 X Y k)+(v1635 X Y k)
theorem e1636_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1636) = v1636 X Y k := by
  simp only [e1636,v1636,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1627_eval,e1635_eval]
def e1637 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1636 e1478
def v1637 (X Y k : ℂ) : ℂ := (v1636 X Y k)*(v1478 X Y k)
theorem e1637_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1637) = v1637 X Y k := by
  simp only [e1637,v1637,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1636_eval,e1478_eval]
def e1638 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0867
def v1638 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0867 X Y k)
theorem e1638_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1638) = v1638 X Y k := by
  simp only [e1638,v1638,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0867_eval]
def e1639 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1638 e0576
def v1639 (X Y k : ℂ) : ℂ := (v1638 X Y k)*(v0576 X Y k)
theorem e1639_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1639) = v1639 X Y k := by
  simp only [e1639,v1639,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1638_eval,e0576_eval]
def e1640 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0871
def v1640 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0871 X Y k)
theorem e1640_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1640) = v1640 X Y k := by
  simp only [e1640,v1640,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0871_eval]
def e1641 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1640 e0582
def v1641 (X Y k : ℂ) : ℂ := (v1640 X Y k)*(v0582 X Y k)
theorem e1641_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1641) = v1641 X Y k := by
  simp only [e1641,v1641,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1640_eval,e0582_eval]
def e1642 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1641
def v1642 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1641 X Y k)
theorem e1642_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1642) = v1642 X Y k := by
  simp only [e1642,v1642,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1641_eval]
def e1643 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1642 e0475
def v1643 (X Y k : ℂ) : ℂ := (v1642 X Y k)*(v0475 X Y k)
theorem e1643_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1643) = v1643 X Y k := by
  simp only [e1643,v1643,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1642_eval,e0475_eval]
def e1644 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1639 e1643
def v1644 (X Y k : ℂ) : ℂ := (v1639 X Y k)+(v1643 X Y k)
theorem e1644_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1644) = v1644 X Y k := by
  simp only [e1644,v1644,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1639_eval,e1643_eval]
def e1645 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1644 e0272
def v1645 (X Y k : ℂ) : ℂ := (v1644 X Y k)*(v0272 X Y k)
theorem e1645_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1645) = v1645 X Y k := by
  simp only [e1645,v1645,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1644_eval,e0272_eval]
def e1646 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1638 e0582
def v1646 (X Y k : ℂ) : ℂ := (v1638 X Y k)*(v0582 X Y k)
theorem e1646_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1646) = v1646 X Y k := by
  simp only [e1646,v1646,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1638_eval,e0582_eval]
def e1647 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1640 e0576
def v1647 (X Y k : ℂ) : ℂ := (v1640 X Y k)*(v0576 X Y k)
theorem e1647_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1647) = v1647 X Y k := by
  simp only [e1647,v1647,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1640_eval,e0576_eval]
def e1648 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1646 e1647
def v1648 (X Y k : ℂ) : ℂ := (v1646 X Y k)+(v1647 X Y k)
theorem e1648_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1648) = v1648 X Y k := by
  simp only [e1648,v1648,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1646_eval,e1647_eval]
def e1649 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1641
def v1649 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1641 X Y k)
theorem e1649_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1649) = v1649 X Y k := by
  simp only [e1649,v1649,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1641_eval]
def e1650 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1648 e1649
def v1650 (X Y k : ℂ) : ℂ := (v1648 X Y k)+(v1649 X Y k)
theorem e1650_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1650) = v1650 X Y k := by
  simp only [e1650,v1650,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1648_eval,e1649_eval]
def e1651 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1650 e0274
def v1651 (X Y k : ℂ) : ℂ := (v1650 X Y k)*(v0274 X Y k)
theorem e1651_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1651) = v1651 X Y k := by
  simp only [e1651,v1651,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1650_eval,e0274_eval]
def e1652 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1651
def v1652 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1651 X Y k)
theorem e1652_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1652) = v1652 X Y k := by
  simp only [e1652,v1652,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1651_eval]
def e1653 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1652 e0078
def v1653 (X Y k : ℂ) : ℂ := (v1652 X Y k)*(v0078 X Y k)
theorem e1653_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1653) = v1653 X Y k := by
  simp only [e1653,v1653,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1652_eval,e0078_eval]
def e1654 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1645 e1653
def v1654 (X Y k : ℂ) : ℂ := (v1645 X Y k)+(v1653 X Y k)
theorem e1654_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1654) = v1654 X Y k := by
  simp only [e1654,v1654,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1645_eval,e1653_eval]
def e1655 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1593 e0006
def v1655 (X Y k : ℂ) : ℂ := (v1593 X Y k)*(v0006 X Y k)
theorem e1655_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1655) = v1655 X Y k := by
  simp only [e1655,v1655,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1593_eval,e0006_eval]
def e1656 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1655 e0296
def v1656 (X Y k : ℂ) : ℂ := (v1655 X Y k)*(v0296 X Y k)
theorem e1656_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1656) = v1656 X Y k := by
  simp only [e1656,v1656,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1655_eval,e0296_eval]
def e1657 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1656 e0113
def v1657 (X Y k : ℂ) : ℂ := (v1656 X Y k)*(v0113 X Y k)
theorem e1657_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1657) = v1657 X Y k := by
  simp only [e1657,v1657,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1656_eval,e0113_eval]
def e1658 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1657 e0115
def v1658 (X Y k : ℂ) : ℂ := (v1657 X Y k)*(v0115 X Y k)
theorem e1658_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1658) = v1658 X Y k := by
  simp only [e1658,v1658,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1657_eval,e0115_eval]
def e1659 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1658 e0019
def v1659 (X Y k : ℂ) : ℂ := (v1658 X Y k)*(v0019 X Y k)
theorem e1659_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1659) = v1659 X Y k := by
  simp only [e1659,v1659,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1658_eval,e0019_eval]
def e1660 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1659 e0022
def v1660 (X Y k : ℂ) : ℂ := (v1659 X Y k)*(v0022 X Y k)
theorem e1660_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1660) = v1660 X Y k := by
  simp only [e1660,v1660,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1659_eval,e0022_eval]
def e1661 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1660 e0117
def v1661 (X Y k : ℂ) : ℂ := (v1660 X Y k)*(v0117 X Y k)
theorem e1661_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1661) = v1661 X Y k := by
  simp only [e1661,v1661,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1660_eval,e0117_eval]
def e1662 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1661 e0119
def v1662 (X Y k : ℂ) : ℂ := (v1661 X Y k)*(v0119 X Y k)
theorem e1662_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1662) = v1662 X Y k := by
  simp only [e1662,v1662,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1661_eval,e0119_eval]
def e1663 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1654 e1662
def v1663 (X Y k : ℂ) : ℂ := (v1654 X Y k)*(v1662 X Y k)
theorem e1663_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1663) = v1663 X Y k := by
  simp only [e1663,v1663,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1654_eval,e1662_eval]
def e1664 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1202 e0867
def v1664 (X Y k : ℂ) : ℂ := (v1202 X Y k)*(v0867 X Y k)
theorem e1664_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1664) = v1664 X Y k := by
  simp only [e1664,v1664,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1202_eval,e0867_eval]
def e1665 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1664 e0415
def v1665 (X Y k : ℂ) : ℂ := (v1664 X Y k)*(v0415 X Y k)
theorem e1665_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1665) = v1665 X Y k := by
  simp only [e1665,v1665,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1664_eval,e0415_eval]
def e1666 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1202 e0871
def v1666 (X Y k : ℂ) : ℂ := (v1202 X Y k)*(v0871 X Y k)
theorem e1666_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1666) = v1666 X Y k := by
  simp only [e1666,v1666,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1202_eval,e0871_eval]
def e1667 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1666 e0417
def v1667 (X Y k : ℂ) : ℂ := (v1666 X Y k)*(v0417 X Y k)
theorem e1667_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1667) = v1667 X Y k := by
  simp only [e1667,v1667,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1666_eval,e0417_eval]
def e1668 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1667
def v1668 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1667 X Y k)
theorem e1668_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1668) = v1668 X Y k := by
  simp only [e1668,v1668,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1667_eval]
def e1669 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1668 e0061
def v1669 (X Y k : ℂ) : ℂ := (v1668 X Y k)*(v0061 X Y k)
theorem e1669_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1669) = v1669 X Y k := by
  simp only [e1669,v1669,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1668_eval,e0061_eval]
def e1670 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1665 e1669
def v1670 (X Y k : ℂ) : ℂ := (v1665 X Y k)+(v1669 X Y k)
theorem e1670_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1670) = v1670 X Y k := by
  simp only [e1670,v1670,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1665_eval,e1669_eval]
def e1671 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1610 e0222
def v1671 (X Y k : ℂ) : ℂ := (v1610 X Y k)*(v0222 X Y k)
theorem e1671_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1671) = v1671 X Y k := by
  simp only [e1671,v1671,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1610_eval,e0222_eval]
def e1672 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1671 e0296
def v1672 (X Y k : ℂ) : ℂ := (v1671 X Y k)*(v0296 X Y k)
theorem e1672_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1672) = v1672 X Y k := by
  simp only [e1672,v1672,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1671_eval,e0296_eval]
def e1673 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1672 e0113
def v1673 (X Y k : ℂ) : ℂ := (v1672 X Y k)*(v0113 X Y k)
theorem e1673_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1673) = v1673 X Y k := by
  simp only [e1673,v1673,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1672_eval,e0113_eval]
def e1674 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1673 e0115
def v1674 (X Y k : ℂ) : ℂ := (v1673 X Y k)*(v0115 X Y k)
theorem e1674_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1674) = v1674 X Y k := by
  simp only [e1674,v1674,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1673_eval,e0115_eval]
def e1675 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1674 e0019
def v1675 (X Y k : ℂ) : ℂ := (v1674 X Y k)*(v0019 X Y k)
theorem e1675_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1675) = v1675 X Y k := by
  simp only [e1675,v1675,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1674_eval,e0019_eval]
def e1676 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1675 e0022
def v1676 (X Y k : ℂ) : ℂ := (v1675 X Y k)*(v0022 X Y k)
theorem e1676_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1676) = v1676 X Y k := by
  simp only [e1676,v1676,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1675_eval,e0022_eval]
def e1677 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1676 e0025
def v1677 (X Y k : ℂ) : ℂ := (v1676 X Y k)*(v0025 X Y k)
theorem e1677_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1677) = v1677 X Y k := by
  simp only [e1677,v1677,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1676_eval,e0025_eval]
def e1678 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1677 e0028
def v1678 (X Y k : ℂ) : ℂ := (v1677 X Y k)*(v0028 X Y k)
theorem e1678_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1678) = v1678 X Y k := by
  simp only [e1678,v1678,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1677_eval,e0028_eval]
def e1679 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1670 e1678
def v1679 (X Y k : ℂ) : ℂ := (v1670 X Y k)*(v1678 X Y k)
theorem e1679_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1679) = v1679 X Y k := by
  simp only [e1679,v1679,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1670_eval,e1678_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
