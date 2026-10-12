import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7360 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput7360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound7360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7360.moment H = canonicalOutput7360.moment H :=
  canonical_of_padded canonicalInput7360 canonicalOutput7360 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7361 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput7361 : ExponentCode := normalNode3847

theorem canonicalSound7361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7361.moment H = canonicalOutput7361.moment H :=
  canonical_of_padded canonicalInput7361 canonicalOutput7361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7362 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput7362 : ExponentCode := normalNode2414

theorem canonicalSound7362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7362.moment H = canonicalOutput7362.moment H :=
  canonical_of_padded canonicalInput7362 canonicalOutput7362 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7363 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7363 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound7363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7363.moment H = canonicalOutput7363.moment H :=
  canonical_of_padded canonicalInput7363 canonicalOutput7363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7364 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 2, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput7364 : ExponentCode := normalNode2414

theorem canonicalSound7364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7364.moment H = canonicalOutput7364.moment H :=
  canonical_of_padded canonicalInput7364 canonicalOutput7364 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7365 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput7365 : ExponentCode := normalNode2930

theorem canonicalSound7365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7365.moment H = canonicalOutput7365.moment H :=
  canonical_of_padded canonicalInput7365 canonicalOutput7365 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7366 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput7366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code866

theorem canonicalSound7366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7366.moment H = canonicalOutput7366.moment H :=
  canonical_of_padded canonicalInput7366 canonicalOutput7366 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7367 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![2, 2, -2, -2]]⟩

def canonicalOutput7367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code206

theorem canonicalSound7367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7367.moment H = canonicalOutput7367.moment H :=
  canonical_of_padded canonicalInput7367 canonicalOutput7367 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7368 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput7368 : ExponentCode := normalNode7179

theorem canonicalSound7368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7368.moment H = canonicalOutput7368.moment H :=
  canonical_of_padded canonicalInput7368 canonicalOutput7368 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7369 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput7369 : ExponentCode := normalNode3845

theorem canonicalSound7369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7369.moment H = canonicalOutput7369.moment H :=
  canonical_of_padded canonicalInput7369 canonicalOutput7369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7370 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7370 : ExponentCode := normalNode8986

theorem canonicalSound7370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7370.moment H = canonicalOutput7370.moment H :=
  canonical_of_padded canonicalInput7370 canonicalOutput7370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7371 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7371 : ExponentCode := normalNode9059

theorem canonicalSound7371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7371.moment H = canonicalOutput7371.moment H :=
  canonical_of_padded canonicalInput7371 canonicalOutput7371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7372 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput7372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound7372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7372.moment H = canonicalOutput7372.moment H :=
  canonical_of_padded canonicalInput7372 canonicalOutput7372 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7373 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput7373 : ExponentCode := normalNode10217

theorem canonicalSound7373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7373.moment H = canonicalOutput7373.moment H :=
  canonical_of_padded canonicalInput7373 canonicalOutput7373 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7374 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, -2, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput7374 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1233⟩

theorem canonicalSound7374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7374.moment H = canonicalOutput7374.moment H :=
  canonical_of_padded canonicalInput7374 canonicalOutput7374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7375 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput7375 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1496⟩

theorem canonicalSound7375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7375.moment H = canonicalOutput7375.moment H :=
  canonical_of_padded canonicalInput7375 canonicalOutput7375 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7376 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput7376 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2589⟩

theorem canonicalSound7376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7376.moment H = canonicalOutput7376.moment H :=
  canonical_of_padded canonicalInput7376 canonicalOutput7376 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7377 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7377 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1775⟩

theorem canonicalSound7377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7377.moment H = canonicalOutput7377.moment H :=
  canonical_of_padded canonicalInput7377 canonicalOutput7377 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7378 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput7378 : ExponentCode := normalNode8962

theorem canonicalSound7378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7378.moment H = canonicalOutput7378.moment H :=
  canonical_of_padded canonicalInput7378 canonicalOutput7378 (by decide) (by decide)
    ⟨false, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7379 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7379 : ExponentCode := normalNode9058

theorem canonicalSound7379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7379.moment H = canonicalOutput7379.moment H :=
  canonical_of_padded canonicalInput7379 canonicalOutput7379 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7380 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput7380 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound7380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7380.moment H = canonicalOutput7380.moment H :=
  canonical_of_padded canonicalInput7380 canonicalOutput7380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7381 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -2, 2, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput7381 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound7381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7381.moment H = canonicalOutput7381.moment H :=
  canonical_of_padded canonicalInput7381 canonicalOutput7381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7382 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -2, 3, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput7382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code207

theorem canonicalSound7382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7382.moment H = canonicalOutput7382.moment H :=
  canonical_of_padded canonicalInput7382 canonicalOutput7382 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7383 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput7383 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node392⟩

theorem canonicalSound7383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7383.moment H = canonicalOutput7383.moment H :=
  canonical_of_padded canonicalInput7383 canonicalOutput7383 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7384 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -1, 2, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7384 : ExponentCode := normalNode2414

theorem canonicalSound7384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7384.moment H = canonicalOutput7384.moment H :=
  canonical_of_padded canonicalInput7384 canonicalOutput7384 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7385 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput7385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound7385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7385.moment H = canonicalOutput7385.moment H :=
  canonical_of_padded canonicalInput7385 canonicalOutput7385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7386 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7386 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩

theorem canonicalSound7386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7386.moment H = canonicalOutput7386.moment H :=
  canonical_of_padded canonicalInput7386 canonicalOutput7386 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7387 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput7387 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound7387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7387.moment H = canonicalOutput7387.moment H :=
  canonical_of_padded canonicalInput7387 canonicalOutput7387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7388 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput7388 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound7388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7388.moment H = canonicalOutput7388.moment H :=
  canonical_of_padded canonicalInput7388 canonicalOutput7388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7389 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput7389 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound7389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7389.moment H = canonicalOutput7389.moment H :=
  canonical_of_padded canonicalInput7389 canonicalOutput7389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7390 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, 2, -2, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput7390 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound7390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7390.moment H = canonicalOutput7390.moment H :=
  canonical_of_padded canonicalInput7390 canonicalOutput7390 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7391 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -2, 1, 1], ![1, 1, 2, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput7391 : ExponentCode := normalNode3739

theorem canonicalSound7391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7391.moment H = canonicalOutput7391.moment H :=
  canonical_of_padded canonicalInput7391 canonicalOutput7391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7392 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 2, -3, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput7392 : ExponentCode := normalNode3848

theorem canonicalSound7392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7392.moment H = canonicalOutput7392.moment H :=
  canonical_of_padded canonicalInput7392 canonicalOutput7392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7393 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![2, 1, -3, 0], ![0, 0, 4, -4]]⟩

def canonicalOutput7393 : ExponentCode := normalNode1722

theorem canonicalSound7393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7393.moment H = canonicalOutput7393.moment H :=
  canonical_of_padded canonicalInput7393 canonicalOutput7393 (by decide) (by decide)
    ⟨false, true, canonicalPermutation88, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7394 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput7394 : ExponentCode := normalNode1176

theorem canonicalSound7394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7394.moment H = canonicalOutput7394.moment H :=
  canonical_of_padded canonicalInput7394 canonicalOutput7394 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7395 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![2, 0, -3, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput7395 : ExponentCode := normalNode3849

theorem canonicalSound7395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7395.moment H = canonicalOutput7395.moment H :=
  canonical_of_padded canonicalInput7395 canonicalOutput7395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7396 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, -2, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput7396 : ExponentCode := normalNode1026

theorem canonicalSound7396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7396.moment H = canonicalOutput7396.moment H :=
  canonical_of_padded canonicalInput7396 canonicalOutput7396 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation394, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7397 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput7397 : ExponentCode := normalNode1030

theorem canonicalSound7397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7397.moment H = canonicalOutput7397.moment H :=
  canonical_of_padded canonicalInput7397 canonicalOutput7397 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7398 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput7398 : ExponentCode := normalNode1898

theorem canonicalSound7398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7398.moment H = canonicalOutput7398.moment H :=
  canonical_of_padded canonicalInput7398 canonicalOutput7398 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7399 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 1, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput7399 : ExponentCode := normalNode3866

theorem canonicalSound7399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7399.moment H = canonicalOutput7399.moment H :=
  canonical_of_padded canonicalInput7399 canonicalOutput7399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7400 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput7400 : ExponentCode := normalNode4061

theorem canonicalSound7400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7400.moment H = canonicalOutput7400.moment H :=
  canonical_of_padded canonicalInput7400 canonicalOutput7400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7401 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput7401 : ExponentCode := normalNode2371

theorem canonicalSound7401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7401.moment H = canonicalOutput7401.moment H :=
  canonical_of_padded canonicalInput7401 canonicalOutput7401 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7402 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput7402 : ExponentCode := normalNode4057

theorem canonicalSound7402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7402.moment H = canonicalOutput7402.moment H :=
  canonical_of_padded canonicalInput7402 canonicalOutput7402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7403 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7403 : ExponentCode := normalNode10520

theorem canonicalSound7403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7403.moment H = canonicalOutput7403.moment H :=
  canonical_of_padded canonicalInput7403 canonicalOutput7403 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7404 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput7404 : ExponentCode := normalNode10519

theorem canonicalSound7404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7404.moment H = canonicalOutput7404.moment H :=
  canonical_of_padded canonicalInput7404 canonicalOutput7404 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7405 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7405 : ExponentCode := normalNode9553

theorem canonicalSound7405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7405.moment H = canonicalOutput7405.moment H :=
  canonical_of_padded canonicalInput7405 canonicalOutput7405 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7406 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput7406 : ExponentCode := normalNode10522

theorem canonicalSound7406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7406.moment H = canonicalOutput7406.moment H :=
  canonical_of_padded canonicalInput7406 canonicalOutput7406 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7407 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput7407 : ExponentCode := normalNode3893

theorem canonicalSound7407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7407.moment H = canonicalOutput7407.moment H :=
  canonical_of_padded canonicalInput7407 canonicalOutput7407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7408 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7408 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1701⟩

theorem canonicalSound7408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7408.moment H = canonicalOutput7408.moment H :=
  canonical_of_padded canonicalInput7408 canonicalOutput7408 (by decide) (by decide)
    ⟨false, true, canonicalPermutation34, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7409 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput7409 : ExponentCode := normalNode3889

theorem canonicalSound7409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7409.moment H = canonicalOutput7409.moment H :=
  canonical_of_padded canonicalInput7409 canonicalOutput7409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7410 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7410 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2740⟩

theorem canonicalSound7410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7410.moment H = canonicalOutput7410.moment H :=
  canonical_of_padded canonicalInput7410 canonicalOutput7410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7411 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7411 : ExponentCode := normalNode10331

theorem canonicalSound7411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7411.moment H = canonicalOutput7411.moment H :=
  canonical_of_padded canonicalInput7411 canonicalOutput7411 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7412 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7412 : ExponentCode := normalNode2651

theorem canonicalSound7412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7412.moment H = canonicalOutput7412.moment H :=
  canonical_of_padded canonicalInput7412 canonicalOutput7412 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7413 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7413 : ExponentCode := normalNode10274

theorem canonicalSound7413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7413.moment H = canonicalOutput7413.moment H :=
  canonical_of_padded canonicalInput7413 canonicalOutput7413 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7414 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7414 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2598⟩

theorem canonicalSound7414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7414.moment H = canonicalOutput7414.moment H :=
  canonical_of_padded canonicalInput7414 canonicalOutput7414 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7415 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput7415 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound7415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7415.moment H = canonicalOutput7415.moment H :=
  canonical_of_padded canonicalInput7415 canonicalOutput7415 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7416 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2412⟩

theorem canonicalSound7416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7416.moment H = canonicalOutput7416.moment H :=
  canonical_of_padded canonicalInput7416 canonicalOutput7416 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7417 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7417 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2427⟩

theorem canonicalSound7417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7417.moment H = canonicalOutput7417.moment H :=
  canonical_of_padded canonicalInput7417 canonicalOutput7417 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7418 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput7418 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node806⟩

theorem canonicalSound7418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7418.moment H = canonicalOutput7418.moment H :=
  canonical_of_padded canonicalInput7418 canonicalOutput7418 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7419 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![1, -2, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput7419 : ExponentCode := normalNode6979

theorem canonicalSound7419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7419.moment H = canonicalOutput7419.moment H :=
  canonical_of_padded canonicalInput7419 canonicalOutput7419 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7420 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -3, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput7420 : ExponentCode := normalNode3702

theorem canonicalSound7420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7420.moment H = canonicalOutput7420.moment H :=
  canonical_of_padded canonicalInput7420 canonicalOutput7420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7421 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 2, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput7421 : ExponentCode := normalNode3428

theorem canonicalSound7421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7421.moment H = canonicalOutput7421.moment H :=
  canonical_of_padded canonicalInput7421 canonicalOutput7421 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation293, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7422 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 0, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput7422 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound7422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7422.moment H = canonicalOutput7422.moment H :=
  canonical_of_padded canonicalInput7422 canonicalOutput7422 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7423 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -2, 1, 1], ![0, 3, 1, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput7423 : ExponentCode := normalNode3741

theorem canonicalSound7423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7423.moment H = canonicalOutput7423.moment H :=
  canonical_of_padded canonicalInput7423 canonicalOutput7423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
