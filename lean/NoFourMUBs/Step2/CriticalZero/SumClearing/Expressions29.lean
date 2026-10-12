import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions28
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1392 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1391 e0001
def v1392 (X Y k : ℂ) : ℂ := (v1391 X Y k)*(v0001 X Y k)
theorem e1392_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1392) = v1392 X Y k := by
  simp only [e1392,v1392,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1391_eval,e0001_eval]
def e1393 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0842
def v1393 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0842 X Y k)
theorem e1393_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1393) = v1393 X Y k := by
  simp only [e1393,v1393,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0842_eval]
def e1394 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1393 e0089
def v1394 (X Y k : ℂ) : ℂ := (v1393 X Y k)*(v0089 X Y k)
theorem e1394_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1394) = v1394 X Y k := by
  simp only [e1394,v1394,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1393_eval,e0089_eval]
def e1395 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1394
def v1395 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1394 X Y k)
theorem e1395_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1395) = v1395 X Y k := by
  simp only [e1395,v1395,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1394_eval]
def e1396 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1395 e0061
def v1396 (X Y k : ℂ) : ℂ := (v1395 X Y k)*(v0061 X Y k)
theorem e1396_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1396) = v1396 X Y k := by
  simp only [e1396,v1396,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1395_eval,e0061_eval]
def e1397 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1392 e1396
def v1397 (X Y k : ℂ) : ℂ := (v1392 X Y k)+(v1396 X Y k)
theorem e1397_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1397) = v1397 X Y k := by
  simp only [e1397,v1397,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1392_eval,e1396_eval]
def e1398 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0790 e0078
def v1398 (X Y k : ℂ) : ℂ := (v0790 X Y k)*(v0078 X Y k)
theorem e1398_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1398) = v1398 X Y k := by
  simp only [e1398,v1398,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0790_eval,e0078_eval]
def e1399 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1398 e0113
def v1399 (X Y k : ℂ) : ℂ := (v1398 X Y k)*(v0113 X Y k)
theorem e1399_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1399) = v1399 X Y k := by
  simp only [e1399,v1399,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1398_eval,e0113_eval]
def e1400 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1399 e0115
def v1400 (X Y k : ℂ) : ℂ := (v1399 X Y k)*(v0115 X Y k)
theorem e1400_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1400) = v1400 X Y k := by
  simp only [e1400,v1400,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1399_eval,e0115_eval]
def e1401 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1400 e0228
def v1401 (X Y k : ℂ) : ℂ := (v1400 X Y k)*(v0228 X Y k)
theorem e1401_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1401) = v1401 X Y k := by
  simp only [e1401,v1401,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1400_eval,e0228_eval]
def e1402 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1401 e0230
def v1402 (X Y k : ℂ) : ℂ := (v1401 X Y k)*(v0230 X Y k)
theorem e1402_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1402) = v1402 X Y k := by
  simp only [e1402,v1402,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1401_eval,e0230_eval]
def e1403 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1402 e0025
def v1403 (X Y k : ℂ) : ℂ := (v1402 X Y k)*(v0025 X Y k)
theorem e1403_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1403) = v1403 X Y k := by
  simp only [e1403,v1403,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1402_eval,e0025_eval]
def e1404 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1403 e0028
def v1404 (X Y k : ℂ) : ℂ := (v1403 X Y k)*(v0028 X Y k)
theorem e1404_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1404) = v1404 X Y k := by
  simp only [e1404,v1404,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1403_eval,e0028_eval]
def e1405 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1397 e1404
def v1405 (X Y k : ℂ) : ℂ := (v1397 X Y k)*(v1404 X Y k)
theorem e1405_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1405) = v1405 X Y k := by
  simp only [e1405,v1405,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1397_eval,e1404_eval]
def e1406 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0716
def v1406 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0716 X Y k)
theorem e1406_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1406) = v1406 X Y k := by
  simp only [e1406,v1406,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0716_eval]
def e1407 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1406 e1224
def v1407 (X Y k : ℂ) : ℂ := (v1406 X Y k)*(v1224 X Y k)
theorem e1407_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1407) = v1407 X Y k := by
  simp only [e1407,v1407,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1406_eval,e1224_eval]
def e1408 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0722
def v1408 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0722 X Y k)
theorem e1408_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1408) = v1408 X Y k := by
  simp only [e1408,v1408,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0722_eval]
def e1409 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1408 e1228
def v1409 (X Y k : ℂ) : ℂ := (v1408 X Y k)*(v1228 X Y k)
theorem e1409_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1409) = v1409 X Y k := by
  simp only [e1409,v1409,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1408_eval,e1228_eval]
def e1410 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1409
def v1410 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1409 X Y k)
theorem e1410_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1410) = v1410 X Y k := by
  simp only [e1410,v1410,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1409_eval]
def e1411 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1410 e0585
def v1411 (X Y k : ℂ) : ℂ := (v1410 X Y k)*(v0585 X Y k)
theorem e1411_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1411) = v1411 X Y k := by
  simp only [e1411,v1411,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1410_eval,e0585_eval]
def e1412 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1407 e1411
def v1412 (X Y k : ℂ) : ℂ := (v1407 X Y k)+(v1411 X Y k)
theorem e1412_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1412) = v1412 X Y k := by
  simp only [e1412,v1412,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1407_eval,e1411_eval]
def e1413 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1412 e0205
def v1413 (X Y k : ℂ) : ℂ := (v1412 X Y k)*(v0205 X Y k)
theorem e1413_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1413) = v1413 X Y k := by
  simp only [e1413,v1413,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1412_eval,e0205_eval]
def e1414 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1413 e0001
def v1414 (X Y k : ℂ) : ℂ := (v1413 X Y k)*(v0001 X Y k)
theorem e1414_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1414) = v1414 X Y k := by
  simp only [e1414,v1414,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1413_eval,e0001_eval]
def e1415 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1406 e1228
def v1415 (X Y k : ℂ) : ℂ := (v1406 X Y k)*(v1228 X Y k)
theorem e1415_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1415) = v1415 X Y k := by
  simp only [e1415,v1415,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1406_eval,e1228_eval]
def e1416 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1408 e1224
def v1416 (X Y k : ℂ) : ℂ := (v1408 X Y k)*(v1224 X Y k)
theorem e1416_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1416) = v1416 X Y k := by
  simp only [e1416,v1416,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1408_eval,e1224_eval]
def e1417 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1416 e0001
def v1417 (X Y k : ℂ) : ℂ := (v1416 X Y k)*(v0001 X Y k)
theorem e1417_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1417) = v1417 X Y k := by
  simp only [e1417,v1417,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1416_eval,e0001_eval]
def e1418 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1415 e1417
def v1418 (X Y k : ℂ) : ℂ := (v1415 X Y k)+(v1417 X Y k)
theorem e1418_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1418) = v1418 X Y k := by
  simp only [e1418,v1418,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1415_eval,e1417_eval]
def e1419 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1409
def v1419 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1409 X Y k)
theorem e1419_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1419) = v1419 X Y k := by
  simp only [e1419,v1419,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1409_eval]
def e1420 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1419 e0001
def v1420 (X Y k : ℂ) : ℂ := (v1419 X Y k)*(v0001 X Y k)
theorem e1420_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1420) = v1420 X Y k := by
  simp only [e1420,v1420,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1419_eval,e0001_eval]
def e1421 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1418 e1420
def v1421 (X Y k : ℂ) : ℂ := (v1418 X Y k)+(v1420 X Y k)
theorem e1421_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1421) = v1421 X Y k := by
  simp only [e1421,v1421,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1418_eval,e1420_eval]
def e1422 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1421 e0215
def v1422 (X Y k : ℂ) : ℂ := (v1421 X Y k)*(v0215 X Y k)
theorem e1422_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1422) = v1422 X Y k := by
  simp only [e1422,v1422,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1421_eval,e0215_eval]
def e1423 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1422
def v1423 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1422 X Y k)
theorem e1423_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1423) = v1423 X Y k := by
  simp only [e1423,v1423,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1422_eval]
def e1424 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1423 e0061
def v1424 (X Y k : ℂ) : ℂ := (v1423 X Y k)*(v0061 X Y k)
theorem e1424_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1424) = v1424 X Y k := by
  simp only [e1424,v1424,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1423_eval,e0061_eval]
def e1425 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1414 e1424
def v1425 (X Y k : ℂ) : ℂ := (v1414 X Y k)+(v1424 X Y k)
theorem e1425_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1425) = v1425 X Y k := by
  simp only [e1425,v1425,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1414_eval,e1424_eval]
def e1426 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0407 e0228
def v1426 (X Y k : ℂ) : ℂ := (v0407 X Y k)*(v0228 X Y k)
theorem e1426_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1426) = v1426 X Y k := by
  simp only [e1426,v1426,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0407_eval,e0228_eval]
def e1427 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1426 e0230
def v1427 (X Y k : ℂ) : ℂ := (v1426 X Y k)*(v0230 X Y k)
theorem e1427_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1427) = v1427 X Y k := by
  simp only [e1427,v1427,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1426_eval,e0230_eval]
def e1428 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1427 e0117
def v1428 (X Y k : ℂ) : ℂ := (v1427 X Y k)*(v0117 X Y k)
theorem e1428_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1428) = v1428 X Y k := by
  simp only [e1428,v1428,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1427_eval,e0117_eval]
def e1429 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1428 e0119
def v1429 (X Y k : ℂ) : ℂ := (v1428 X Y k)*(v0119 X Y k)
theorem e1429_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1429) = v1429 X Y k := by
  simp only [e1429,v1429,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1428_eval,e0119_eval]
def e1430 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1425 e1429
def v1430 (X Y k : ℂ) : ℂ := (v1425 X Y k)*(v1429 X Y k)
theorem e1430_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1430) = v1430 X Y k := by
  simp only [e1430,v1430,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1425_eval,e1429_eval]
def e1431 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0716 e0466
def v1431 (X Y k : ℂ) : ℂ := (v0716 X Y k)*(v0466 X Y k)
theorem e1431_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1431) = v1431 X Y k := by
  simp only [e1431,v1431,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0716_eval,e0466_eval]
def e1432 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0722 e0472
def v1432 (X Y k : ℂ) : ℂ := (v0722 X Y k)*(v0472 X Y k)
theorem e1432_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1432) = v1432 X Y k := by
  simp only [e1432,v1432,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0722_eval,e0472_eval]
def e1433 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1432
def v1433 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1432 X Y k)
theorem e1433_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1433) = v1433 X Y k := by
  simp only [e1433,v1433,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1432_eval]
def e1434 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1433 e0585
def v1434 (X Y k : ℂ) : ℂ := (v1433 X Y k)*(v0585 X Y k)
theorem e1434_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1434) = v1434 X Y k := by
  simp only [e1434,v1434,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1433_eval,e0585_eval]
def e1435 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1431 e1434
def v1435 (X Y k : ℂ) : ℂ := (v1431 X Y k)+(v1434 X Y k)
theorem e1435_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1435) = v1435 X Y k := by
  simp only [e1435,v1435,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1431_eval,e1434_eval]
def e1436 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1435 e0122
def v1436 (X Y k : ℂ) : ℂ := (v1435 X Y k)*(v0122 X Y k)
theorem e1436_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1436) = v1436 X Y k := by
  simp only [e1436,v1436,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1435_eval,e0122_eval]
def e1437 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0716 e0472
def v1437 (X Y k : ℂ) : ℂ := (v0716 X Y k)*(v0472 X Y k)
theorem e1437_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1437) = v1437 X Y k := by
  simp only [e1437,v1437,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0716_eval,e0472_eval]
def e1438 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0722 e0466
def v1438 (X Y k : ℂ) : ℂ := (v0722 X Y k)*(v0466 X Y k)
theorem e1438_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1438) = v1438 X Y k := by
  simp only [e1438,v1438,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0722_eval,e0466_eval]
def e1439 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1438 e0001
def v1439 (X Y k : ℂ) : ℂ := (v1438 X Y k)*(v0001 X Y k)
theorem e1439_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1439) = v1439 X Y k := by
  simp only [e1439,v1439,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1438_eval,e0001_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
