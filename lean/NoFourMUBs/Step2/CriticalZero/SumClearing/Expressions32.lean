import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions31
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1536 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1534 e1535
def v1536 (X Y k : ℂ) : ℂ := (v1534 X Y k)+(v1535 X Y k)
theorem e1536_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1536) = v1536 X Y k := by
  simp only [e1536,v1536,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1534_eval,e1535_eval]
def e1537 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1529
def v1537 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1529 X Y k)
theorem e1537_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1537) = v1537 X Y k := by
  simp only [e1537,v1537,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1529_eval]
def e1538 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1536 e1537
def v1538 (X Y k : ℂ) : ℂ := (v1536 X Y k)+(v1537 X Y k)
theorem e1538_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1538) = v1538 X Y k := by
  simp only [e1538,v1538,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1536_eval,e1537_eval]
def e1539 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1538 e0075
def v1539 (X Y k : ℂ) : ℂ := (v1538 X Y k)*(v0075 X Y k)
theorem e1539_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1539) = v1539 X Y k := by
  simp only [e1539,v1539,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1538_eval,e0075_eval]
def e1540 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1539
def v1540 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1539 X Y k)
theorem e1540_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1540) = v1540 X Y k := by
  simp only [e1540,v1540,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1539_eval]
def e1541 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1540 e0541
def v1541 (X Y k : ℂ) : ℂ := (v1540 X Y k)*(v0541 X Y k)
theorem e1541_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1541) = v1541 X Y k := by
  simp only [e1541,v1541,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1540_eval,e0541_eval]
def e1542 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1533 e1541
def v1542 (X Y k : ℂ) : ℂ := (v1533 X Y k)+(v1541 X Y k)
theorem e1542_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1542) = v1542 X Y k := by
  simp only [e1542,v1542,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1533_eval,e1541_eval]
def e1543 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0818 e0999
def v1543 (X Y k : ℂ) : ℂ := (v0818 X Y k)*(v0999 X Y k)
theorem e1543_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1543) = v1543 X Y k := by
  simp only [e1543,v1543,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0818_eval,e0999_eval]
def e1544 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1543 e0177
def v1544 (X Y k : ℂ) : ℂ := (v1543 X Y k)*(v0177 X Y k)
theorem e1544_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1544) = v1544 X Y k := by
  simp only [e1544,v1544,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1543_eval,e0177_eval]
def e1545 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1544 e0179
def v1545 (X Y k : ℂ) : ℂ := (v1544 X Y k)*(v0179 X Y k)
theorem e1545_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1545) = v1545 X Y k := by
  simp only [e1545,v1545,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1544_eval,e0179_eval]
def e1546 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1545 e0822
def v1546 (X Y k : ℂ) : ℂ := (v1545 X Y k)*(v0822 X Y k)
theorem e1546_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1546) = v1546 X Y k := by
  simp only [e1546,v1546,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1545_eval,e0822_eval]
def e1547 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1546 e0824
def v1547 (X Y k : ℂ) : ℂ := (v1546 X Y k)*(v0824 X Y k)
theorem e1547_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1547) = v1547 X Y k := by
  simp only [e1547,v1547,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1546_eval,e0824_eval]
def e1548 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1542 e1547
def v1548 (X Y k : ℂ) : ℂ := (v1542 X Y k)*(v1547 X Y k)
theorem e1548_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1548) = v1548 X Y k := by
  simp only [e1548,v1548,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1542_eval,e1547_eval]
def e1549 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1526 e0867
def v1549 (X Y k : ℂ) : ℂ := (v1526 X Y k)*(v0867 X Y k)
theorem e1549_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1549) = v1549 X Y k := by
  simp only [e1549,v1549,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1526_eval,e0867_eval]
def e1550 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1528 e0871
def v1550 (X Y k : ℂ) : ℂ := (v1528 X Y k)*(v0871 X Y k)
theorem e1550_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1550) = v1550 X Y k := by
  simp only [e1550,v1550,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1528_eval,e0871_eval]
def e1551 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1550
def v1551 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1550 X Y k)
theorem e1551_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1551) = v1551 X Y k := by
  simp only [e1551,v1551,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1550_eval]
def e1552 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1551 e0475
def v1552 (X Y k : ℂ) : ℂ := (v1551 X Y k)*(v0475 X Y k)
theorem e1552_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1552) = v1552 X Y k := by
  simp only [e1552,v1552,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1551_eval,e0475_eval]
def e1553 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1549 e1552
def v1553 (X Y k : ℂ) : ℂ := (v1549 X Y k)+(v1552 X Y k)
theorem e1553_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1553) = v1553 X Y k := by
  simp only [e1553,v1553,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1549_eval,e1552_eval]
def e1554 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1553 e0156
def v1554 (X Y k : ℂ) : ℂ := (v1553 X Y k)*(v0156 X Y k)
theorem e1554_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1554) = v1554 X Y k := by
  simp only [e1554,v1554,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1553_eval,e0156_eval]
def e1555 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1526 e0871
def v1555 (X Y k : ℂ) : ℂ := (v1526 X Y k)*(v0871 X Y k)
theorem e1555_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1555) = v1555 X Y k := by
  simp only [e1555,v1555,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1526_eval,e0871_eval]
def e1556 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1528 e0867
def v1556 (X Y k : ℂ) : ℂ := (v1528 X Y k)*(v0867 X Y k)
theorem e1556_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1556) = v1556 X Y k := by
  simp only [e1556,v1556,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1528_eval,e0867_eval]
def e1557 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1555 e1556
def v1557 (X Y k : ℂ) : ℂ := (v1555 X Y k)+(v1556 X Y k)
theorem e1557_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1557) = v1557 X Y k := by
  simp only [e1557,v1557,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1555_eval,e1556_eval]
def e1558 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1550
def v1558 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1550 X Y k)
theorem e1558_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1558) = v1558 X Y k := by
  simp only [e1558,v1558,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1550_eval]
def e1559 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1557 e1558
def v1559 (X Y k : ℂ) : ℂ := (v1557 X Y k)+(v1558 X Y k)
theorem e1559_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1559) = v1559 X Y k := by
  simp only [e1559,v1559,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1557_eval,e1558_eval]
def e1560 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1559 e0159
def v1560 (X Y k : ℂ) : ℂ := (v1559 X Y k)*(v0159 X Y k)
theorem e1560_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1560) = v1560 X Y k := by
  simp only [e1560,v1560,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1559_eval,e0159_eval]
def e1561 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1560
def v1561 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1560 X Y k)
theorem e1561_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1561) = v1561 X Y k := by
  simp only [e1561,v1561,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1560_eval]
def e1562 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1561 e0061
def v1562 (X Y k : ℂ) : ℂ := (v1561 X Y k)*(v0061 X Y k)
theorem e1562_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1562) = v1562 X Y k := by
  simp only [e1562,v1562,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1561_eval,e0061_eval]
def e1563 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1554 e1562
def v1563 (X Y k : ℂ) : ℂ := (v1554 X Y k)+(v1562 X Y k)
theorem e1563_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1563) = v1563 X Y k := by
  simp only [e1563,v1563,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1554_eval,e1562_eval]
def e1564 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1026 e0110
def v1564 (X Y k : ℂ) : ℂ := (v1026 X Y k)*(v0110 X Y k)
theorem e1564_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1564) = v1564 X Y k := by
  simp only [e1564,v1564,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1026_eval,e0110_eval]
def e1565 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1564 e0376
def v1565 (X Y k : ℂ) : ℂ := (v1564 X Y k)*(v0376 X Y k)
theorem e1565_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1565) = v1565 X Y k := by
  simp only [e1565,v1565,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1564_eval,e0376_eval]
def e1566 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1565 e0177
def v1566 (X Y k : ℂ) : ℂ := (v1565 X Y k)*(v0177 X Y k)
theorem e1566_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1566) = v1566 X Y k := by
  simp only [e1566,v1566,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1565_eval,e0177_eval]
def e1567 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1566 e0179
def v1567 (X Y k : ℂ) : ℂ := (v1566 X Y k)*(v0179 X Y k)
theorem e1567_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1567) = v1567 X Y k := by
  simp only [e1567,v1567,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1566_eval,e0179_eval]
def e1568 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1567 e0822
def v1568 (X Y k : ℂ) : ℂ := (v1567 X Y k)*(v0822 X Y k)
theorem e1568_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1568) = v1568 X Y k := by
  simp only [e1568,v1568,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1567_eval,e0822_eval]
def e1569 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1568 e0824
def v1569 (X Y k : ℂ) : ℂ := (v1568 X Y k)*(v0824 X Y k)
theorem e1569_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1569) = v1569 X Y k := by
  simp only [e1569,v1569,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1568_eval,e0824_eval]
def e1570 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1569 e0181
def v1570 (X Y k : ℂ) : ℂ := (v1569 X Y k)*(v0181 X Y k)
theorem e1570_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1570) = v1570 X Y k := by
  simp only [e1570,v1570,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1569_eval,e0181_eval]
def e1571 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1570 e0183
def v1571 (X Y k : ℂ) : ℂ := (v1570 X Y k)*(v0183 X Y k)
theorem e1571_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1571) = v1571 X Y k := by
  simp only [e1571,v1571,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1570_eval,e0183_eval]
def e1572 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1563 e1571
def v1572 (X Y k : ℂ) : ℂ := (v1563 X Y k)*(v1571 X Y k)
theorem e1572_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1572) = v1572 X Y k := by
  simp only [e1572,v1572,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1563_eval,e1571_eval]
def e1573 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e1108
def v1573 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v1108 X Y k)
theorem e1573_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1573) = v1573 X Y k := by
  simp only [e1573,v1573,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e1108_eval]
def e1574 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1573 e0236
def v1574 (X Y k : ℂ) : ℂ := (v1573 X Y k)*(v0236 X Y k)
theorem e1574_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1574) = v1574 X Y k := by
  simp only [e1574,v1574,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1573_eval,e0236_eval]
def e1575 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1574 e0001
def v1575 (X Y k : ℂ) : ℂ := (v1574 X Y k)*(v0001 X Y k)
theorem e1575_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1575) = v1575 X Y k := by
  simp only [e1575,v1575,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1574_eval,e0001_eval]
def e1576 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e1112
def v1576 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v1112 X Y k)
theorem e1576_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1576) = v1576 X Y k := by
  simp only [e1576,v1576,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e1112_eval]
def e1577 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1576 e0240
def v1577 (X Y k : ℂ) : ℂ := (v1576 X Y k)*(v0240 X Y k)
theorem e1577_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1577) = v1577 X Y k := by
  simp only [e1577,v1577,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1576_eval,e0240_eval]
def e1578 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1577
def v1578 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1577 X Y k)
theorem e1578_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1578) = v1578 X Y k := by
  simp only [e1578,v1578,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1577_eval]
def e1579 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1578 e0009
def v1579 (X Y k : ℂ) : ℂ := (v1578 X Y k)*(v0009 X Y k)
theorem e1579_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1579) = v1579 X Y k := by
  simp only [e1579,v1579,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1578_eval,e0009_eval]
def e1580 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1575 e1579
def v1580 (X Y k : ℂ) : ℂ := (v1575 X Y k)+(v1579 X Y k)
theorem e1580_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1580) = v1580 X Y k := by
  simp only [e1580,v1580,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1575_eval,e1579_eval]
def e1581 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1580 e0415
def v1581 (X Y k : ℂ) : ℂ := (v1580 X Y k)*(v0415 X Y k)
theorem e1581_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1581) = v1581 X Y k := by
  simp only [e1581,v1581,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1580_eval,e0415_eval]
def e1582 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1581 e0006
def v1582 (X Y k : ℂ) : ℂ := (v1581 X Y k)*(v0006 X Y k)
theorem e1582_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1582) = v1582 X Y k := by
  simp only [e1582,v1582,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1581_eval,e0006_eval]
def e1583 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1573 e0240
def v1583 (X Y k : ℂ) : ℂ := (v1573 X Y k)*(v0240 X Y k)
theorem e1583_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1583) = v1583 X Y k := by
  simp only [e1583,v1583,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1573_eval,e0240_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
