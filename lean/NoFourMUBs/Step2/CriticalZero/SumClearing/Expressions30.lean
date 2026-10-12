import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions29
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1440 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1437 e1439
def v1440 (X Y k : ℂ) : ℂ := (v1437 X Y k)+(v1439 X Y k)
theorem e1440_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1440) = v1440 X Y k := by
  simp only [e1440,v1440,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1437_eval,e1439_eval]
def e1441 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1432
def v1441 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1432 X Y k)
theorem e1441_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1441) = v1441 X Y k := by
  simp only [e1441,v1441,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1432_eval]
def e1442 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1441 e0001
def v1442 (X Y k : ℂ) : ℂ := (v1441 X Y k)*(v0001 X Y k)
theorem e1442_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1442) = v1442 X Y k := by
  simp only [e1442,v1442,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1441_eval,e0001_eval]
def e1443 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1440 e1442
def v1443 (X Y k : ℂ) : ℂ := (v1440 X Y k)+(v1442 X Y k)
theorem e1443_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1443) = v1443 X Y k := by
  simp only [e1443,v1443,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1440_eval,e1442_eval]
def e1444 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1443 e0124
def v1444 (X Y k : ℂ) : ℂ := (v1443 X Y k)*(v0124 X Y k)
theorem e1444_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1444) = v1444 X Y k := by
  simp only [e1444,v1444,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1443_eval,e0124_eval]
def e1445 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1444
def v1445 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1444 X Y k)
theorem e1445_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1445) = v1445 X Y k := by
  simp only [e1445,v1445,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1444_eval]
def e1446 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1445 e0061
def v1446 (X Y k : ℂ) : ℂ := (v1445 X Y k)*(v0061 X Y k)
theorem e1446_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1446) = v1446 X Y k := by
  simp only [e1446,v1446,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1445_eval,e0061_eval]
def e1447 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1436 e1446
def v1447 (X Y k : ℂ) : ℂ := (v1436 X Y k)+(v1446 X Y k)
theorem e1447_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1447) = v1447 X Y k := by
  simp only [e1447,v1447,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1436_eval,e1446_eval]
def e1448 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0009
def v1448 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0009 X Y k)
theorem e1448_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1448) = v1448 X Y k := by
  simp only [e1448,v1448,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0009_eval]
def e1449 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1448 e0228
def v1449 (X Y k : ℂ) : ℂ := (v1448 X Y k)*(v0228 X Y k)
theorem e1449_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1449) = v1449 X Y k := by
  simp only [e1449,v1449,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1448_eval,e0228_eval]
def e1450 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1449 e0230
def v1450 (X Y k : ℂ) : ℂ := (v1449 X Y k)*(v0230 X Y k)
theorem e1450_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1450) = v1450 X Y k := by
  simp only [e1450,v1450,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1449_eval,e0230_eval]
def e1451 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1450 e0117
def v1451 (X Y k : ℂ) : ℂ := (v1450 X Y k)*(v0117 X Y k)
theorem e1451_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1451) = v1451 X Y k := by
  simp only [e1451,v1451,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1450_eval,e0117_eval]
def e1452 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1451 e0119
def v1452 (X Y k : ℂ) : ℂ := (v1451 X Y k)*(v0119 X Y k)
theorem e1452_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1452) = v1452 X Y k := by
  simp only [e1452,v1452,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1451_eval,e0119_eval]
def e1453 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1447 e1452
def v1453 (X Y k : ℂ) : ℂ := (v1447 X Y k)*(v1452 X Y k)
theorem e1453_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1453) = v1453 X Y k := by
  simp only [e1453,v1453,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1447_eval,e1452_eval]
def e1454 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0716
def v1454 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0716 X Y k)
theorem e1454_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1454) = v1454 X Y k := by
  simp only [e1454,v1454,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0716_eval]
def e1455 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1454 e0415
def v1455 (X Y k : ℂ) : ℂ := (v1454 X Y k)*(v0415 X Y k)
theorem e1455_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1455) = v1455 X Y k := by
  simp only [e1455,v1455,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1454_eval,e0415_eval]
def e1456 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0722
def v1456 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0722 X Y k)
theorem e1456_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1456) = v1456 X Y k := by
  simp only [e1456,v1456,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0722_eval]
def e1457 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1456 e0417
def v1457 (X Y k : ℂ) : ℂ := (v1456 X Y k)*(v0417 X Y k)
theorem e1457_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1457) = v1457 X Y k := by
  simp only [e1457,v1457,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1456_eval,e0417_eval]
def e1458 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1457
def v1458 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1457 X Y k)
theorem e1458_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1458) = v1458 X Y k := by
  simp only [e1458,v1458,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1457_eval]
def e1459 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1458 e0127
def v1459 (X Y k : ℂ) : ℂ := (v1458 X Y k)*(v0127 X Y k)
theorem e1459_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1459) = v1459 X Y k := by
  simp only [e1459,v1459,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1458_eval,e0127_eval]
def e1460 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1455 e1459
def v1460 (X Y k : ℂ) : ℂ := (v1455 X Y k)+(v1459 X Y k)
theorem e1460_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1460) = v1460 X Y k := by
  simp only [e1460,v1460,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1455_eval,e1459_eval]
def e1461 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1460 e0415
def v1461 (X Y k : ℂ) : ℂ := (v1460 X Y k)*(v0415 X Y k)
theorem e1461_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1461) = v1461 X Y k := by
  simp only [e1461,v1461,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1460_eval,e0415_eval]
def e1462 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1461 e0006
def v1462 (X Y k : ℂ) : ℂ := (v1461 X Y k)*(v0006 X Y k)
theorem e1462_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1462) = v1462 X Y k := by
  simp only [e1462,v1462,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1461_eval,e0006_eval]
def e1463 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1454 e0417
def v1463 (X Y k : ℂ) : ℂ := (v1454 X Y k)*(v0417 X Y k)
theorem e1463_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1463) = v1463 X Y k := by
  simp only [e1463,v1463,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1454_eval,e0417_eval]
def e1464 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1456 e0415
def v1464 (X Y k : ℂ) : ℂ := (v1456 X Y k)*(v0415 X Y k)
theorem e1464_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1464) = v1464 X Y k := by
  simp only [e1464,v1464,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1456_eval,e0415_eval]
def e1465 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1464 e0135
def v1465 (X Y k : ℂ) : ℂ := (v1464 X Y k)*(v0135 X Y k)
theorem e1465_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1465) = v1465 X Y k := by
  simp only [e1465,v1465,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1464_eval,e0135_eval]
def e1466 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1463 e1465
def v1466 (X Y k : ℂ) : ℂ := (v1463 X Y k)+(v1465 X Y k)
theorem e1466_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1466) = v1466 X Y k := by
  simp only [e1466,v1466,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1463_eval,e1465_eval]
def e1467 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1457
def v1467 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1457 X Y k)
theorem e1467_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1467) = v1467 X Y k := by
  simp only [e1467,v1467,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1457_eval]
def e1468 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1467 e0001
def v1468 (X Y k : ℂ) : ℂ := (v1467 X Y k)*(v0001 X Y k)
theorem e1468_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1468) = v1468 X Y k := by
  simp only [e1468,v1468,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1467_eval,e0001_eval]
def e1469 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1466 e1468
def v1469 (X Y k : ℂ) : ℂ := (v1466 X Y k)+(v1468 X Y k)
theorem e1469_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1469) = v1469 X Y k := by
  simp only [e1469,v1469,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1466_eval,e1468_eval]
def e1470 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1469 e0417
def v1470 (X Y k : ℂ) : ℂ := (v1469 X Y k)*(v0417 X Y k)
theorem e1470_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1470) = v1470 X Y k := by
  simp only [e1470,v1470,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1469_eval,e0417_eval]
def e1471 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1470
def v1471 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1470 X Y k)
theorem e1471_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1471) = v1471 X Y k := by
  simp only [e1471,v1471,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1470_eval]
def e1472 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1471 e0061
def v1472 (X Y k : ℂ) : ℂ := (v1471 X Y k)*(v0061 X Y k)
theorem e1472_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1472) = v1472 X Y k := by
  simp only [e1472,v1472,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1471_eval,e0061_eval]
def e1473 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1462 e1472
def v1473 (X Y k : ℂ) : ℂ := (v1462 X Y k)+(v1472 X Y k)
theorem e1473_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1473) = v1473 X Y k := by
  simp only [e1473,v1473,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1462_eval,e1472_eval]
def e1474 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1268 e0009
def v1474 (X Y k : ℂ) : ℂ := (v1268 X Y k)*(v0009 X Y k)
theorem e1474_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1474) = v1474 X Y k := by
  simp only [e1474,v1474,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1268_eval,e0009_eval]
def e1475 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1474 e0822
def v1475 (X Y k : ℂ) : ℂ := (v1474 X Y k)*(v0822 X Y k)
theorem e1475_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1475) = v1475 X Y k := by
  simp only [e1475,v1475,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1474_eval,e0822_eval]
def e1476 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1475 e0824
def v1476 (X Y k : ℂ) : ℂ := (v1475 X Y k)*(v0824 X Y k)
theorem e1476_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1476) = v1476 X Y k := by
  simp only [e1476,v1476,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1475_eval,e0824_eval]
def e1477 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1476 e0181
def v1477 (X Y k : ℂ) : ℂ := (v1476 X Y k)*(v0181 X Y k)
theorem e1477_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1477) = v1477 X Y k := by
  simp only [e1477,v1477,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1476_eval,e0181_eval]
def e1478 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1477 e0183
def v1478 (X Y k : ℂ) : ℂ := (v1477 X Y k)*(v0183 X Y k)
theorem e1478_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1478) = v1478 X Y k := by
  simp only [e1478,v1478,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1477_eval,e0183_eval]
def e1479 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1473 e1478
def v1479 (X Y k : ℂ) : ℂ := (v1473 X Y k)*(v1478 X Y k)
theorem e1479_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1479) = v1479 X Y k := by
  simp only [e1479,v1479,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1473_eval,e1478_eval]
def e1480 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e1224
def v1480 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v1224 X Y k)
theorem e1480_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1480) = v1480 X Y k := by
  simp only [e1480,v1480,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e1224_eval]
def e1481 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1480 e0744
def v1481 (X Y k : ℂ) : ℂ := (v1480 X Y k)*(v0744 X Y k)
theorem e1481_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1481) = v1481 X Y k := by
  simp only [e1481,v1481,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1480_eval,e0744_eval]
def e1482 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e1228
def v1482 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v1228 X Y k)
theorem e1482_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1482) = v1482 X Y k := by
  simp only [e1482,v1482,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e1228_eval]
def e1483 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1482 e0748
def v1483 (X Y k : ℂ) : ℂ := (v1482 X Y k)*(v0748 X Y k)
theorem e1483_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1483) = v1483 X Y k := by
  simp only [e1483,v1483,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1482_eval,e0748_eval]
def e1484 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1483
def v1484 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1483 X Y k)
theorem e1484_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1484) = v1484 X Y k := by
  simp only [e1484,v1484,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1483_eval]
def e1485 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1484 e0585
def v1485 (X Y k : ℂ) : ℂ := (v1484 X Y k)*(v0585 X Y k)
theorem e1485_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1485) = v1485 X Y k := by
  simp only [e1485,v1485,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1484_eval,e0585_eval]
def e1486 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1481 e1485
def v1486 (X Y k : ℂ) : ℂ := (v1481 X Y k)+(v1485 X Y k)
theorem e1486_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1486) = v1486 X Y k := by
  simp only [e1486,v1486,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1481_eval,e1485_eval]
def e1487 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1486 e0156
def v1487 (X Y k : ℂ) : ℂ := (v1486 X Y k)*(v0156 X Y k)
theorem e1487_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1487) = v1487 X Y k := by
  simp only [e1487,v1487,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1486_eval,e0156_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
