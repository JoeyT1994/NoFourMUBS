import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions32
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1584 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1576 e0236
def v1584 (X Y k : ℂ) : ℂ := (v1576 X Y k)*(v0236 X Y k)
theorem e1584_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1584) = v1584 X Y k := by
  simp only [e1584,v1584,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1576_eval,e0236_eval]
def e1585 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1584 e0250
def v1585 (X Y k : ℂ) : ℂ := (v1584 X Y k)*(v0250 X Y k)
theorem e1585_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1585) = v1585 X Y k := by
  simp only [e1585,v1585,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1584_eval,e0250_eval]
def e1586 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1583 e1585
def v1586 (X Y k : ℂ) : ℂ := (v1583 X Y k)+(v1585 X Y k)
theorem e1586_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1586) = v1586 X Y k := by
  simp only [e1586,v1586,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1583_eval,e1585_eval]
def e1587 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1577
def v1587 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1577 X Y k)
theorem e1587_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1587) = v1587 X Y k := by
  simp only [e1587,v1587,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1577_eval]
def e1588 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1586 e1587
def v1588 (X Y k : ℂ) : ℂ := (v1586 X Y k)+(v1587 X Y k)
theorem e1588_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1588) = v1588 X Y k := by
  simp only [e1588,v1588,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1586_eval,e1587_eval]
def e1589 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1588 e0417
def v1589 (X Y k : ℂ) : ℂ := (v1588 X Y k)*(v0417 X Y k)
theorem e1589_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1589) = v1589 X Y k := by
  simp only [e1589,v1589,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1588_eval,e0417_eval]
def e1590 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1589
def v1590 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1589 X Y k)
theorem e1590_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1590) = v1590 X Y k := by
  simp only [e1590,v1590,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1589_eval]
def e1591 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1590 e0009
def v1591 (X Y k : ℂ) : ℂ := (v1590 X Y k)*(v0009 X Y k)
theorem e1591_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1591) = v1591 X Y k := by
  simp only [e1591,v1591,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1590_eval,e0009_eval]
def e1592 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1582 e1591
def v1592 (X Y k : ℂ) : ℂ := (v1582 X Y k)+(v1591 X Y k)
theorem e1592_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1592) = v1592 X Y k := by
  simp only [e1592,v1592,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1582_eval,e1591_eval]
def e1593 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0292 e1515
def v1593 (X Y k : ℂ) : ℂ := (v0292 X Y k)*(v1515 X Y k)
theorem e1593_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1593) = v1593 X Y k := by
  simp only [e1593,v1593,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0292_eval,e1515_eval]
def e1594 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1593 e0110
def v1594 (X Y k : ℂ) : ℂ := (v1593 X Y k)*(v0110 X Y k)
theorem e1594_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1594) = v1594 X Y k := by
  simp only [e1594,v1594,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1593_eval,e0110_eval]
def e1595 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1594 e0999
def v1595 (X Y k : ℂ) : ℂ := (v1594 X Y k)*(v0999 X Y k)
theorem e1595_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1595) = v1595 X Y k := by
  simp only [e1595,v1595,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1594_eval,e0999_eval]
def e1596 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1595 e0113
def v1596 (X Y k : ℂ) : ℂ := (v1595 X Y k)*(v0113 X Y k)
theorem e1596_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1596) = v1596 X Y k := by
  simp only [e1596,v1596,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1595_eval,e0113_eval]
def e1597 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1596 e0115
def v1597 (X Y k : ℂ) : ℂ := (v1596 X Y k)*(v0115 X Y k)
theorem e1597_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1597) = v1597 X Y k := by
  simp only [e1597,v1597,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1596_eval,e0115_eval]
def e1598 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1597 e0019
def v1598 (X Y k : ℂ) : ℂ := (v1597 X Y k)*(v0019 X Y k)
theorem e1598_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1598) = v1598 X Y k := by
  simp only [e1598,v1598,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1597_eval,e0019_eval]
def e1599 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1598 e0022
def v1599 (X Y k : ℂ) : ℂ := (v1598 X Y k)*(v0022 X Y k)
theorem e1599_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1599) = v1599 X Y k := by
  simp only [e1599,v1599,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1598_eval,e0022_eval]
def e1600 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1599 e0117
def v1600 (X Y k : ℂ) : ℂ := (v1599 X Y k)*(v0117 X Y k)
theorem e1600_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1600) = v1600 X Y k := by
  simp only [e1600,v1600,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1599_eval,e0117_eval]
def e1601 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1600 e0119
def v1601 (X Y k : ℂ) : ℂ := (v1600 X Y k)*(v0119 X Y k)
theorem e1601_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1601) = v1601 X Y k := by
  simp only [e1601,v1601,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1600_eval,e0119_eval]
def e1602 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1592 e1601
def v1602 (X Y k : ℂ) : ℂ := (v1592 X Y k)*(v1601 X Y k)
theorem e1602_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1602) = v1602 X Y k := by
  simp only [e1602,v1602,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1592_eval,e1601_eval]
def e1603 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1202 e1108
def v1603 (X Y k : ℂ) : ℂ := (v1202 X Y k)*(v1108 X Y k)
theorem e1603_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1603) = v1603 X Y k := by
  simp only [e1603,v1603,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1202_eval,e1108_eval]
def e1604 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1603 e0272
def v1604 (X Y k : ℂ) : ℂ := (v1603 X Y k)*(v0272 X Y k)
theorem e1604_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1604) = v1604 X Y k := by
  simp only [e1604,v1604,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1603_eval,e0272_eval]
def e1605 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1202 e1112
def v1605 (X Y k : ℂ) : ℂ := (v1202 X Y k)*(v1112 X Y k)
theorem e1605_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1605) = v1605 X Y k := by
  simp only [e1605,v1605,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1202_eval,e1112_eval]
def e1606 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1605 e0274
def v1606 (X Y k : ℂ) : ℂ := (v1605 X Y k)*(v0274 X Y k)
theorem e1606_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1606) = v1606 X Y k := by
  simp only [e1606,v1606,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1605_eval,e0274_eval]
def e1607 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1606
def v1607 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1606 X Y k)
theorem e1607_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1607) = v1607 X Y k := by
  simp only [e1607,v1607,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1606_eval]
def e1608 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1607 e0078
def v1608 (X Y k : ℂ) : ℂ := (v1607 X Y k)*(v0078 X Y k)
theorem e1608_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1608) = v1608 X Y k := by
  simp only [e1608,v1608,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1607_eval,e0078_eval]
def e1609 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1604 e1608
def v1609 (X Y k : ℂ) : ℂ := (v1604 X Y k)+(v1608 X Y k)
theorem e1609_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1609) = v1609 X Y k := by
  simp only [e1609,v1609,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1604_eval,e1608_eval]
def e1610 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0002 e1515
def v1610 (X Y k : ℂ) : ℂ := (v0002 X Y k)*(v1515 X Y k)
theorem e1610_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1610) = v1610 X Y k := by
  simp only [e1610,v1610,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0002_eval,e1515_eval]
def e1611 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1610 e0335
def v1611 (X Y k : ℂ) : ℂ := (v1610 X Y k)*(v0335 X Y k)
theorem e1611_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1611) = v1611 X Y k := by
  simp only [e1611,v1611,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1610_eval,e0335_eval]
def e1612 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1611 e0337
def v1612 (X Y k : ℂ) : ℂ := (v1611 X Y k)*(v0337 X Y k)
theorem e1612_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1612) = v1612 X Y k := by
  simp only [e1612,v1612,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1611_eval,e0337_eval]
def e1613 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1612 e0013
def v1613 (X Y k : ℂ) : ℂ := (v1612 X Y k)*(v0013 X Y k)
theorem e1613_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1613) = v1613 X Y k := by
  simp only [e1613,v1613,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1612_eval,e0013_eval]
def e1614 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1613 e0016
def v1614 (X Y k : ℂ) : ℂ := (v1613 X Y k)*(v0016 X Y k)
theorem e1614_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1614) = v1614 X Y k := by
  simp only [e1614,v1614,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1613_eval,e0016_eval]
def e1615 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1614 e0019
def v1615 (X Y k : ℂ) : ℂ := (v1614 X Y k)*(v0019 X Y k)
theorem e1615_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1615) = v1615 X Y k := by
  simp only [e1615,v1615,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1614_eval,e0019_eval]
def e1616 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1615 e0022
def v1616 (X Y k : ℂ) : ℂ := (v1615 X Y k)*(v0022 X Y k)
theorem e1616_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1616) = v1616 X Y k := by
  simp only [e1616,v1616,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1615_eval,e0022_eval]
def e1617 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1616 e0117
def v1617 (X Y k : ℂ) : ℂ := (v1616 X Y k)*(v0117 X Y k)
theorem e1617_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1617) = v1617 X Y k := by
  simp only [e1617,v1617,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1616_eval,e0117_eval]
def e1618 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1617 e0119
def v1618 (X Y k : ℂ) : ℂ := (v1617 X Y k)*(v0119 X Y k)
theorem e1618_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1618) = v1618 X Y k := by
  simp only [e1618,v1618,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1617_eval,e0119_eval]
def e1619 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1609 e1618
def v1619 (X Y k : ℂ) : ℂ := (v1609 X Y k)*(v1618 X Y k)
theorem e1619_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1619) = v1619 X Y k := by
  simp only [e1619,v1619,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1609_eval,e1618_eval]
def e1620 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0867
def v1620 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0867 X Y k)
theorem e1620_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1620) = v1620 X Y k := by
  simp only [e1620,v1620,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0867_eval]
def e1621 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1620 e0867
def v1621 (X Y k : ℂ) : ℂ := (v1620 X Y k)*(v0867 X Y k)
theorem e1621_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1621) = v1621 X Y k := by
  simp only [e1621,v1621,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1620_eval,e0867_eval]
def e1622 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0871
def v1622 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0871 X Y k)
theorem e1622_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1622) = v1622 X Y k := by
  simp only [e1622,v1622,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0871_eval]
def e1623 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1622 e0871
def v1623 (X Y k : ℂ) : ℂ := (v1622 X Y k)*(v0871 X Y k)
theorem e1623_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1623) = v1623 X Y k := by
  simp only [e1623,v1623,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1622_eval,e0871_eval]
def e1624 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1623
def v1624 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1623 X Y k)
theorem e1624_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1624) = v1624 X Y k := by
  simp only [e1624,v1624,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1623_eval]
def e1625 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1624 e0475
def v1625 (X Y k : ℂ) : ℂ := (v1624 X Y k)*(v0475 X Y k)
theorem e1625_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1625) = v1625 X Y k := by
  simp only [e1625,v1625,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1624_eval,e0475_eval]
def e1626 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1621 e1625
def v1626 (X Y k : ℂ) : ℂ := (v1621 X Y k)+(v1625 X Y k)
theorem e1626_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1626) = v1626 X Y k := by
  simp only [e1626,v1626,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1621_eval,e1625_eval]
def e1627 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1626 e0042
def v1627 (X Y k : ℂ) : ℂ := (v1626 X Y k)*(v0042 X Y k)
theorem e1627_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1627) = v1627 X Y k := by
  simp only [e1627,v1627,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1626_eval,e0042_eval]
def e1628 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1620 e0871
def v1628 (X Y k : ℂ) : ℂ := (v1620 X Y k)*(v0871 X Y k)
theorem e1628_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1628) = v1628 X Y k := by
  simp only [e1628,v1628,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1620_eval,e0871_eval]
def e1629 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1622 e0867
def v1629 (X Y k : ℂ) : ℂ := (v1622 X Y k)*(v0867 X Y k)
theorem e1629_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1629) = v1629 X Y k := by
  simp only [e1629,v1629,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1622_eval,e0867_eval]
def e1630 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1628 e1629
def v1630 (X Y k : ℂ) : ℂ := (v1628 X Y k)+(v1629 X Y k)
theorem e1630_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1630) = v1630 X Y k := by
  simp only [e1630,v1630,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1628_eval,e1629_eval]
def e1631 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1623
def v1631 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1623 X Y k)
theorem e1631_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1631) = v1631 X Y k := by
  simp only [e1631,v1631,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1623_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
