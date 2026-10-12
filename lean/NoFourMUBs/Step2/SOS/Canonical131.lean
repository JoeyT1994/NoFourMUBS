import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical106
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8384 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -2, 1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput8384 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound8384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8384.moment H = canonicalOutput8384.moment H :=
  canonical_of_padded canonicalInput8384 canonicalOutput8384 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8385 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -2, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput8385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound8385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8385.moment H = canonicalOutput8385.moment H :=
  canonical_of_padded canonicalInput8385 canonicalOutput8385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8386 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput8386 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound8386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8386.moment H = canonicalOutput8386.moment H :=
  canonical_of_padded canonicalInput8386 canonicalOutput8386 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8387 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![0, 3, -2, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8387 : ExponentCode := normalNode4313

theorem canonicalSound8387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8387.moment H = canonicalOutput8387.moment H :=
  canonical_of_padded canonicalInput8387 canonicalOutput8387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8388 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput8388 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound8388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8388.moment H = canonicalOutput8388.moment H :=
  canonical_of_padded canonicalInput8388 canonicalOutput8388 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8389 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput8389 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound8389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8389.moment H = canonicalOutput8389.moment H :=
  canonical_of_padded canonicalInput8389 canonicalOutput8389 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8390 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8390 : ExponentCode := normalNode9882

theorem canonicalSound8390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8390.moment H = canonicalOutput8390.moment H :=
  canonical_of_padded canonicalInput8390 canonicalOutput8390 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8391 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput8391 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound8391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8391.moment H = canonicalOutput8391.moment H :=
  canonical_of_padded canonicalInput8391 canonicalOutput8391 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8392 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput8392 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound8392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8392.moment H = canonicalOutput8392.moment H :=
  canonical_of_padded canonicalInput8392 canonicalOutput8392 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8393 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 1, -3, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput8393 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound8393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8393.moment H = canonicalOutput8393.moment H :=
  canonical_of_padded canonicalInput8393 canonicalOutput8393 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8394 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8394 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound8394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8394.moment H = canonicalOutput8394.moment H :=
  canonical_of_padded canonicalInput8394 canonicalOutput8394 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8395 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 2, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput8395 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound8395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8395.moment H = canonicalOutput8395.moment H :=
  canonical_of_padded canonicalInput8395 canonicalOutput8395 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8396 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 2, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput8396 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound8396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8396.moment H = canonicalOutput8396.moment H :=
  canonical_of_padded canonicalInput8396 canonicalOutput8396 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8397 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -2, 1, 1], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput8397 : ExponentCode := normalNode4191

theorem canonicalSound8397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8397.moment H = canonicalOutput8397.moment H :=
  canonical_of_padded canonicalInput8397 canonicalOutput8397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8398 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput8398 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1561⟩

theorem canonicalSound8398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8398.moment H = canonicalOutput8398.moment H :=
  canonical_of_padded canonicalInput8398 canonicalOutput8398 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8399 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput8399 : ExponentCode := normalNode4239

theorem canonicalSound8399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8399.moment H = canonicalOutput8399.moment H :=
  canonical_of_padded canonicalInput8399 canonicalOutput8399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8400 : ExponentCode := ⟨6, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput8400 : ExponentCode := normalNode1178

theorem canonicalSound8400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8400.moment H = canonicalOutput8400.moment H :=
  canonical_of_padded canonicalInput8400 canonicalOutput8400 (by decide) (by decide)
    ⟨false, true, canonicalPermutation91, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8401 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput8401 : ExponentCode := normalNode1330

theorem canonicalSound8401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8401.moment H = canonicalOutput8401.moment H :=
  canonical_of_padded canonicalInput8401 canonicalOutput8401 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8402 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8402 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound8402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8402.moment H = canonicalOutput8402.moment H :=
  canonical_of_padded canonicalInput8402 canonicalOutput8402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput8403 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput8403 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound8403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8403.moment H = canonicalOutput8403.moment H :=
  canonical_of_padded canonicalInput8403 canonicalOutput8403 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8404 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8404 : ExponentCode := normalNode4254

theorem canonicalSound8404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8404.moment H = canonicalOutput8404.moment H :=
  canonical_of_padded canonicalInput8404 canonicalOutput8404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8405 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput8405 : ExponentCode := normalNode7399

theorem canonicalSound8405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8405.moment H = canonicalOutput8405.moment H :=
  canonical_of_padded canonicalInput8405 canonicalOutput8405 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8406 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput8406 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2497⟩

theorem canonicalSound8406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8406.moment H = canonicalOutput8406.moment H :=
  canonical_of_padded canonicalInput8406 canonicalOutput8406 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8407 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8407 : ExponentCode := normalNode9021

theorem canonicalSound8407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8407.moment H = canonicalOutput8407.moment H :=
  canonical_of_padded canonicalInput8407 canonicalOutput8407 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8408 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput8408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound8408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8408.moment H = canonicalOutput8408.moment H :=
  canonical_of_padded canonicalInput8408 canonicalOutput8408 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8409 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8409 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound8409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8409.moment H = canonicalOutput8409.moment H :=
  canonical_of_padded canonicalInput8409 canonicalOutput8409 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8410 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput8410 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound8410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8410.moment H = canonicalOutput8410.moment H :=
  canonical_of_padded canonicalInput8410 canonicalOutput8410 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8411 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput8411 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2193⟩

theorem canonicalSound8411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8411.moment H = canonicalOutput8411.moment H :=
  canonical_of_padded canonicalInput8411 canonicalOutput8411 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8412 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8412 : ExponentCode := normalNode7911

theorem canonicalSound8412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8412.moment H = canonicalOutput8412.moment H :=
  canonical_of_padded canonicalInput8412 canonicalOutput8412 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8413 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8413 : ExponentCode := normalNode8991

theorem canonicalSound8413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8413.moment H = canonicalOutput8413.moment H :=
  canonical_of_padded canonicalInput8413 canonicalOutput8413 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8414 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8414 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound8414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8414.moment H = canonicalOutput8414.moment H :=
  canonical_of_padded canonicalInput8414 canonicalOutput8414 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8415 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput8415 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound8415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8415.moment H = canonicalOutput8415.moment H :=
  canonical_of_padded canonicalInput8415 canonicalOutput8415 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8416 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput8416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2539⟩

theorem canonicalSound8416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8416.moment H = canonicalOutput8416.moment H :=
  canonical_of_padded canonicalInput8416 canonicalOutput8416 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8417 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8417 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2539⟩

theorem canonicalSound8417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8417.moment H = canonicalOutput8417.moment H :=
  canonical_of_padded canonicalInput8417 canonicalOutput8417 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8418 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound8418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8418.moment H = canonicalOutput8418.moment H :=
  canonical_of_padded canonicalInput8418 canonicalOutput8418 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8419 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8419 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound8419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8419.moment H = canonicalOutput8419.moment H :=
  canonical_of_padded canonicalInput8419 canonicalOutput8419 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8420 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput8420 : ExponentCode := normalNode9011

theorem canonicalSound8420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8420.moment H = canonicalOutput8420.moment H :=
  canonical_of_padded canonicalInput8420 canonicalOutput8420 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8421 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8421 : ExponentCode := normalNode9388

theorem canonicalSound8421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8421.moment H = canonicalOutput8421.moment H :=
  canonical_of_padded canonicalInput8421 canonicalOutput8421 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8422 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8422 : ExponentCode := normalNode8949

theorem canonicalSound8422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8422.moment H = canonicalOutput8422.moment H :=
  canonical_of_padded canonicalInput8422 canonicalOutput8422 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8423 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput8423 : ExponentCode := normalNode2649

theorem canonicalSound8423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8423.moment H = canonicalOutput8423.moment H :=
  canonical_of_padded canonicalInput8423 canonicalOutput8423 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8424 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8424 : ExponentCode := normalNode10532

theorem canonicalSound8424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8424.moment H = canonicalOutput8424.moment H :=
  canonical_of_padded canonicalInput8424 canonicalOutput8424 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8425 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput8425 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound8425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8425.moment H = canonicalOutput8425.moment H :=
  canonical_of_padded canonicalInput8425 canonicalOutput8425 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8426 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput8426 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound8426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8426.moment H = canonicalOutput8426.moment H :=
  canonical_of_padded canonicalInput8426 canonicalOutput8426 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput8427 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput8427 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound8427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8427.moment H = canonicalOutput8427.moment H :=
  canonical_of_padded canonicalInput8427 canonicalOutput8427 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8428 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput8428 : ExponentCode := normalNode2932

theorem canonicalSound8428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8428.moment H = canonicalOutput8428.moment H :=
  canonical_of_padded canonicalInput8428 canonicalOutput8428 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8429 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8429 : ExponentCode := normalNode2407

theorem canonicalSound8429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8429.moment H = canonicalOutput8429.moment H :=
  canonical_of_padded canonicalInput8429 canonicalOutput8429 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8430 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8430 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound8430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8430.moment H = canonicalOutput8430.moment H :=
  canonical_of_padded canonicalInput8430 canonicalOutput8430 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput8431 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8431 : ExponentCode := normalNode10529

theorem canonicalSound8431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8431.moment H = canonicalOutput8431.moment H :=
  canonical_of_padded canonicalInput8431 canonicalOutput8431 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8432 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8432 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound8432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8432.moment H = canonicalOutput8432.moment H :=
  canonical_of_padded canonicalInput8432 canonicalOutput8432 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput8433 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput8433 : ExponentCode := normalNode10529

theorem canonicalSound8433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8433.moment H = canonicalOutput8433.moment H :=
  canonical_of_padded canonicalInput8433 canonicalOutput8433 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8434 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8434 : ExponentCode := normalNode10251

theorem canonicalSound8434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8434.moment H = canonicalOutput8434.moment H :=
  canonical_of_padded canonicalInput8434 canonicalOutput8434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8435 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8435 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound8435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8435.moment H = canonicalOutput8435.moment H :=
  canonical_of_padded canonicalInput8435 canonicalOutput8435 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8436 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8436 : ExponentCode := normalNode8991

theorem canonicalSound8436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8436.moment H = canonicalOutput8436.moment H :=
  canonical_of_padded canonicalInput8436 canonicalOutput8436 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8437 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput8437 : ExponentCode := normalNode10251

theorem canonicalSound8437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8437.moment H = canonicalOutput8437.moment H :=
  canonical_of_padded canonicalInput8437 canonicalOutput8437 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8438 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8438 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound8438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8438.moment H = canonicalOutput8438.moment H :=
  canonical_of_padded canonicalInput8438 canonicalOutput8438 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8439 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput8439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound8439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8439.moment H = canonicalOutput8439.moment H :=
  canonical_of_padded canonicalInput8439 canonicalOutput8439 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8440 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8440 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2582⟩

theorem canonicalSound8440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8440.moment H = canonicalOutput8440.moment H :=
  canonical_of_padded canonicalInput8440 canonicalOutput8440 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3421step0⟩

def canonicalOutput8441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound8441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8441.moment H = canonicalOutput8441.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3421step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3421step0 = OAI.MUB6.Certificate.PairSemantics.raw3421.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3421).trans (OAI.MUB6.Certificate.PairSemantics.canonical3421 hH)

def canonicalInput8442 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput8442 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1917⟩

theorem canonicalSound8442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8442.moment H = canonicalOutput8442.moment H :=
  canonical_of_padded canonicalInput8442 canonicalOutput8442 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8443 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput8443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound8443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8443.moment H = canonicalOutput8443.moment H :=
  canonical_of_padded canonicalInput8443 canonicalOutput8443 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8444 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput8444 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound8444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8444.moment H = canonicalOutput8444.moment H :=
  canonical_of_padded canonicalInput8444 canonicalOutput8444 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8445 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![1, -2, 2, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput8445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound8445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8445.moment H = canonicalOutput8445.moment H :=
  canonical_of_padded canonicalInput8445 canonicalOutput8445 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8446 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput8446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound8446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8446.moment H = canonicalOutput8446.moment H :=
  canonical_of_padded canonicalInput8446 canonicalOutput8446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8447 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput8447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound8447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8447.moment H = canonicalOutput8447.moment H :=
  canonical_of_padded canonicalInput8447 canonicalOutput8447 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
