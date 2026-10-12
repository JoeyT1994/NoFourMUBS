import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions27
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1344 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0842
def v1344 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0842 X Y k)
theorem e1344_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1344) = v1344 X Y k := by
  simp only [e1344,v1344,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0842_eval]
def e1345 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1344 e1112
def v1345 (X Y k : ℂ) : ℂ := (v1344 X Y k)*(v1112 X Y k)
theorem e1345_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1345) = v1345 X Y k := by
  simp only [e1345,v1345,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1344_eval,e1112_eval]
def e1346 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1345
def v1346 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1345 X Y k)
theorem e1346_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1346) = v1346 X Y k := by
  simp only [e1346,v1346,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1345_eval]
def e1347 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1346 e0475
def v1347 (X Y k : ℂ) : ℂ := (v1346 X Y k)*(v0475 X Y k)
theorem e1347_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1347) = v1347 X Y k := by
  simp only [e1347,v1347,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1346_eval,e0475_eval]
def e1348 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1343 e1347
def v1348 (X Y k : ℂ) : ℂ := (v1343 X Y k)+(v1347 X Y k)
theorem e1348_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1348) = v1348 X Y k := by
  simp only [e1348,v1348,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1343_eval,e1347_eval]
def e1349 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1348 e0205
def v1349 (X Y k : ℂ) : ℂ := (v1348 X Y k)*(v0205 X Y k)
theorem e1349_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1349) = v1349 X Y k := by
  simp only [e1349,v1349,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1348_eval,e0205_eval]
def e1350 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1349 e0001
def v1350 (X Y k : ℂ) : ℂ := (v1349 X Y k)*(v0001 X Y k)
theorem e1350_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1350) = v1350 X Y k := by
  simp only [e1350,v1350,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1349_eval,e0001_eval]
def e1351 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1342 e1112
def v1351 (X Y k : ℂ) : ℂ := (v1342 X Y k)*(v1112 X Y k)
theorem e1351_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1351) = v1351 X Y k := by
  simp only [e1351,v1351,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1342_eval,e1112_eval]
def e1352 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1344 e1108
def v1352 (X Y k : ℂ) : ℂ := (v1344 X Y k)*(v1108 X Y k)
theorem e1352_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1352) = v1352 X Y k := by
  simp only [e1352,v1352,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1344_eval,e1108_eval]
def e1353 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1351 e1352
def v1353 (X Y k : ℂ) : ℂ := (v1351 X Y k)+(v1352 X Y k)
theorem e1353_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1353) = v1353 X Y k := by
  simp only [e1353,v1353,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1351_eval,e1352_eval]
def e1354 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1345
def v1354 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1345 X Y k)
theorem e1354_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1354) = v1354 X Y k := by
  simp only [e1354,v1354,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1345_eval]
def e1355 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1353 e1354
def v1355 (X Y k : ℂ) : ℂ := (v1353 X Y k)+(v1354 X Y k)
theorem e1355_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1355) = v1355 X Y k := by
  simp only [e1355,v1355,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1353_eval,e1354_eval]
def e1356 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1355 e0215
def v1356 (X Y k : ℂ) : ℂ := (v1355 X Y k)*(v0215 X Y k)
theorem e1356_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1356) = v1356 X Y k := by
  simp only [e1356,v1356,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1355_eval,e0215_eval]
def e1357 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1356
def v1357 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1356 X Y k)
theorem e1357_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1357) = v1357 X Y k := by
  simp only [e1357,v1357,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1356_eval]
def e1358 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1357 e0061
def v1358 (X Y k : ℂ) : ℂ := (v1357 X Y k)*(v0061 X Y k)
theorem e1358_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1358) = v1358 X Y k := by
  simp only [e1358,v1358,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1357_eval,e0061_eval]
def e1359 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1350 e1358
def v1359 (X Y k : ℂ) : ℂ := (v1350 X Y k)+(v1358 X Y k)
theorem e1359_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1359) = v1359 X Y k := by
  simp only [e1359,v1359,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1350_eval,e1358_eval]
def e1360 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0489 e0113
def v1360 (X Y k : ℂ) : ℂ := (v0489 X Y k)*(v0113 X Y k)
theorem e1360_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1360) = v1360 X Y k := by
  simp only [e1360,v1360,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0489_eval,e0113_eval]
def e1361 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1360 e0115
def v1361 (X Y k : ℂ) : ℂ := (v1360 X Y k)*(v0115 X Y k)
theorem e1361_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1361) = v1361 X Y k := by
  simp only [e1361,v1361,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1360_eval,e0115_eval]
def e1362 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1361 e0228
def v1362 (X Y k : ℂ) : ℂ := (v1361 X Y k)*(v0228 X Y k)
theorem e1362_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1362) = v1362 X Y k := by
  simp only [e1362,v1362,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1361_eval,e0228_eval]
def e1363 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1362 e0230
def v1363 (X Y k : ℂ) : ℂ := (v1362 X Y k)*(v0230 X Y k)
theorem e1363_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1363) = v1363 X Y k := by
  simp only [e1363,v1363,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1362_eval,e0230_eval]
def e1364 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1363 e0181
def v1364 (X Y k : ℂ) : ℂ := (v1363 X Y k)*(v0181 X Y k)
theorem e1364_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1364) = v1364 X Y k := by
  simp only [e1364,v1364,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1363_eval,e0181_eval]
def e1365 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1364 e0183
def v1365 (X Y k : ℂ) : ℂ := (v1364 X Y k)*(v0183 X Y k)
theorem e1365_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1365) = v1365 X Y k := by
  simp only [e1365,v1365,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1364_eval,e0183_eval]
def e1366 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1359 e1365
def v1366 (X Y k : ℂ) : ℂ := (v1359 X Y k)*(v1365 X Y k)
theorem e1366_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1366) = v1366 X Y k := by
  simp only [e1366,v1366,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1359_eval,e1365_eval]
def e1367 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1342 e0576
def v1367 (X Y k : ℂ) : ℂ := (v1342 X Y k)*(v0576 X Y k)
theorem e1367_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1367) = v1367 X Y k := by
  simp only [e1367,v1367,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1342_eval,e0576_eval]
def e1368 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1344 e0582
def v1368 (X Y k : ℂ) : ℂ := (v1344 X Y k)*(v0582 X Y k)
theorem e1368_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1368) = v1368 X Y k := by
  simp only [e1368,v1368,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1344_eval,e0582_eval]
def e1369 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1368
def v1369 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1368 X Y k)
theorem e1369_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1369) = v1369 X Y k := by
  simp only [e1369,v1369,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1368_eval]
def e1370 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1369 e0475
def v1370 (X Y k : ℂ) : ℂ := (v1369 X Y k)*(v0475 X Y k)
theorem e1370_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1370) = v1370 X Y k := by
  simp only [e1370,v1370,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1369_eval,e0475_eval]
def e1371 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1367 e1370
def v1371 (X Y k : ℂ) : ℂ := (v1367 X Y k)+(v1370 X Y k)
theorem e1371_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1371) = v1371 X Y k := by
  simp only [e1371,v1371,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1367_eval,e1370_eval]
def e1372 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1371 e0130
def v1372 (X Y k : ℂ) : ℂ := (v1371 X Y k)*(v0130 X Y k)
theorem e1372_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1372) = v1372 X Y k := by
  simp only [e1372,v1372,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1371_eval,e0130_eval]
def e1373 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1342 e0582
def v1373 (X Y k : ℂ) : ℂ := (v1342 X Y k)*(v0582 X Y k)
theorem e1373_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1373) = v1373 X Y k := by
  simp only [e1373,v1373,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1342_eval,e0582_eval]
def e1374 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1344 e0576
def v1374 (X Y k : ℂ) : ℂ := (v1344 X Y k)*(v0576 X Y k)
theorem e1374_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1374) = v1374 X Y k := by
  simp only [e1374,v1374,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1344_eval,e0576_eval]
def e1375 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1373 e1374
def v1375 (X Y k : ℂ) : ℂ := (v1373 X Y k)+(v1374 X Y k)
theorem e1375_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1375) = v1375 X Y k := by
  simp only [e1375,v1375,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1373_eval,e1374_eval]
def e1376 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e1368
def v1376 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v1368 X Y k)
theorem e1376_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1376) = v1376 X Y k := by
  simp only [e1376,v1376,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e1368_eval]
def e1377 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1375 e1376
def v1377 (X Y k : ℂ) : ℂ := (v1375 X Y k)+(v1376 X Y k)
theorem e1377_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1377) = v1377 X Y k := by
  simp only [e1377,v1377,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1375_eval,e1376_eval]
def e1378 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1377 e0141
def v1378 (X Y k : ℂ) : ℂ := (v1377 X Y k)*(v0141 X Y k)
theorem e1378_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1378) = v1378 X Y k := by
  simp only [e1378,v1378,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1377_eval,e0141_eval]
def e1379 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e1378
def v1379 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v1378 X Y k)
theorem e1379_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1379) = v1379 X Y k := by
  simp only [e1379,v1379,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e1378_eval]
def e1380 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1379 e0061
def v1380 (X Y k : ℂ) : ℂ := (v1379 X Y k)*(v0061 X Y k)
theorem e1380_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1380) = v1380 X Y k := by
  simp only [e1380,v1380,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1379_eval,e0061_eval]
def e1381 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e1372 e1380
def v1381 (X Y k : ℂ) : ℂ := (v1372 X Y k)+(v1380 X Y k)
theorem e1381_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1381) = v1381 X Y k := by
  simp only [e1381,v1381,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e1372_eval,e1380_eval]
def e1382 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0789 e0061
def v1382 (X Y k : ℂ) : ℂ := (v0789 X Y k)*(v0061 X Y k)
theorem e1382_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1382) = v1382 X Y k := by
  simp only [e1382,v1382,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0789_eval,e0061_eval]
def e1383 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1382 e0113
def v1383 (X Y k : ℂ) : ℂ := (v1382 X Y k)*(v0113 X Y k)
theorem e1383_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1383) = v1383 X Y k := by
  simp only [e1383,v1383,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1382_eval,e0113_eval]
def e1384 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1383 e0115
def v1384 (X Y k : ℂ) : ℂ := (v1383 X Y k)*(v0115 X Y k)
theorem e1384_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1384) = v1384 X Y k := by
  simp only [e1384,v1384,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1383_eval,e0115_eval]
def e1385 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1384 e0228
def v1385 (X Y k : ℂ) : ℂ := (v1384 X Y k)*(v0228 X Y k)
theorem e1385_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1385) = v1385 X Y k := by
  simp only [e1385,v1385,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1384_eval,e0228_eval]
def e1386 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1385 e0230
def v1386 (X Y k : ℂ) : ℂ := (v1385 X Y k)*(v0230 X Y k)
theorem e1386_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1386) = v1386 X Y k := by
  simp only [e1386,v1386,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1385_eval,e0230_eval]
def e1387 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1386 e0117
def v1387 (X Y k : ℂ) : ℂ := (v1386 X Y k)*(v0117 X Y k)
theorem e1387_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1387) = v1387 X Y k := by
  simp only [e1387,v1387,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1386_eval,e0117_eval]
def e1388 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1387 e0119
def v1388 (X Y k : ℂ) : ℂ := (v1387 X Y k)*(v0119 X Y k)
theorem e1388_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1388) = v1388 X Y k := by
  simp only [e1388,v1388,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1387_eval,e0119_eval]
def e1389 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1381 e1388
def v1389 (X Y k : ℂ) : ℂ := (v1381 X Y k)*(v1388 X Y k)
theorem e1389_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1389) = v1389 X Y k := by
  simp only [e1389,v1389,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1381_eval,e1388_eval]
def e1390 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0326 e0836
def v1390 (X Y k : ℂ) : ℂ := (v0326 X Y k)*(v0836 X Y k)
theorem e1390_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1390) = v1390 X Y k := by
  simp only [e1390,v1390,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0326_eval,e0836_eval]
def e1391 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1390 e0086
def v1391 (X Y k : ℂ) : ℂ := (v1390 X Y k)*(v0086 X Y k)
theorem e1391_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1391) = v1391 X Y k := by
  simp only [e1391,v1391,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1390_eval,e0086_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
