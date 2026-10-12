import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput320 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-1, 3, -2, 0], ![4, -2, 0, -2]]⟩

def canonicalOutput320 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput320.moment H = canonicalOutput320.moment H :=
  canonical_of_padded canonicalInput320 canonicalOutput320 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput321 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-1, 3, -1, -1], ![4, -2, -1, -1]]⟩

def canonicalOutput321 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput321.moment H = canonicalOutput321.moment H :=
  canonical_of_padded canonicalInput321 canonicalOutput321 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput322 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-1, 3, 0, -2], ![4, -2, -2, 0]]⟩

def canonicalOutput322 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput322.moment H = canonicalOutput322.moment H :=
  canonical_of_padded canonicalInput322 canonicalOutput322 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput323 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![-1, 4, -1, -2], ![4, -3, -1, 0]]⟩

def canonicalOutput323 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code6

theorem canonicalSound323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput323.moment H = canonicalOutput323.moment H :=
  canonical_of_padded canonicalInput323 canonicalOutput323 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput324 : ExponentCode := ⟨5, 4, ![![-3, -1, 2, 2], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput324 : ExponentCode := normalNode101

theorem canonicalSound324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput324.moment H = canonicalOutput324.moment H :=
  canonical_of_padded canonicalInput324 canonicalOutput324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput325 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![2, 2, -1, -3]]⟩

def canonicalOutput325 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1137

theorem canonicalSound325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput325.moment H = canonicalOutput325.moment H :=
  canonical_of_padded canonicalInput325 canonicalOutput325 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput326 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![0, -2, 1, 1], ![1, 2, -3, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput326 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1245

theorem canonicalSound326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput326.moment H = canonicalOutput326.moment H :=
  canonical_of_padded canonicalInput326 canonicalOutput326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput327 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![0, -2, 1, 1], ![2, 1, -3, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput327 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1245

theorem canonicalSound327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput327.moment H = canonicalOutput327.moment H :=
  canonical_of_padded canonicalInput327 canonicalOutput327 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput328 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![0, -1, 0, 1], ![1, 1, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput328 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1318⟩

theorem canonicalSound328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput328.moment H = canonicalOutput328.moment H :=
  canonical_of_padded canonicalInput328 canonicalOutput328 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput329 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, -1, 3, -2], ![3, 2, -5, 0]]⟩

def canonicalOutput329 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code25

theorem canonicalSound329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput329.moment H = canonicalOutput329.moment H :=
  canonical_of_padded canonicalInput329 canonicalOutput329 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput330 : ExponentCode := ⟨5, 4, ![![-3, -1, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput330 : ExponentCode := normalNode6189

theorem canonicalSound330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput330.moment H = canonicalOutput330.moment H :=
  canonical_of_padded canonicalInput330 canonicalOutput330 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput331 : ExponentCode := ⟨5, 4, ![![-3, -1, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput331 : ExponentCode := normalNode6191

theorem canonicalSound331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput331.moment H = canonicalOutput331.moment H :=
  canonical_of_padded canonicalInput331 canonicalOutput331 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput332 : ExponentCode := ⟨5, 4, ![![-3, -1, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput332 : ExponentCode := normalNode6190

theorem canonicalSound332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput332.moment H = canonicalOutput332.moment H :=
  canonical_of_padded canonicalInput332 canonicalOutput332 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput333 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, 2, -3, 1], ![3, -1, 1, -3]]⟩

def canonicalOutput333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput333.moment H = canonicalOutput333.moment H :=
  canonical_of_padded canonicalInput333 canonicalOutput333 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput334 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, 2, 1, -3], ![3, -1, -3, 1]]⟩

def canonicalOutput334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput334.moment H = canonicalOutput334.moment H :=
  canonical_of_padded canonicalInput334 canonicalOutput334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput335 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, 3, -3, 0], ![3, -2, 1, -2]]⟩

def canonicalOutput335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code73

theorem canonicalSound335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput335.moment H = canonicalOutput335.moment H :=
  canonical_of_padded canonicalInput335 canonicalOutput335 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput336 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, 3, -2, -1], ![3, -2, 0, -1]]⟩

def canonicalOutput336 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput336.moment H = canonicalOutput336.moment H :=
  canonical_of_padded canonicalInput336 canonicalOutput336 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput337 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, 3, -1, -2], ![3, -2, -1, 0]]⟩

def canonicalOutput337 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput337.moment H = canonicalOutput337.moment H :=
  canonical_of_padded canonicalInput337 canonicalOutput337 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput338 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![0, 3, 0, -3], ![3, -2, -2, 1]]⟩

def canonicalOutput338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code73

theorem canonicalSound338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput338.moment H = canonicalOutput338.moment H :=
  canonical_of_padded canonicalInput338 canonicalOutput338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput339 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![1, -2, 0, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput339.moment H = canonicalOutput339.moment H :=
  canonical_of_padded canonicalInput339 canonicalOutput339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput340 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![1, -2, 0, 1], ![1, 1, 1, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput340 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1243

theorem canonicalSound340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput340.moment H = canonicalOutput340.moment H :=
  canonical_of_padded canonicalInput340 canonicalOutput340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput341 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![1, -2, 0, 1], ![1, 2, -3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput341 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1243

theorem canonicalSound341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput341.moment H = canonicalOutput341.moment H :=
  canonical_of_padded canonicalInput341 canonicalOutput341 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput342 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![1, -2, 2, -1], ![2, 3, -4, -1]]⟩

def canonicalOutput342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput342.moment H = canonicalOutput342.moment H :=
  canonical_of_padded canonicalInput342 canonicalOutput342 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput343 : ExponentCode := ⟨4, 4, ![![-3, -1, 2, 2], ![1, -1, -1, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput343 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput343.moment H = canonicalOutput343.moment H :=
  canonical_of_padded canonicalInput343 canonicalOutput343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput344 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![1, 2, -4, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput344 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code13

theorem canonicalSound344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput344.moment H = canonicalOutput344.moment H :=
  canonical_of_padded canonicalInput344 canonicalOutput344 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput345 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![1, 2, 0, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput345 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput345.moment H = canonicalOutput345.moment H :=
  canonical_of_padded canonicalInput345 canonicalOutput345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput346 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![1, 2, 1, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code13

theorem canonicalSound346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput346.moment H = canonicalOutput346.moment H :=
  canonical_of_padded canonicalInput346 canonicalOutput346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput347 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![1, 3, -4, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput347 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code11

theorem canonicalSound347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput347.moment H = canonicalOutput347.moment H :=
  canonical_of_padded canonicalInput347 canonicalOutput347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput348 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![2, -3, 0, 1], ![1, 4, -2, -3]]⟩

def canonicalOutput348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code39

theorem canonicalSound348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput348.moment H = canonicalOutput348.moment H :=
  canonical_of_padded canonicalInput348 canonicalOutput348 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput349 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![2, -2, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput349 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput349.moment H = canonicalOutput349.moment H :=
  canonical_of_padded canonicalInput349 canonicalOutput349 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput350 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![2, -2, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput350 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput350.moment H = canonicalOutput350.moment H :=
  canonical_of_padded canonicalInput350 canonicalOutput350 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput351 : ExponentCode := ⟨3, 4, ![![-3, -1, 2, 2], ![3, -3, 0, 0], ![0, 4, -2, -2]]⟩

def canonicalOutput351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code36

theorem canonicalSound351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput351.moment H = canonicalOutput351.moment H :=
  canonical_of_padded canonicalInput351 canonicalOutput351 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput352 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![-2, 2, -1, 1], ![5, -1, -2, -2]]⟩

def canonicalOutput352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput352.moment H = canonicalOutput352.moment H :=
  canonical_of_padded canonicalInput352 canonicalOutput352 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput353 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![-1, 2, 1, -2], ![4, -1, -4, 1]]⟩

def canonicalOutput353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput353.moment H = canonicalOutput353.moment H :=
  canonical_of_padded canonicalInput353 canonicalOutput353 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput354 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![-1, 3, -3, 1], ![4, -2, 0, -2]]⟩

def canonicalOutput354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code8

theorem canonicalSound354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput354.moment H = canonicalOutput354.moment H :=
  canonical_of_padded canonicalInput354 canonicalOutput354 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput355 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![0, 2, -3, 1], ![3, -1, 0, -2]]⟩

def canonicalOutput355 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput355.moment H = canonicalOutput355.moment H :=
  canonical_of_padded canonicalInput355 canonicalOutput355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput356 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![0, 2, 1, -3], ![3, -1, -4, 2]]⟩

def canonicalOutput356 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput356.moment H = canonicalOutput356.moment H :=
  canonical_of_padded canonicalInput356 canonicalOutput356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput357 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![0, 3, -4, 1], ![3, -2, 1, -2]]⟩

def canonicalOutput357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code7

theorem canonicalSound357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput357.moment H = canonicalOutput357.moment H :=
  canonical_of_padded canonicalInput357 canonicalOutput357 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput358 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![0, 3, -1, -2], ![3, -2, -2, 1]]⟩

def canonicalOutput358 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput358.moment H = canonicalOutput358.moment H :=
  canonical_of_padded canonicalInput358 canonicalOutput358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput359 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![0, 4, -2, -2], ![3, -3, -1, 1]]⟩

def canonicalOutput359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code8

theorem canonicalSound359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput359.moment H = canonicalOutput359.moment H :=
  canonical_of_padded canonicalInput359 canonicalOutput359 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput360 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![1, -1, 2, -2], ![2, 2, -5, 1]]⟩

def canonicalOutput360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput360.moment H = canonicalOutput360.moment H :=
  canonical_of_padded canonicalInput360 canonicalOutput360 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput361 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![1, 2, 0, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput361 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput361.moment H = canonicalOutput361.moment H :=
  canonical_of_padded canonicalInput361 canonicalOutput361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput362 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![2, -3, 0, 1], ![1, 4, -3, -2]]⟩

def canonicalOutput362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code41

theorem canonicalSound362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput362.moment H = canonicalOutput362.moment H :=
  canonical_of_padded canonicalInput362 canonicalOutput362 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput363 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![2, -2, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput363 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput363.moment H = canonicalOutput363.moment H :=
  canonical_of_padded canonicalInput363 canonicalOutput363 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput364 : ExponentCode := ⟨3, 4, ![![-3, -1, 3, 1], ![2, -1, 1, -2], ![1, 2, -4, 1]]⟩

def canonicalOutput364 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput364.moment H = canonicalOutput364.moment H :=
  canonical_of_padded canonicalInput364 canonicalOutput364 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput365 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![0, 1, -1], ![3, 2, -5]]⟩

def canonicalOutput365 : ExponentCode := normalNode47

theorem canonicalSound365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput365.moment H = canonicalOutput365.moment H :=
  canonical_of_padded canonicalInput365 canonicalOutput365 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput366 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![1, 0, -1], ![2, 3, -5]]⟩

def canonicalOutput366 : ExponentCode := normalNode50

theorem canonicalSound366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput366.moment H = canonicalOutput366.moment H :=
  canonical_of_padded canonicalInput366 canonicalOutput366 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput367 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![2, 0, -2], ![1, 3, -4]]⟩

def canonicalOutput367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code35

theorem canonicalSound367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput367.moment H = canonicalOutput367.moment H :=
  canonical_of_padded canonicalInput367 canonicalOutput367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput368 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -2, 2], ![2, 1, -3], ![1, 2, -3]]⟩

def canonicalOutput368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code34

theorem canonicalSound368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput368.moment H = canonicalOutput368.moment H :=
  canonical_of_padded canonicalInput368 canonicalOutput368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput369 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 0, 0], ![0, 1, -1], ![3, 1, -4]]⟩

def canonicalOutput369 : ExponentCode := normalNode6267

theorem canonicalSound369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput369.moment H = canonicalOutput369.moment H :=
  canonical_of_padded canonicalInput369 canonicalOutput369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput370 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![2, 2, -4]]⟩

def canonicalOutput370 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput370.moment H = canonicalOutput370.moment H :=
  canonical_of_padded canonicalInput370 canonicalOutput370 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput371 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 0, 0], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput371 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput371.moment H = canonicalOutput371.moment H :=
  canonical_of_padded canonicalInput371 canonicalOutput371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput372 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![3, 1, -4]]⟩

def canonicalOutput372 : ExponentCode := normalNode6267

theorem canonicalSound372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput372.moment H = canonicalOutput372.moment H :=
  canonical_of_padded canonicalInput372 canonicalOutput372 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput373 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![3, 0, -3]]⟩

def canonicalOutput373 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node734⟩

theorem canonicalSound373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput373.moment H = canonicalOutput373.moment H :=
  canonical_of_padded canonicalInput373 canonicalOutput373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput374 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![2, 1, -3]]⟩

def canonicalOutput374 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node732⟩

theorem canonicalSound374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput374.moment H = canonicalOutput374.moment H :=
  canonical_of_padded canonicalInput374 canonicalOutput374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput375 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![2, 0, -2]]⟩

def canonicalOutput375 : ExponentCode := normalNode6265

theorem canonicalSound375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput375.moment H = canonicalOutput375.moment H :=
  canonical_of_padded canonicalInput375 canonicalOutput375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput376 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![3, 1, -4]]⟩

def canonicalOutput376 : ExponentCode := normalNode6267

theorem canonicalSound376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput376.moment H = canonicalOutput376.moment H :=
  canonical_of_padded canonicalInput376 canonicalOutput376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput377 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![1, 0, -1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput377 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node311⟩

theorem canonicalSound377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput377.moment H = canonicalOutput377.moment H :=
  canonical_of_padded canonicalInput377 canonicalOutput377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput378 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput378 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node553⟩

theorem canonicalSound378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput378.moment H = canonicalOutput378.moment H :=
  canonical_of_padded canonicalInput378 canonicalOutput378 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput379 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, -1, 1], ![1, 0, -1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput379 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node733⟩

theorem canonicalSound379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput379.moment H = canonicalOutput379.moment H :=
  canonical_of_padded canonicalInput379 canonicalOutput379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput380 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -1, 1], ![1, 0, -1], ![2, 2, -4]]⟩

def canonicalOutput380 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput380.moment H = canonicalOutput380.moment H :=
  canonical_of_padded canonicalInput380 canonicalOutput380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput381 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, -1, 1], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput381 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput381.moment H = canonicalOutput381.moment H :=
  canonical_of_padded canonicalInput381 canonicalOutput381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput382 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 0, 0], ![0, 1, -1], ![0, 1, -1], ![3, -1, -2]]⟩

def canonicalOutput382 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput382.moment H = canonicalOutput382.moment H :=
  canonical_of_padded canonicalInput382 canonicalOutput382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput383 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 0, 0], ![0, 1, -1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput383 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput383.moment H = canonicalOutput383.moment H :=
  canonical_of_padded canonicalInput383 canonicalOutput383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
