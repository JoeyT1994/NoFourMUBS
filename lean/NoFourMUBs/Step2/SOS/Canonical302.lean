import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19328 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput19328 : ExponentCode := normalNode9103

theorem canonicalSound19328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19328.moment H = canonicalOutput19328.moment H :=
  canonical_of_padded canonicalInput19328 canonicalOutput19328 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19329 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 1, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput19329 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node252⟩

theorem canonicalSound19329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19329.moment H = canonicalOutput19329.moment H :=
  canonical_of_padded canonicalInput19329 canonicalOutput19329 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19330 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19330 : ExponentCode := normalNode9631

theorem canonicalSound19330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19330.moment H = canonicalOutput19330.moment H :=
  canonical_of_padded canonicalInput19330 canonicalOutput19330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19331 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19331 : ExponentCode := normalNode9639

theorem canonicalSound19331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19331.moment H = canonicalOutput19331.moment H :=
  canonical_of_padded canonicalInput19331 canonicalOutput19331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19332 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19332 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound19332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19332.moment H = canonicalOutput19332.moment H :=
  canonical_of_padded canonicalInput19332 canonicalOutput19332 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19333 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput19333 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound19333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19333.moment H = canonicalOutput19333.moment H :=
  canonical_of_padded canonicalInput19333 canonicalOutput19333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19334 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19334 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1181⟩

theorem canonicalSound19334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19334.moment H = canonicalOutput19334.moment H :=
  canonical_of_padded canonicalInput19334 canonicalOutput19334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19335 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19335 : ExponentCode := normalNode9702

theorem canonicalSound19335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19335.moment H = canonicalOutput19335.moment H :=
  canonical_of_padded canonicalInput19335 canonicalOutput19335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19336 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput19336 : ExponentCode := normalNode9721

theorem canonicalSound19336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19336.moment H = canonicalOutput19336.moment H :=
  canonical_of_padded canonicalInput19336 canonicalOutput19336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19337 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19337 : ExponentCode := normalNode9703

theorem canonicalSound19337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19337.moment H = canonicalOutput19337.moment H :=
  canonical_of_padded canonicalInput19337 canonicalOutput19337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19338 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, -1, 1, 0]]⟩

def canonicalOutput19338 : ExponentCode := normalNode9703

theorem canonicalSound19338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19338.moment H = canonicalOutput19338.moment H :=
  canonical_of_padded canonicalInput19338 canonicalOutput19338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19339 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 0, 2, -2]]⟩

def canonicalOutput19339 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound19339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19339.moment H = canonicalOutput19339.moment H :=
  canonical_of_padded canonicalInput19339 canonicalOutput19339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19340 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 1, -2], ![0, 1, 2, -3], ![0, -1, 0, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput19340 : ExponentCode := normalNode9673

theorem canonicalSound19340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19340.moment H = canonicalOutput19340.moment H :=
  canonical_of_padded canonicalInput19340 canonicalOutput19340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19341 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![0, 1, 1, -2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput19341 : ExponentCode := normalNode9673

theorem canonicalSound19341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19341.moment H = canonicalOutput19341.moment H :=
  canonical_of_padded canonicalInput19341 canonicalOutput19341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19342 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput19342 : ExponentCode := normalNode9756

theorem canonicalSound19342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19342.moment H = canonicalOutput19342.moment H :=
  canonical_of_padded canonicalInput19342 canonicalOutput19342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19343 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 1, 4, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput19343 : ExponentCode := normalNode5979

theorem canonicalSound19343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19343.moment H = canonicalOutput19343.moment H :=
  canonical_of_padded canonicalInput19343 canonicalOutput19343 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19344 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 2, -1, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput19344 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node208⟩

theorem canonicalSound19344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19344.moment H = canonicalOutput19344.moment H :=
  canonical_of_padded canonicalInput19344 canonicalOutput19344 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19345 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 2, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput19345 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound19345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19345.moment H = canonicalOutput19345.moment H :=
  canonical_of_padded canonicalInput19345 canonicalOutput19345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19346 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![0, 2, 3, -5], ![1, -2, 0, 1]]⟩

def canonicalOutput19346 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node194⟩

theorem canonicalSound19346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19346.moment H = canonicalOutput19346.moment H :=
  canonical_of_padded canonicalInput19346 canonicalOutput19346 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19347 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![1, -2, 1, 0], ![0, 2, 2, -4]]⟩

def canonicalOutput19347 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound19347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19347.moment H = canonicalOutput19347.moment H :=
  canonical_of_padded canonicalInput19347 canonicalOutput19347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19348 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![1, -2, 4, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput19348 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node208⟩

theorem canonicalSound19348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19348.moment H = canonicalOutput19348.moment H :=
  canonical_of_padded canonicalInput19348 canonicalOutput19348 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19349 : ExponentCode := ⟨3, 4, ![![-1, 0, -3, 4], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput19349 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound19349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19349.moment H = canonicalOutput19349.moment H :=
  canonical_of_padded canonicalInput19349 canonicalOutput19349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19350 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, -1, 4], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19350 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1561⟩

theorem canonicalSound19350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19350.moment H = canonicalOutput19350.moment H :=
  canonical_of_padded canonicalInput19350 canonicalOutput19350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19351 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, -1, 4], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19351 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1595⟩

theorem canonicalSound19351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19351.moment H = canonicalOutput19351.moment H :=
  canonical_of_padded canonicalInput19351 canonicalOutput19351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19352 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, -1, 4], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19352 : ExponentCode := normalNode1279

theorem canonicalSound19352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19352.moment H = canonicalOutput19352.moment H :=
  canonical_of_padded canonicalInput19352 canonicalOutput19352 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19353 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, -1, 4], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19353 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1559⟩

theorem canonicalSound19353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19353.moment H = canonicalOutput19353.moment H :=
  canonical_of_padded canonicalInput19353 canonicalOutput19353 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19354 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, -1, 4], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19354 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1603⟩

theorem canonicalSound19354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19354.moment H = canonicalOutput19354.moment H :=
  canonical_of_padded canonicalInput19354 canonicalOutput19354 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19355 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput19355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound19355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19355.moment H = canonicalOutput19355.moment H :=
  canonical_of_padded canonicalInput19355 canonicalOutput19355 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19356 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19356 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound19356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19356.moment H = canonicalOutput19356.moment H :=
  canonical_of_padded canonicalInput19356 canonicalOutput19356 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19357 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19357 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound19357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19357.moment H = canonicalOutput19357.moment H :=
  canonical_of_padded canonicalInput19357 canonicalOutput19357 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19358 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19358 : ExponentCode := normalNode7890

theorem canonicalSound19358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19358.moment H = canonicalOutput19358.moment H :=
  canonical_of_padded canonicalInput19358 canonicalOutput19358 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19359 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19359 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩

theorem canonicalSound19359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19359.moment H = canonicalOutput19359.moment H :=
  canonical_of_padded canonicalInput19359 canonicalOutput19359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19360 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 1, 0, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19360 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2605⟩

theorem canonicalSound19360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19360.moment H = canonicalOutput19360.moment H :=
  canonical_of_padded canonicalInput19360 canonicalOutput19360 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19361 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19361 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1686⟩

theorem canonicalSound19361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19361.moment H = canonicalOutput19361.moment H :=
  canonical_of_padded canonicalInput19361 canonicalOutput19361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19362 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19362 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound19362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19362.moment H = canonicalOutput19362.moment H :=
  canonical_of_padded canonicalInput19362 canonicalOutput19362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19363 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19363 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2534⟩

theorem canonicalSound19363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19363.moment H = canonicalOutput19363.moment H :=
  canonical_of_padded canonicalInput19363 canonicalOutput19363 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19364 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19364 : ExponentCode := normalNode5359

theorem canonicalSound19364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19364.moment H = canonicalOutput19364.moment H :=
  canonical_of_padded canonicalInput19364 canonicalOutput19364 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19365 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19365 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2740⟩

theorem canonicalSound19365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19365.moment H = canonicalOutput19365.moment H :=
  canonical_of_padded canonicalInput19365 canonicalOutput19365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19366 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19366 : ExponentCode := normalNode9918

theorem canonicalSound19366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19366.moment H = canonicalOutput19366.moment H :=
  canonical_of_padded canonicalInput19366 canonicalOutput19366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19367 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19367 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2198⟩

theorem canonicalSound19367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19367.moment H = canonicalOutput19367.moment H :=
  canonical_of_padded canonicalInput19367 canonicalOutput19367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19368 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, -1, 2, 2, -3], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19368 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2771⟩

theorem canonicalSound19368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19368.moment H = canonicalOutput19368.moment H :=
  canonical_of_padded canonicalInput19368 canonicalOutput19368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19369 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 0, -1, 1], ![0, 1, 1, 1, -3], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19369 : ExponentCode := normalNode10618

theorem canonicalSound19369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19369.moment H = canonicalOutput19369.moment H :=
  canonical_of_padded canonicalInput19369 canonicalOutput19369 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19370 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node974⟩

theorem canonicalSound19370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19370.moment H = canonicalOutput19370.moment H :=
  canonical_of_padded canonicalInput19370 canonicalOutput19370 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19371 : ExponentCode := ⟨5, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19371 : ExponentCode := normalNode10373

theorem canonicalSound19371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19371.moment H = canonicalOutput19371.moment H :=
  canonical_of_padded canonicalInput19371 canonicalOutput19371 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19372 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound19372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19372.moment H = canonicalOutput19372.moment H :=
  canonical_of_padded canonicalInput19372 canonicalOutput19372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19373 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, 1, -3], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput19373 : ExponentCode := normalNode6110

theorem canonicalSound19373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19373.moment H = canonicalOutput19373.moment H :=
  canonical_of_padded canonicalInput19373 canonicalOutput19373 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19374 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19374 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound19374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19374.moment H = canonicalOutput19374.moment H :=
  canonical_of_padded canonicalInput19374 canonicalOutput19374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19375 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19375 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound19375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19375.moment H = canonicalOutput19375.moment H :=
  canonical_of_padded canonicalInput19375 canonicalOutput19375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19376 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 2, -1, -1], ![0, 0, 0, 2, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19376 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound19376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19376.moment H = canonicalOutput19376.moment H :=
  canonical_of_padded canonicalInput19376 canonicalOutput19376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19377 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19377 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2740⟩

theorem canonicalSound19377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19377.moment H = canonicalOutput19377.moment H :=
  canonical_of_padded canonicalInput19377 canonicalOutput19377 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19378 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 0, 1, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19378 : ExponentCode := normalNode10855

theorem canonicalSound19378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19378.moment H = canonicalOutput19378.moment H :=
  canonical_of_padded canonicalInput19378 canonicalOutput19378 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19379 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19379 : ExponentCode := normalNode932

theorem canonicalSound19379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19379.moment H = canonicalOutput19379.moment H :=
  canonical_of_padded canonicalInput19379 canonicalOutput19379 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19380 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput19380 : ExponentCode := normalNode6249

theorem canonicalSound19380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19380.moment H = canonicalOutput19380.moment H :=
  canonical_of_padded canonicalInput19380 canonicalOutput19380 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19381 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19381 : ExponentCode := normalNode927

theorem canonicalSound19381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19381.moment H = canonicalOutput19381.moment H :=
  canonical_of_padded canonicalInput19381 canonicalOutput19381 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19382 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19382 : ExponentCode := normalNode930

theorem canonicalSound19382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19382.moment H = canonicalOutput19382.moment H :=
  canonical_of_padded canonicalInput19382 canonicalOutput19382 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19383 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -2, 2], ![0, 1, 1, 1, -3], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19383 : ExponentCode := normalNode6249

theorem canonicalSound19383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19383.moment H = canonicalOutput19383.moment H :=
  canonical_of_padded canonicalInput19383 canonicalOutput19383 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19384 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19384 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound19384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19384.moment H = canonicalOutput19384.moment H :=
  canonical_of_padded canonicalInput19384 canonicalOutput19384 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19385 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19385 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound19385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19385.moment H = canonicalOutput19385.moment H :=
  canonical_of_padded canonicalInput19385 canonicalOutput19385 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19386 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19386 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2443⟩

theorem canonicalSound19386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19386.moment H = canonicalOutput19386.moment H :=
  canonical_of_padded canonicalInput19386 canonicalOutput19386 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19387 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, 0, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19387 : ExponentCode := normalNode9079

theorem canonicalSound19387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19387.moment H = canonicalOutput19387.moment H :=
  canonical_of_padded canonicalInput19387 canonicalOutput19387 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19388 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19388 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound19388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19388.moment H = canonicalOutput19388.moment H :=
  canonical_of_padded canonicalInput19388 canonicalOutput19388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19389 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19389 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound19389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19389.moment H = canonicalOutput19389.moment H :=
  canonical_of_padded canonicalInput19389 canonicalOutput19389 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19390 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, 1, -1], ![1, 0, 1, -3, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19390 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1796⟩

theorem canonicalSound19390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19390.moment H = canonicalOutput19390.moment H :=
  canonical_of_padded canonicalInput19390 canonicalOutput19390 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19391 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 1, 2, -2], ![0, 1, 1, -1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19391 : ExponentCode := normalNode2807

theorem canonicalSound19391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19391.moment H = canonicalOutput19391.moment H :=
  canonical_of_padded canonicalInput19391 canonicalOutput19391 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
