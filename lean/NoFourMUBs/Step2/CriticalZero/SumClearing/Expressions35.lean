import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions34
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1680 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0744
def v1680 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0744 X Y k)
theorem e1680_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1680) = v1680 X Y k := by
  simp only [e1680,v1680,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0744_eval]
def e1681 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1680 e0386
def v1681 (X Y k : ℂ) : ℂ := (v1680 X Y k)*(v0386 X Y k)
theorem e1681_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1681) = v1681 X Y k := by
  simp only [e1681,v1681,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1680_eval,e0386_eval]
def e1682 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0748
def v1682 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0748 X Y k)
theorem e1682_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1682) = v1682 X Y k := by
  simp only [e1682,v1682,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0748_eval]
def e1683 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1682 e0389
def v1683 (X Y k : ℂ) : ℂ := (v1682 X Y k)*(v0389 X Y k)
theorem e1683_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1683) = v1683 X Y k := by
  simp only [e1683,v1683,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1682_eval,e0389_eval]
def e1684 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1683
def v1684 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1683 X Y k)
theorem e1684_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1684) = v1684 X Y k := by
  simp only [e1684,v1684,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1683_eval]
def e1685 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1684 e0062
def v1685 (X Y k : ℂ) : ℂ := (v1684 X Y k)*(v0062 X Y k)
theorem e1685_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1685) = v1685 X Y k := by
  simp only [e1685,v1685,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1684_eval,e0062_eval]
def e1686 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1681 e1685
def v1686 (X Y k : ℂ) : ℂ := (v1681 X Y k)+(v1685 X Y k)
theorem e1686_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1686) = v1686 X Y k := by
  simp only [e1686,v1686,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1681_eval,e1685_eval]
def e1687 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1516 e0110
def v1687 (X Y k : ℂ) : ℂ := (v1516 X Y k)*(v0110 X Y k)
theorem e1687_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1687) = v1687 X Y k := by
  simp only [e1687,v1687,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1516_eval,e0110_eval]
def e1688 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1687 e0296
def v1688 (X Y k : ℂ) : ℂ := (v1687 X Y k)*(v0296 X Y k)
theorem e1688_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1688) = v1688 X Y k := by
  simp only [e1688,v1688,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1687_eval,e0296_eval]
def e1689 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1688 e0113
def v1689 (X Y k : ℂ) : ℂ := (v1688 X Y k)*(v0113 X Y k)
theorem e1689_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1689) = v1689 X Y k := by
  simp only [e1689,v1689,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1688_eval,e0113_eval]
def e1690 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1689 e0115
def v1690 (X Y k : ℂ) : ℂ := (v1689 X Y k)*(v0115 X Y k)
theorem e1690_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1690) = v1690 X Y k := by
  simp only [e1690,v1690,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1689_eval,e0115_eval]
def e1691 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1690 e0019
def v1691 (X Y k : ℂ) : ℂ := (v1690 X Y k)*(v0019 X Y k)
theorem e1691_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1691) = v1691 X Y k := by
  simp only [e1691,v1691,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1690_eval,e0019_eval]
def e1692 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1691 e0022
def v1692 (X Y k : ℂ) : ℂ := (v1691 X Y k)*(v0022 X Y k)
theorem e1692_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1692) = v1692 X Y k := by
  simp only [e1692,v1692,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1691_eval,e0022_eval]
def e1693 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1692 e0117
def v1693 (X Y k : ℂ) : ℂ := (v1692 X Y k)*(v0117 X Y k)
theorem e1693_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1693) = v1693 X Y k := by
  simp only [e1693,v1693,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1692_eval,e0117_eval]
def e1694 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1693 e0119
def v1694 (X Y k : ℂ) : ℂ := (v1693 X Y k)*(v0119 X Y k)
theorem e1694_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1694) = v1694 X Y k := by
  simp only [e1694,v1694,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1693_eval,e0119_eval]
def e1695 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1686 e1694
def v1695 (X Y k : ℂ) : ℂ := (v1686 X Y k)*(v1694 X Y k)
theorem e1695_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1695) = v1695 X Y k := by
  simp only [e1695,v1695,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1686_eval,e1694_eval]
def e1696 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0576
def v1696 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0576 X Y k)
theorem e1696_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1696) = v1696 X Y k := by
  simp only [e1696,v1696,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0576_eval]
def e1697 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1696 e0236
def v1697 (X Y k : ℂ) : ℂ := (v1696 X Y k)*(v0236 X Y k)
theorem e1697_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1697) = v1697 X Y k := by
  simp only [e1697,v1697,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1696_eval,e0236_eval]
def e1698 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1697 e0001
def v1698 (X Y k : ℂ) : ℂ := (v1697 X Y k)*(v0001 X Y k)
theorem e1698_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1698) = v1698 X Y k := by
  simp only [e1698,v1698,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1697_eval,e0001_eval]
def e1699 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0582
def v1699 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0582 X Y k)
theorem e1699_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1699) = v1699 X Y k := by
  simp only [e1699,v1699,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0582_eval]
def e1700 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1699 e0240
def v1700 (X Y k : ℂ) : ℂ := (v1699 X Y k)*(v0240 X Y k)
theorem e1700_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1700) = v1700 X Y k := by
  simp only [e1700,v1700,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1699_eval,e0240_eval]
def e1701 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1700
def v1701 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1700 X Y k)
theorem e1701_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1701) = v1701 X Y k := by
  simp only [e1701,v1701,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1700_eval]
def e1702 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1701 e0009
def v1702 (X Y k : ℂ) : ℂ := (v1701 X Y k)*(v0009 X Y k)
theorem e1702_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1702) = v1702 X Y k := by
  simp only [e1702,v1702,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1701_eval,e0009_eval]
def e1703 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1698 e1702
def v1703 (X Y k : ℂ) : ℂ := (v1698 X Y k)+(v1702 X Y k)
theorem e1703_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1703) = v1703 X Y k := by
  simp only [e1703,v1703,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1698_eval,e1702_eval]
def e1704 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0146 e0004
def v1704 (X Y k : ℂ) : ℂ := (v0146 X Y k)*(v0004 X Y k)
theorem e1704_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1704) = v1704 X Y k := by
  simp only [e1704,v1704,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0146_eval,e0004_eval]
def e1705 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1704 e0082
def v1705 (X Y k : ℂ) : ℂ := (v1704 X Y k)*(v0082 X Y k)
theorem e1705_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1705) = v1705 X Y k := by
  simp only [e1705,v1705,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1704_eval,e0082_eval]
def e1706 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 10
def v1706 (X Y k : ℂ) : ℂ := (v0009 X Y k)^10
theorem e1706_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1706) = v1706 X Y k := by
  simp only [e1706,v1706,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e1707 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1705 e1706
def v1707 (X Y k : ℂ) : ℂ := (v1705 X Y k)*(v1706 X Y k)
theorem e1707_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1707) = v1707 X Y k := by
  simp only [e1707,v1707,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1705_eval,e1706_eval]
def e1708 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1707 e0113
def v1708 (X Y k : ℂ) : ℂ := (v1707 X Y k)*(v0113 X Y k)
theorem e1708_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1708) = v1708 X Y k := by
  simp only [e1708,v1708,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1707_eval,e0113_eval]
def e1709 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1708 e0115
def v1709 (X Y k : ℂ) : ℂ := (v1708 X Y k)*(v0115 X Y k)
theorem e1709_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1709) = v1709 X Y k := by
  simp only [e1709,v1709,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1708_eval,e0115_eval]
def e1710 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1709 e0019
def v1710 (X Y k : ℂ) : ℂ := (v1709 X Y k)*(v0019 X Y k)
theorem e1710_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1710) = v1710 X Y k := by
  simp only [e1710,v1710,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1709_eval,e0019_eval]
def e1711 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1710 e0022
def v1711 (X Y k : ℂ) : ℂ := (v1710 X Y k)*(v0022 X Y k)
theorem e1711_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1711) = v1711 X Y k := by
  simp only [e1711,v1711,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1710_eval,e0022_eval]
def e1712 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1711 e0117
def v1712 (X Y k : ℂ) : ℂ := (v1711 X Y k)*(v0117 X Y k)
theorem e1712_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1712) = v1712 X Y k := by
  simp only [e1712,v1712,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1711_eval,e0117_eval]
def e1713 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1712 e0119
def v1713 (X Y k : ℂ) : ℂ := (v1712 X Y k)*(v0119 X Y k)
theorem e1713_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1713) = v1713 X Y k := by
  simp only [e1713,v1713,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1712_eval,e0119_eval]
def e1714 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1703 e1713
def v1714 (X Y k : ℂ) : ℂ := (v1703 X Y k)*(v1713 X Y k)
theorem e1714_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1714) = v1714 X Y k := by
  simp only [e1714,v1714,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1703_eval,e1713_eval]
def e1715 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1062 e0466
def v1715 (X Y k : ℂ) : ℂ := (v1062 X Y k)*(v0466 X Y k)
theorem e1715_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1715) = v1715 X Y k := by
  simp only [e1715,v1715,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1062_eval,e0466_eval]
def e1716 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1715 e0195
def v1716 (X Y k : ℂ) : ℂ := (v1715 X Y k)*(v0195 X Y k)
theorem e1716_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1716) = v1716 X Y k := by
  simp only [e1716,v1716,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1715_eval,e0195_eval]
def e1717 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1062 e0472
def v1717 (X Y k : ℂ) : ℂ := (v1062 X Y k)*(v0472 X Y k)
theorem e1717_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1717) = v1717 X Y k := by
  simp only [e1717,v1717,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1062_eval,e0472_eval]
def e1718 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1717 e0200
def v1718 (X Y k : ℂ) : ℂ := (v1717 X Y k)*(v0200 X Y k)
theorem e1718_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1718) = v1718 X Y k := by
  simp only [e1718,v1718,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1717_eval,e0200_eval]
def e1719 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1718
def v1719 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1718 X Y k)
theorem e1719_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1719) = v1719 X Y k := by
  simp only [e1719,v1719,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1718_eval]
def e1720 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1719 e0009
def v1720 (X Y k : ℂ) : ℂ := (v1719 X Y k)*(v0009 X Y k)
theorem e1720_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1720) = v1720 X Y k := by
  simp only [e1720,v1720,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1719_eval,e0009_eval]
def e1721 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1716 e1720
def v1721 (X Y k : ℂ) : ℂ := (v1716 X Y k)+(v1720 X Y k)
theorem e1721_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1721) = v1721 X Y k := by
  simp only [e1721,v1721,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1716_eval,e1720_eval]
def e1722 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0005 e0222
def v1722 (X Y k : ℂ) : ℂ := (v0005 X Y k)*(v0222 X Y k)
theorem e1722_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1722) = v1722 X Y k := by
  simp only [e1722,v1722,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0005_eval,e0222_eval]
def e1723 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1722 e1706
def v1723 (X Y k : ℂ) : ℂ := (v1722 X Y k)*(v1706 X Y k)
theorem e1723_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1723) = v1723 X Y k := by
  simp only [e1723,v1723,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1722_eval,e1706_eval]
def e1724 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1723 e0113
def v1724 (X Y k : ℂ) : ℂ := (v1723 X Y k)*(v0113 X Y k)
theorem e1724_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1724) = v1724 X Y k := by
  simp only [e1724,v1724,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1723_eval,e0113_eval]
def e1725 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1724 e0115
def v1725 (X Y k : ℂ) : ℂ := (v1724 X Y k)*(v0115 X Y k)
theorem e1725_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1725) = v1725 X Y k := by
  simp only [e1725,v1725,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1724_eval,e0115_eval]
def e1726 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1725 e0019
def v1726 (X Y k : ℂ) : ℂ := (v1725 X Y k)*(v0019 X Y k)
theorem e1726_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1726) = v1726 X Y k := by
  simp only [e1726,v1726,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1725_eval,e0019_eval]
def e1727 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1726 e0022
def v1727 (X Y k : ℂ) : ℂ := (v1726 X Y k)*(v0022 X Y k)
theorem e1727_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1727) = v1727 X Y k := by
  simp only [e1727,v1727,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1726_eval,e0022_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
