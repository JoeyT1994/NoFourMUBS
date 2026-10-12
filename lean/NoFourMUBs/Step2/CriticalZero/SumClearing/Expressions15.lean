import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions14
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0720 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0031 e0719
def v0720 (X Y k : ℂ) : ℂ := (v0031 X Y k)*(v0719 X Y k)
theorem e0720_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0720) = v0720 X Y k := by
  simp only [e0720,v0720,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0031_eval,e0719_eval]
def e0721 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0220 e0057
def v0721 (X Y k : ℂ) : ℂ := (v0220 X Y k)*(v0057 X Y k)
theorem e0721_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0721) = v0721 X Y k := by
  simp only [e0721,v0721,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0220_eval,e0057_eval]
def e0722 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0721
def v0722 (X Y k : ℂ) : ℂ := -(v0721 X Y k)
theorem e0722_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0722) = v0722 X Y k := by
  simp only [e0722,v0722,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0721_eval]
def e0723 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0720 e0722
def v0723 (X Y k : ℂ) : ℂ := (v0720 X Y k)*(v0722 X Y k)
theorem e0723_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0723) = v0723 X Y k := by
  simp only [e0723,v0723,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0720_eval,e0722_eval]
def e0724 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0723
def v0724 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0723 X Y k)
theorem e0724_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0724) = v0724 X Y k := by
  simp only [e0724,v0724,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0723_eval]
def e0725 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0096 e0061
def v0725 (X Y k : ℂ) : ℂ := (v0096 X Y k)*(v0061 X Y k)
theorem e0725_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0725) = v0725 X Y k := by
  simp only [e0725,v0725,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0096_eval,e0061_eval]
def e0726 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0724 e0725
def v0726 (X Y k : ℂ) : ℂ := (v0724 X Y k)*(v0725 X Y k)
theorem e0726_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0726) = v0726 X Y k := by
  simp only [e0726,v0726,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0724_eval,e0725_eval]
def e0727 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0717 e0726
def v0727 (X Y k : ℂ) : ℂ := (v0717 X Y k)+(v0726 X Y k)
theorem e0727_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0727) = v0727 X Y k := by
  simp only [e0727,v0727,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0717_eval,e0726_eval]
def e0728 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0727 e0033
def v0728 (X Y k : ℂ) : ℂ := (v0727 X Y k)*(v0033 X Y k)
theorem e0728_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0728) = v0728 X Y k := by
  simp only [e0728,v0728,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0727_eval,e0033_eval]
def e0729 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0711 e0722
def v0729 (X Y k : ℂ) : ℂ := (v0711 X Y k)*(v0722 X Y k)
theorem e0729_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0729) = v0729 X Y k := by
  simp only [e0729,v0729,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0711_eval,e0722_eval]
def e0730 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0720 e0716
def v0730 (X Y k : ℂ) : ℂ := (v0720 X Y k)*(v0716 X Y k)
theorem e0730_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0730) = v0730 X Y k := by
  simp only [e0730,v0730,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0720_eval,e0716_eval]
def e0731 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0729 e0730
def v0731 (X Y k : ℂ) : ℂ := (v0729 X Y k)+(v0730 X Y k)
theorem e0731_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0731) = v0731 X Y k := by
  simp only [e0731,v0731,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0729_eval,e0730_eval]
def e0732 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0723
def v0732 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0723 X Y k)
theorem e0732_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0732) = v0732 X Y k := by
  simp only [e0732,v0732,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0723_eval]
def e0733 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0732 e0001
def v0733 (X Y k : ℂ) : ℂ := (v0732 X Y k)*(v0001 X Y k)
theorem e0733_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0733) = v0733 X Y k := by
  simp only [e0733,v0733,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0732_eval,e0001_eval]
def e0734 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0731 e0733
def v0734 (X Y k : ℂ) : ℂ := (v0731 X Y k)+(v0733 X Y k)
theorem e0734_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0734) = v0734 X Y k := by
  simp only [e0734,v0734,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0731_eval,e0733_eval]
def e0735 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0734 e0036
def v0735 (X Y k : ℂ) : ℂ := (v0734 X Y k)*(v0036 X Y k)
theorem e0735_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0735) = v0735 X Y k := by
  simp only [e0735,v0735,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0734_eval,e0036_eval]
def e0736 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0735
def v0736 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0735 X Y k)
theorem e0736_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0736) = v0736 X Y k := by
  simp only [e0736,v0736,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0735_eval]
def e0737 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0736 e0062
def v0737 (X Y k : ℂ) : ℂ := (v0736 X Y k)*(v0062 X Y k)
theorem e0737_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0737) = v0737 X Y k := by
  simp only [e0737,v0737,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0736_eval,e0062_eval]
def e0738 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0728 e0737
def v0738 (X Y k : ℂ) : ℂ := (v0728 X Y k)+(v0737 X Y k)
theorem e0738_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0738) = v0738 X Y k := by
  simp only [e0738,v0738,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0728_eval,e0737_eval]
def e0739 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0710
def v0739 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0710 X Y k)
theorem e0739_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0739) = v0739 X Y k := by
  simp only [e0739,v0739,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0710_eval]
def e0740 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0386 e0006
def v0740 (X Y k : ℂ) : ℂ := (v0386 X Y k)*(v0006 X Y k)
theorem e0740_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0740) = v0740 X Y k := by
  simp only [e0740,v0740,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0386_eval,e0006_eval]
def e0741 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0389
def v0741 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0389 X Y k)
theorem e0741_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0741) = v0741 X Y k := by
  simp only [e0741,v0741,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0389_eval]
def e0742 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0741 e0001
def v0742 (X Y k : ℂ) : ℂ := (v0741 X Y k)*(v0001 X Y k)
theorem e0742_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0742) = v0742 X Y k := by
  simp only [e0742,v0742,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0741_eval,e0001_eval]
def e0743 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0740 e0742
def v0743 (X Y k : ℂ) : ℂ := (v0740 X Y k)+(v0742 X Y k)
theorem e0743_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0743) = v0743 X Y k := by
  simp only [e0743,v0743,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0740_eval,e0742_eval]
def e0744 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0743
def v0744 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0743 X Y k)
theorem e0744_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0744) = v0744 X Y k := by
  simp only [e0744,v0744,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0743_eval]
def e0745 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0739 e0744
def v0745 (X Y k : ℂ) : ℂ := (v0739 X Y k)*(v0744 X Y k)
theorem e0745_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0745) = v0745 X Y k := by
  simp only [e0745,v0745,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0739_eval,e0744_eval]
def e0746 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0719
def v0746 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0719 X Y k)
theorem e0746_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0746) = v0746 X Y k := by
  simp only [e0746,v0746,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0719_eval]
def e0747 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0003 e0389
def v0747 (X Y k : ℂ) : ℂ := (v0003 X Y k)*(v0389 X Y k)
theorem e0747_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0747) = v0747 X Y k := by
  simp only [e0747,v0747,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0003_eval,e0389_eval]
def e0748 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0747
def v0748 (X Y k : ℂ) : ℂ := -(v0747 X Y k)
theorem e0748_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0748) = v0748 X Y k := by
  simp only [e0748,v0748,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0747_eval]
def e0749 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0746 e0748
def v0749 (X Y k : ℂ) : ℂ := (v0746 X Y k)*(v0748 X Y k)
theorem e0749_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0749) = v0749 X Y k := by
  simp only [e0749,v0749,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0746_eval,e0748_eval]
def e0750 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0749
def v0750 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0749 X Y k)
theorem e0750_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0750) = v0750 X Y k := by
  simp only [e0750,v0750,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0749_eval]
def e0751 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0750 e0725
def v0751 (X Y k : ℂ) : ℂ := (v0750 X Y k)*(v0725 X Y k)
theorem e0751_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0751) = v0751 X Y k := by
  simp only [e0751,v0751,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0750_eval,e0725_eval]
def e0752 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0745 e0751
def v0752 (X Y k : ℂ) : ℂ := (v0745 X Y k)+(v0751 X Y k)
theorem e0752_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0752) = v0752 X Y k := by
  simp only [e0752,v0752,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0745_eval,e0751_eval]
def e0753 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0752 e0346
def v0753 (X Y k : ℂ) : ℂ := (v0752 X Y k)*(v0346 X Y k)
theorem e0753_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0753) = v0753 X Y k := by
  simp only [e0753,v0753,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0752_eval,e0346_eval]
def e0754 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0739 e0748
def v0754 (X Y k : ℂ) : ℂ := (v0739 X Y k)*(v0748 X Y k)
theorem e0754_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0754) = v0754 X Y k := by
  simp only [e0754,v0754,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0739_eval,e0748_eval]
def e0755 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0746 e0744
def v0755 (X Y k : ℂ) : ℂ := (v0746 X Y k)*(v0744 X Y k)
theorem e0755_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0755) = v0755 X Y k := by
  simp only [e0755,v0755,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0746_eval,e0744_eval]
def e0756 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0754 e0755
def v0756 (X Y k : ℂ) : ℂ := (v0754 X Y k)+(v0755 X Y k)
theorem e0756_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0756) = v0756 X Y k := by
  simp only [e0756,v0756,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0754_eval,e0755_eval]
def e0757 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0749
def v0757 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0749 X Y k)
theorem e0757_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0757) = v0757 X Y k := by
  simp only [e0757,v0757,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0749_eval]
def e0758 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0757 e0001
def v0758 (X Y k : ℂ) : ℂ := (v0757 X Y k)*(v0001 X Y k)
theorem e0758_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0758) = v0758 X Y k := by
  simp only [e0758,v0758,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0757_eval,e0001_eval]
def e0759 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0756 e0758
def v0759 (X Y k : ℂ) : ℂ := (v0756 X Y k)+(v0758 X Y k)
theorem e0759_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0759) = v0759 X Y k := by
  simp only [e0759,v0759,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0756_eval,e0758_eval]
def e0760 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0759 e0348
def v0760 (X Y k : ℂ) : ℂ := (v0759 X Y k)*(v0348 X Y k)
theorem e0760_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0760) = v0760 X Y k := by
  simp only [e0760,v0760,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0759_eval,e0348_eval]
def e0761 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0760
def v0761 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0760 X Y k)
theorem e0761_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0761) = v0761 X Y k := by
  simp only [e0761,v0761,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0760_eval]
def e0762 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0761 e0062
def v0762 (X Y k : ℂ) : ℂ := (v0761 X Y k)*(v0062 X Y k)
theorem e0762_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0762) = v0762 X Y k := by
  simp only [e0762,v0762,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0761_eval,e0062_eval]
def e0763 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0753 e0762
def v0763 (X Y k : ℂ) : ℂ := (v0753 X Y k)+(v0762 X Y k)
theorem e0763_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0763) = v0763 X Y k := by
  simp only [e0763,v0763,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0753_eval,e0762_eval]
def e0764 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0407 e0006
def v0764 (X Y k : ℂ) : ℂ := (v0407 X Y k)*(v0006 X Y k)
theorem e0764_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0764) = v0764 X Y k := by
  simp only [e0764,v0764,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0407_eval,e0006_eval]
def e0765 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0764 e0376
def v0765 (X Y k : ℂ) : ℂ := (v0764 X Y k)*(v0376 X Y k)
theorem e0765_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0765) = v0765 X Y k := by
  simp only [e0765,v0765,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0764_eval,e0376_eval]
def e0766 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0765 e0113
def v0766 (X Y k : ℂ) : ℂ := (v0765 X Y k)*(v0113 X Y k)
theorem e0766_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0766) = v0766 X Y k := by
  simp only [e0766,v0766,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0765_eval,e0113_eval]
def e0767 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0766 e0115
def v0767 (X Y k : ℂ) : ℂ := (v0766 X Y k)*(v0115 X Y k)
theorem e0767_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0767) = v0767 X Y k := by
  simp only [e0767,v0767,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0766_eval,e0115_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
