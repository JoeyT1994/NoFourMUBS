import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15360 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15360 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound15360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15360.moment H = canonicalOutput15360.moment H :=
  canonical_of_padded canonicalInput15360 canonicalOutput15360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15361 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput15361 : ExponentCode := normalNode7186

theorem canonicalSound15361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15361.moment H = canonicalOutput15361.moment H :=
  canonical_of_padded canonicalInput15361 canonicalOutput15361 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15362 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![1, -1, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput15362 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node965⟩

theorem canonicalSound15362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15362.moment H = canonicalOutput15362.moment H :=
  canonical_of_padded canonicalInput15362 canonicalOutput15362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15363 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![1, -1, 4, -4], ![0, 2, -2, 0]]⟩

def canonicalOutput15363 : ExponentCode := normalNode6486

theorem canonicalSound15363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15363.moment H = canonicalOutput15363.moment H :=
  canonical_of_padded canonicalInput15363 canonicalOutput15363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15364 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput15364 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node960⟩

theorem canonicalSound15364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15364.moment H = canonicalOutput15364.moment H :=
  canonical_of_padded canonicalInput15364 canonicalOutput15364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15365 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput15365 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound15365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15365.moment H = canonicalOutput15365.moment H :=
  canonical_of_padded canonicalInput15365 canonicalOutput15365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput15366 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput15366 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound15366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15366.moment H = canonicalOutput15366.moment H :=
  canonical_of_padded canonicalInput15366 canonicalOutput15366 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput15367 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput15367 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node285⟩

theorem canonicalSound15367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15367.moment H = canonicalOutput15367.moment H :=
  canonical_of_padded canonicalInput15367 canonicalOutput15367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15368 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput15368 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound15368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15368.moment H = canonicalOutput15368.moment H :=
  canonical_of_padded canonicalInput15368 canonicalOutput15368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15369 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, 0, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15369 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node26⟩

theorem canonicalSound15369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15369.moment H = canonicalOutput15369.moment H :=
  canonical_of_padded canonicalInput15369 canonicalOutput15369 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput15370 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput15370 : ExponentCode := normalNode7768

theorem canonicalSound15370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15370.moment H = canonicalOutput15370.moment H :=
  canonical_of_padded canonicalInput15370 canonicalOutput15370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15371 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15371 : ExponentCode := normalNode7644

theorem canonicalSound15371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15371.moment H = canonicalOutput15371.moment H :=
  canonical_of_padded canonicalInput15371 canonicalOutput15371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15372 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput15372 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2509⟩

theorem canonicalSound15372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15372.moment H = canonicalOutput15372.moment H :=
  canonical_of_padded canonicalInput15372 canonicalOutput15372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15373 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15373 : ExponentCode := normalNode7798

theorem canonicalSound15373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15373.moment H = canonicalOutput15373.moment H :=
  canonical_of_padded canonicalInput15373 canonicalOutput15373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15374 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput15374 : ExponentCode := normalNode7799

theorem canonicalSound15374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15374.moment H = canonicalOutput15374.moment H :=
  canonical_of_padded canonicalInput15374 canonicalOutput15374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15375 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 2, -2, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput15375 : ExponentCode := normalNode5695

theorem canonicalSound15375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15375.moment H = canonicalOutput15375.moment H :=
  canonical_of_padded canonicalInput15375 canonicalOutput15375 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15376 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![-1, 3, -1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput15376 : ExponentCode := normalNode7685

theorem canonicalSound15376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15376.moment H = canonicalOutput15376.moment H :=
  canonical_of_padded canonicalInput15376 canonicalOutput15376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput15377 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput15377 : ExponentCode := normalNode7952

theorem canonicalSound15377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15377.moment H = canonicalOutput15377.moment H :=
  canonical_of_padded canonicalInput15377 canonicalOutput15377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15378 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, -1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15378 : ExponentCode := normalNode7884

theorem canonicalSound15378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15378.moment H = canonicalOutput15378.moment H :=
  canonical_of_padded canonicalInput15378 canonicalOutput15378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15379 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput15379 : ExponentCode := normalNode7898

theorem canonicalSound15379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15379.moment H = canonicalOutput15379.moment H :=
  canonical_of_padded canonicalInput15379 canonicalOutput15379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15380 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput15380 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2554⟩

theorem canonicalSound15380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15380.moment H = canonicalOutput15380.moment H :=
  canonical_of_padded canonicalInput15380 canonicalOutput15380 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15381 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput15381 : ExponentCode := normalNode7968

theorem canonicalSound15381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15381.moment H = canonicalOutput15381.moment H :=
  canonical_of_padded canonicalInput15381 canonicalOutput15381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15382 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput15382 : ExponentCode := normalNode7967

theorem canonicalSound15382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15382.moment H = canonicalOutput15382.moment H :=
  canonical_of_padded canonicalInput15382 canonicalOutput15382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15383 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput15383 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2557⟩

theorem canonicalSound15383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15383.moment H = canonicalOutput15383.moment H :=
  canonical_of_padded canonicalInput15383 canonicalOutput15383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15384 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput15384 : ExponentCode := normalNode7966

theorem canonicalSound15384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15384.moment H = canonicalOutput15384.moment H :=
  canonical_of_padded canonicalInput15384 canonicalOutput15384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15385 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput15385 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2536⟩

theorem canonicalSound15385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15385.moment H = canonicalOutput15385.moment H :=
  canonical_of_padded canonicalInput15385 canonicalOutput15385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15386 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15386 : ExponentCode := normalNode7885

theorem canonicalSound15386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15386.moment H = canonicalOutput15386.moment H :=
  canonical_of_padded canonicalInput15386 canonicalOutput15386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15387 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput15387 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2536⟩

theorem canonicalSound15387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15387.moment H = canonicalOutput15387.moment H :=
  canonical_of_padded canonicalInput15387 canonicalOutput15387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15388 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput15388 : ExponentCode := normalNode7886

theorem canonicalSound15388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15388.moment H = canonicalOutput15388.moment H :=
  canonical_of_padded canonicalInput15388 canonicalOutput15388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15389 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 1, -2, 1]]⟩

def canonicalOutput15389 : ExponentCode := normalNode7968

theorem canonicalSound15389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15389.moment H = canonicalOutput15389.moment H :=
  canonical_of_padded canonicalInput15389 canonicalOutput15389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15390 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput15390 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node968⟩

theorem canonicalSound15390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15390.moment H = canonicalOutput15390.moment H :=
  canonical_of_padded canonicalInput15390 canonicalOutput15390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15391 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![0, -1, 1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput15391 : ExponentCode := normalNode7832

theorem canonicalSound15391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15391.moment H = canonicalOutput15391.moment H :=
  canonical_of_padded canonicalInput15391 canonicalOutput15391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15392 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![0, -1, 2, -1]]⟩

def canonicalOutput15392 : ExponentCode := normalNode7836

theorem canonicalSound15392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15392.moment H = canonicalOutput15392.moment H :=
  canonical_of_padded canonicalInput15392 canonicalOutput15392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15393 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput15393 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound15393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15393.moment H = canonicalOutput15393.moment H :=
  canonical_of_padded canonicalInput15393 canonicalOutput15393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15394 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![0, 2, -2, 0]]⟩

def canonicalOutput15394 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node971⟩

theorem canonicalSound15394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15394.moment H = canonicalOutput15394.moment H :=
  canonical_of_padded canonicalInput15394 canonicalOutput15394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15395 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 1, -1], ![1, -1, 3, -3], ![0, 2, -3, 1]]⟩

def canonicalOutput15395 : ExponentCode := normalNode7970

theorem canonicalSound15395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15395.moment H = canonicalOutput15395.moment H :=
  canonical_of_padded canonicalInput15395 canonicalOutput15395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15396 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![-1, 1, -2, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15396 : ExponentCode := normalNode7769

theorem canonicalSound15396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15396.moment H = canonicalOutput15396.moment H :=
  canonical_of_padded canonicalInput15396 canonicalOutput15396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15397 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15397 : ExponentCode := normalNode3828

theorem canonicalSound15397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15397.moment H = canonicalOutput15397.moment H :=
  canonical_of_padded canonicalInput15397 canonicalOutput15397 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15398 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput15398 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node955⟩

theorem canonicalSound15398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15398.moment H = canonicalOutput15398.moment H :=
  canonical_of_padded canonicalInput15398 canonicalOutput15398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15399 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 0, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput15399 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node959⟩

theorem canonicalSound15399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15399.moment H = canonicalOutput15399.moment H :=
  canonical_of_padded canonicalInput15399 canonicalOutput15399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15400 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15400 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node176⟩

theorem canonicalSound15400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15400.moment H = canonicalOutput15400.moment H :=
  canonical_of_padded canonicalInput15400 canonicalOutput15400 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15401 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, -1, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput15401 : ExponentCode := normalNode7865

theorem canonicalSound15401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15401.moment H = canonicalOutput15401.moment H :=
  canonical_of_padded canonicalInput15401 canonicalOutput15401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15402 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, -1, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15402 : ExponentCode := normalNode7888

theorem canonicalSound15402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15402.moment H = canonicalOutput15402.moment H :=
  canonical_of_padded canonicalInput15402 canonicalOutput15402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15403 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput15403 : ExponentCode := normalNode7974

theorem canonicalSound15403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15403.moment H = canonicalOutput15403.moment H :=
  canonical_of_padded canonicalInput15403 canonicalOutput15403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15404 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput15404 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2533⟩

theorem canonicalSound15404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15404.moment H = canonicalOutput15404.moment H :=
  canonical_of_padded canonicalInput15404 canonicalOutput15404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15405 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput15405 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound15405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15405.moment H = canonicalOutput15405.moment H :=
  canonical_of_padded canonicalInput15405 canonicalOutput15405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15406 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput15406 : ExponentCode := normalNode7839

theorem canonicalSound15406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15406.moment H = canonicalOutput15406.moment H :=
  canonical_of_padded canonicalInput15406 canonicalOutput15406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15407 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![1, -1, 1, -1], ![0, 2, -2, 0]]⟩

def canonicalOutput15407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound15407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15407.moment H = canonicalOutput15407.moment H :=
  canonical_of_padded canonicalInput15407 canonicalOutput15407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15408 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 2, -2], ![1, 0, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput15408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound15408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15408.moment H = canonicalOutput15408.moment H :=
  canonical_of_padded canonicalInput15408 canonicalOutput15408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15409 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 3, -3], ![-1, 2, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15409 : ExponentCode := normalNode5692

theorem canonicalSound15409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15409.moment H = canonicalOutput15409.moment H :=
  canonical_of_padded canonicalInput15409 canonicalOutput15409 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15410 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15410 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩

theorem canonicalSound15410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15410.moment H = canonicalOutput15410.moment H :=
  canonical_of_padded canonicalInput15410 canonicalOutput15410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15411 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput15411 : ExponentCode := normalNode7978

theorem canonicalSound15411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15411.moment H = canonicalOutput15411.moment H :=
  canonical_of_padded canonicalInput15411 canonicalOutput15411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15412 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 3, -3], ![0, 3, -2, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput15412 : ExponentCode := normalNode7842

theorem canonicalSound15412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15412.moment H = canonicalOutput15412.moment H :=
  canonical_of_padded canonicalInput15412 canonicalOutput15412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15413 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15413 : ExponentCode := normalNode7781

theorem canonicalSound15413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15413.moment H = canonicalOutput15413.moment H :=
  canonical_of_padded canonicalInput15413 canonicalOutput15413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15414 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![-1, 2, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15414 : ExponentCode := normalNode5067

theorem canonicalSound15414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15414.moment H = canonicalOutput15414.moment H :=
  canonical_of_padded canonicalInput15414 canonicalOutput15414 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15415 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15415 : ExponentCode := normalNode7958

theorem canonicalSound15415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15415.moment H = canonicalOutput15415.moment H :=
  canonical_of_padded canonicalInput15415 canonicalOutput15415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15416 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput15416 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node961⟩

theorem canonicalSound15416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15416.moment H = canonicalOutput15416.moment H :=
  canonical_of_padded canonicalInput15416 canonicalOutput15416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15417 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15417 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound15417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15417.moment H = canonicalOutput15417.moment H :=
  canonical_of_padded canonicalInput15417 canonicalOutput15417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15418 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput15418 : ExponentCode := normalNode7982

theorem canonicalSound15418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15418.moment H = canonicalOutput15418.moment H :=
  canonical_of_padded canonicalInput15418 canonicalOutput15418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15419 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput15419 : ExponentCode := normalNode7870

theorem canonicalSound15419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15419.moment H = canonicalOutput15419.moment H :=
  canonical_of_padded canonicalInput15419 canonicalOutput15419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15420 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput15420 : ExponentCode := normalNode7958

theorem canonicalSound15420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15420.moment H = canonicalOutput15420.moment H :=
  canonical_of_padded canonicalInput15420 canonicalOutput15420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15421 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput15421 : ExponentCode := normalNode7982

theorem canonicalSound15421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15421.moment H = canonicalOutput15421.moment H :=
  canonical_of_padded canonicalInput15421 canonicalOutput15421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15422 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -2, 1]]⟩

def canonicalOutput15422 : ExponentCode := normalNode7982

theorem canonicalSound15422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15422.moment H = canonicalOutput15422.moment H :=
  canonical_of_padded canonicalInput15422 canonicalOutput15422 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15423 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput15423 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound15423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15423.moment H = canonicalOutput15423.moment H :=
  canonical_of_padded canonicalInput15423 canonicalOutput15423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
