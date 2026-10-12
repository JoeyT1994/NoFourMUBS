import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions30
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1488 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1480 e0748
def v1488 (X Y k : ℂ) : ℂ := (v1480 X Y k)*(v0748 X Y k)
theorem e1488_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1488) = v1488 X Y k := by
  simp only [e1488,v1488,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1480_eval,e0748_eval]
def e1489 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1488 e0001
def v1489 (X Y k : ℂ) : ℂ := (v1488 X Y k)*(v0001 X Y k)
theorem e1489_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1489) = v1489 X Y k := by
  simp only [e1489,v1489,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1488_eval,e0001_eval]
def e1490 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1482 e0744
def v1490 (X Y k : ℂ) : ℂ := (v1482 X Y k)*(v0744 X Y k)
theorem e1490_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1490) = v1490 X Y k := by
  simp only [e1490,v1490,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1482_eval,e0744_eval]
def e1491 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1489 e1490
def v1491 (X Y k : ℂ) : ℂ := (v1489 X Y k)+(v1490 X Y k)
theorem e1491_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1491) = v1491 X Y k := by
  simp only [e1491,v1491,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1489_eval,e1490_eval]
def e1492 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1483
def v1492 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1483 X Y k)
theorem e1492_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1492) = v1492 X Y k := by
  simp only [e1492,v1492,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1483_eval]
def e1493 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1492 e0001
def v1493 (X Y k : ℂ) : ℂ := (v1492 X Y k)*(v0001 X Y k)
theorem e1493_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1493) = v1493 X Y k := by
  simp only [e1493,v1493,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1492_eval,e0001_eval]
def e1494 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1491 e1493
def v1494 (X Y k : ℂ) : ℂ := (v1491 X Y k)+(v1493 X Y k)
theorem e1494_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1494) = v1494 X Y k := by
  simp only [e1494,v1494,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1491_eval,e1493_eval]
def e1495 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1494 e0159
def v1495 (X Y k : ℂ) : ℂ := (v1494 X Y k)*(v0159 X Y k)
theorem e1495_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1495) = v1495 X Y k := by
  simp only [e1495,v1495,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1494_eval,e0159_eval]
def e1496 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1495
def v1496 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1495 X Y k)
theorem e1496_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1496) = v1496 X Y k := by
  simp only [e1496,v1496,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1495_eval]
def e1497 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1496 e0061
def v1497 (X Y k : ℂ) : ℂ := (v1496 X Y k)*(v0061 X Y k)
theorem e1497_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1497) = v1497 X Y k := by
  simp only [e1497,v1497,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1496_eval,e0061_eval]
def e1498 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1487 e1497
def v1498 (X Y k : ℂ) : ℂ := (v1487 X Y k)+(v1497 X Y k)
theorem e1498_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1498) = v1498 X Y k := by
  simp only [e1498,v1498,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1487_eval,e1497_eval]
def e1499 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1268 e0376
def v1499 (X Y k : ℂ) : ℂ := (v1268 X Y k)*(v0376 X Y k)
theorem e1499_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1499) = v1499 X Y k := by
  simp only [e1499,v1499,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1268_eval,e0376_eval]
def e1500 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1499 e0113
def v1500 (X Y k : ℂ) : ℂ := (v1499 X Y k)*(v0113 X Y k)
theorem e1500_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1500) = v1500 X Y k := by
  simp only [e1500,v1500,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1499_eval,e0113_eval]
def e1501 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1500 e0115
def v1501 (X Y k : ℂ) : ℂ := (v1500 X Y k)*(v0115 X Y k)
theorem e1501_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1501) = v1501 X Y k := by
  simp only [e1501,v1501,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1500_eval,e0115_eval]
def e1502 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1501 e0822
def v1502 (X Y k : ℂ) : ℂ := (v1501 X Y k)*(v0822 X Y k)
theorem e1502_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1502) = v1502 X Y k := by
  simp only [e1502,v1502,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1501_eval,e0822_eval]
def e1503 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1502 e0824
def v1503 (X Y k : ℂ) : ℂ := (v1502 X Y k)*(v0824 X Y k)
theorem e1503_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1503) = v1503 X Y k := by
  simp only [e1503,v1503,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1502_eval,e0824_eval]
def e1504 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1503 e0117
def v1504 (X Y k : ℂ) : ℂ := (v1503 X Y k)*(v0117 X Y k)
theorem e1504_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1504) = v1504 X Y k := by
  simp only [e1504,v1504,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1503_eval,e0117_eval]
def e1505 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1504 e0119
def v1505 (X Y k : ℂ) : ℂ := (v1504 X Y k)*(v0119 X Y k)
theorem e1505_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1505) = v1505 X Y k := by
  simp only [e1505,v1505,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1504_eval,e0119_eval]
def e1506 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1498 e1505
def v1506 (X Y k : ℂ) : ℂ := (v1498 X Y k)*(v1505 X Y k)
theorem e1506_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1506) = v1506 X Y k := by
  simp only [e1506,v1506,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1498_eval,e1505_eval]
def e1507 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e1224
def v1507 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v1224 X Y k)
theorem e1507_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1507) = v1507 X Y k := by
  simp only [e1507,v1507,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e1224_eval]
def e1508 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1507 e0305
def v1508 (X Y k : ℂ) : ℂ := (v1507 X Y k)*(v0305 X Y k)
theorem e1508_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1508) = v1508 X Y k := by
  simp only [e1508,v1508,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1507_eval,e0305_eval]
def e1509 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1508 e0001
def v1509 (X Y k : ℂ) : ℂ := (v1508 X Y k)*(v0001 X Y k)
theorem e1509_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1509) = v1509 X Y k := by
  simp only [e1509,v1509,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1508_eval,e0001_eval]
def e1510 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e1228
def v1510 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v1228 X Y k)
theorem e1510_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1510) = v1510 X Y k := by
  simp only [e1510,v1510,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e1228_eval]
def e1511 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1510 e0308
def v1511 (X Y k : ℂ) : ℂ := (v1510 X Y k)*(v0308 X Y k)
theorem e1511_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1511) = v1511 X Y k := by
  simp only [e1511,v1511,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1510_eval,e0308_eval]
def e1512 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1511
def v1512 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1511 X Y k)
theorem e1512_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1512) = v1512 X Y k := by
  simp only [e1512,v1512,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1511_eval]
def e1513 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1512 e0078
def v1513 (X Y k : ℂ) : ℂ := (v1512 X Y k)*(v0078 X Y k)
theorem e1513_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1513) = v1513 X Y k := by
  simp only [e1513,v1513,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1512_eval,e0078_eval]
def e1514 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1509 e1513
def v1514 (X Y k : ℂ) : ℂ := (v1509 X Y k)+(v1513 X Y k)
theorem e1514_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1514) = v1514 X Y k := by
  simp only [e1514,v1514,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1509_eval,e1513_eval]
def e1515 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0003 6
def v1515 (X Y k : ℂ) : ℂ := (v0003 X Y k)^6
theorem e1515_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1515) = v1515 X Y k := by
  simp only [e1515,v1515,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0003_eval]
def e1516 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0146 e1515
def v1516 (X Y k : ℂ) : ℂ := (v0146 X Y k)*(v1515 X Y k)
theorem e1516_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1516) = v1516 X Y k := by
  simp only [e1516,v1516,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0146_eval,e1515_eval]
def e1517 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1516 e0222
def v1517 (X Y k : ℂ) : ℂ := (v1516 X Y k)*(v0222 X Y k)
theorem e1517_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1517) = v1517 X Y k := by
  simp only [e1517,v1517,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1516_eval,e0222_eval]
def e1518 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1517 e0337
def v1518 (X Y k : ℂ) : ℂ := (v1517 X Y k)*(v0337 X Y k)
theorem e1518_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1518) = v1518 X Y k := by
  simp only [e1518,v1518,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1517_eval,e0337_eval]
def e1519 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1518 e0113
def v1519 (X Y k : ℂ) : ℂ := (v1518 X Y k)*(v0113 X Y k)
theorem e1519_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1519) = v1519 X Y k := by
  simp only [e1519,v1519,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1518_eval,e0113_eval]
def e1520 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1519 e0115
def v1520 (X Y k : ℂ) : ℂ := (v1519 X Y k)*(v0115 X Y k)
theorem e1520_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1520) = v1520 X Y k := by
  simp only [e1520,v1520,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1519_eval,e0115_eval]
def e1521 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1520 e0019
def v1521 (X Y k : ℂ) : ℂ := (v1520 X Y k)*(v0019 X Y k)
theorem e1521_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1521) = v1521 X Y k := by
  simp only [e1521,v1521,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1520_eval,e0019_eval]
def e1522 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1521 e0022
def v1522 (X Y k : ℂ) : ℂ := (v1521 X Y k)*(v0022 X Y k)
theorem e1522_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1522) = v1522 X Y k := by
  simp only [e1522,v1522,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1521_eval,e0022_eval]
def e1523 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1522 e0117
def v1523 (X Y k : ℂ) : ℂ := (v1522 X Y k)*(v0117 X Y k)
theorem e1523_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1523) = v1523 X Y k := by
  simp only [e1523,v1523,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1522_eval,e0117_eval]
def e1524 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1523 e0119
def v1524 (X Y k : ℂ) : ℂ := (v1523 X Y k)*(v0119 X Y k)
theorem e1524_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1524) = v1524 X Y k := by
  simp only [e1524,v1524,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1523_eval,e0119_eval]
def e1525 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1514 e1524
def v1525 (X Y k : ℂ) : ℂ := (v1514 X Y k)*(v1524 X Y k)
theorem e1525_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1525) = v1525 X Y k := by
  simp only [e1525,v1525,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1514_eval,e1524_eval]
def e1526 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e1108
def v1526 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v1108 X Y k)
theorem e1526_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1526) = v1526 X Y k := by
  simp only [e1526,v1526,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e1108_eval]
def e1527 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1526 e1108
def v1527 (X Y k : ℂ) : ℂ := (v1526 X Y k)*(v1108 X Y k)
theorem e1527_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1527) = v1527 X Y k := by
  simp only [e1527,v1527,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1526_eval,e1108_eval]
def e1528 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e1112
def v1528 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v1112 X Y k)
theorem e1528_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1528) = v1528 X Y k := by
  simp only [e1528,v1528,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e1112_eval]
def e1529 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1528 e1112
def v1529 (X Y k : ℂ) : ℂ := (v1528 X Y k)*(v1112 X Y k)
theorem e1529_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1529) = v1529 X Y k := by
  simp only [e1529,v1529,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1528_eval,e1112_eval]
def e1530 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1529
def v1530 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1529 X Y k)
theorem e1530_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1530) = v1530 X Y k := by
  simp only [e1530,v1530,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1529_eval]
def e1531 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1530 e0475
def v1531 (X Y k : ℂ) : ℂ := (v1530 X Y k)*(v0475 X Y k)
theorem e1531_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1531) = v1531 X Y k := by
  simp only [e1531,v1531,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1530_eval,e0475_eval]
def e1532 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1527 e1531
def v1532 (X Y k : ℂ) : ℂ := (v1527 X Y k)+(v1531 X Y k)
theorem e1532_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1532) = v1532 X Y k := by
  simp only [e1532,v1532,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1527_eval,e1531_eval]
def e1533 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1532 e0065
def v1533 (X Y k : ℂ) : ℂ := (v1532 X Y k)*(v0065 X Y k)
theorem e1533_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1533) = v1533 X Y k := by
  simp only [e1533,v1533,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1532_eval,e0065_eval]
def e1534 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1526 e1112
def v1534 (X Y k : ℂ) : ℂ := (v1526 X Y k)*(v1112 X Y k)
theorem e1534_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1534) = v1534 X Y k := by
  simp only [e1534,v1534,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1526_eval,e1112_eval]
def e1535 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1528 e1108
def v1535 (X Y k : ℂ) : ℂ := (v1528 X Y k)*(v1108 X Y k)
theorem e1535_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1535) = v1535 X Y k := by
  simp only [e1535,v1535,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1528_eval,e1108_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
