import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8512 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput8512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound8512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8512.moment H = canonicalOutput8512.moment H :=
  canonical_of_padded canonicalInput8512 canonicalOutput8512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8513 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput8513 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound8513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8513.moment H = canonicalOutput8513.moment H :=
  canonical_of_padded canonicalInput8513 canonicalOutput8513 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8514 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput8514 : ExponentCode := normalNode4293

theorem canonicalSound8514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8514.moment H = canonicalOutput8514.moment H :=
  canonical_of_padded canonicalInput8514 canonicalOutput8514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8515 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput8515 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound8515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8515.moment H = canonicalOutput8515.moment H :=
  canonical_of_padded canonicalInput8515 canonicalOutput8515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8516 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2717⟩

theorem canonicalSound8516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8516.moment H = canonicalOutput8516.moment H :=
  canonical_of_padded canonicalInput8516 canonicalOutput8516 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8517 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8517 : ExponentCode := normalNode9099

theorem canonicalSound8517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8517.moment H = canonicalOutput8517.moment H :=
  canonical_of_padded canonicalInput8517 canonicalOutput8517 (by decide) (by decide)
    ⟨false, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8518 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput8518 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound8518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8518.moment H = canonicalOutput8518.moment H :=
  canonical_of_padded canonicalInput8518 canonicalOutput8518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8519 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput8519 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1234⟩

theorem canonicalSound8519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8519.moment H = canonicalOutput8519.moment H :=
  canonical_of_padded canonicalInput8519 canonicalOutput8519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8520 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8520 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound8520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8520.moment H = canonicalOutput8520.moment H :=
  canonical_of_padded canonicalInput8520 canonicalOutput8520 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8521 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput8521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound8521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8521.moment H = canonicalOutput8521.moment H :=
  canonical_of_padded canonicalInput8521 canonicalOutput8521 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8522 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8522 : ExponentCode := normalNode4310

theorem canonicalSound8522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8522.moment H = canonicalOutput8522.moment H :=
  canonical_of_padded canonicalInput8522 canonicalOutput8522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8523 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8523 : ExponentCode := normalNode3903

theorem canonicalSound8523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8523.moment H = canonicalOutput8523.moment H :=
  canonical_of_padded canonicalInput8523 canonicalOutput8523 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8524 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput8524 : ExponentCode := normalNode4020

theorem canonicalSound8524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8524.moment H = canonicalOutput8524.moment H :=
  canonical_of_padded canonicalInput8524 canonicalOutput8524 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8525 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput8525 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound8525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8525.moment H = canonicalOutput8525.moment H :=
  canonical_of_padded canonicalInput8525 canonicalOutput8525 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8526 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, -2, -2, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput8526 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code637

theorem canonicalSound8526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8526.moment H = canonicalOutput8526.moment H :=
  canonical_of_padded canonicalInput8526 canonicalOutput8526 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8527 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, -2, -1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput8527 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound8527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8527.moment H = canonicalOutput8527.moment H :=
  canonical_of_padded canonicalInput8527 canonicalOutput8527 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8528 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, -2, 0, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput8528 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound8528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8528.moment H = canonicalOutput8528.moment H :=
  canonical_of_padded canonicalInput8528 canonicalOutput8528 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8529 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, -1, -3, 3], ![1, 2, 0, -3]]⟩

def canonicalOutput8529 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound8529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8529.moment H = canonicalOutput8529.moment H :=
  canonical_of_padded canonicalInput8529 canonicalOutput8529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8530 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput8530 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound8530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8530.moment H = canonicalOutput8530.moment H :=
  canonical_of_padded canonicalInput8530 canonicalOutput8530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8531 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput8531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound8531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8531.moment H = canonicalOutput8531.moment H :=
  canonical_of_padded canonicalInput8531 canonicalOutput8531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8532 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput8532 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound8532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8532.moment H = canonicalOutput8532.moment H :=
  canonical_of_padded canonicalInput8532 canonicalOutput8532 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8533 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8533 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound8533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8533.moment H = canonicalOutput8533.moment H :=
  canonical_of_padded canonicalInput8533 canonicalOutput8533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8534 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput8534 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound8534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8534.moment H = canonicalOutput8534.moment H :=
  canonical_of_padded canonicalInput8534 canonicalOutput8534 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8535 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput8535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound8535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8535.moment H = canonicalOutput8535.moment H :=
  canonical_of_padded canonicalInput8535 canonicalOutput8535 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8536 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput8536 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1189⟩

theorem canonicalSound8536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8536.moment H = canonicalOutput8536.moment H :=
  canonical_of_padded canonicalInput8536 canonicalOutput8536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8537 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput8537 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node892⟩

theorem canonicalSound8537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8537.moment H = canonicalOutput8537.moment H :=
  canonical_of_padded canonicalInput8537 canonicalOutput8537 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8538 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8538 : ExponentCode := normalNode7956

theorem canonicalSound8538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8538.moment H = canonicalOutput8538.moment H :=
  canonical_of_padded canonicalInput8538 canonicalOutput8538 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8539 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8539 : ExponentCode := normalNode9081

theorem canonicalSound8539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8539.moment H = canonicalOutput8539.moment H :=
  canonical_of_padded canonicalInput8539 canonicalOutput8539 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8540 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8540 : ExponentCode := normalNode9063

theorem canonicalSound8540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8540.moment H = canonicalOutput8540.moment H :=
  canonical_of_padded canonicalInput8540 canonicalOutput8540 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8541 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput8541 : ExponentCode := normalNode10675

theorem canonicalSound8541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8541.moment H = canonicalOutput8541.moment H :=
  canonical_of_padded canonicalInput8541 canonicalOutput8541 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8542 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8542 : ExponentCode := normalNode9436

theorem canonicalSound8542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8542.moment H = canonicalOutput8542.moment H :=
  canonical_of_padded canonicalInput8542 canonicalOutput8542 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8543 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8543 : ExponentCode := normalNode9436

theorem canonicalSound8543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8543.moment H = canonicalOutput8543.moment H :=
  canonical_of_padded canonicalInput8543 canonicalOutput8543 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8544 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8544 : ExponentCode := normalNode10628

theorem canonicalSound8544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8544.moment H = canonicalOutput8544.moment H :=
  canonical_of_padded canonicalInput8544 canonicalOutput8544 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8545 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8545 : ExponentCode := normalNode10559

theorem canonicalSound8545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8545.moment H = canonicalOutput8545.moment H :=
  canonical_of_padded canonicalInput8545 canonicalOutput8545 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8546 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput8546 : ExponentCode := normalNode10637

theorem canonicalSound8546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8546.moment H = canonicalOutput8546.moment H :=
  canonical_of_padded canonicalInput8546 canonicalOutput8546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8547 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput8547 : ExponentCode := normalNode10665

theorem canonicalSound8547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8547.moment H = canonicalOutput8547.moment H :=
  canonical_of_padded canonicalInput8547 canonicalOutput8547 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8548 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput8548 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound8548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8548.moment H = canonicalOutput8548.moment H :=
  canonical_of_padded canonicalInput8548 canonicalOutput8548 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8549 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput8549 : ExponentCode := normalNode4422

theorem canonicalSound8549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8549.moment H = canonicalOutput8549.moment H :=
  canonical_of_padded canonicalInput8549 canonicalOutput8549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8550 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8550 : ExponentCode := normalNode9903

theorem canonicalSound8550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8550.moment H = canonicalOutput8550.moment H :=
  canonical_of_padded canonicalInput8550 canonicalOutput8550 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8551 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8551 : ExponentCode := normalNode9903

theorem canonicalSound8551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8551.moment H = canonicalOutput8551.moment H :=
  canonical_of_padded canonicalInput8551 canonicalOutput8551 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8552 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput8552 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound8552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8552.moment H = canonicalOutput8552.moment H :=
  canonical_of_padded canonicalInput8552 canonicalOutput8552 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8553 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8553 : ExponentCode := normalNode9697

theorem canonicalSound8553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8553.moment H = canonicalOutput8553.moment H :=
  canonical_of_padded canonicalInput8553 canonicalOutput8553 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8554 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8554 : ExponentCode := normalNode9697

theorem canonicalSound8554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8554.moment H = canonicalOutput8554.moment H :=
  canonical_of_padded canonicalInput8554 canonicalOutput8554 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8555 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 3, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput8555 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1183⟩

theorem canonicalSound8555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8555.moment H = canonicalOutput8555.moment H :=
  canonical_of_padded canonicalInput8555 canonicalOutput8555 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8556 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 2, -1, -1], ![2, -2, 3, -3]]⟩

def canonicalOutput8556 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code925

theorem canonicalSound8556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8556.moment H = canonicalOutput8556.moment H :=
  canonical_of_padded canonicalInput8556 canonicalOutput8556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8557 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput8557 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code896

theorem canonicalSound8557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8557.moment H = canonicalOutput8557.moment H :=
  canonical_of_padded canonicalInput8557 canonicalOutput8557 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8558 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8558 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1933⟩

theorem canonicalSound8558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8558.moment H = canonicalOutput8558.moment H :=
  canonical_of_padded canonicalInput8558 canonicalOutput8558 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8559 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 2, 2, -4], ![2, -2, 0, 0]]⟩

def canonicalOutput8559 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node582⟩

theorem canonicalSound8559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8559.moment H = canonicalOutput8559.moment H :=
  canonical_of_padded canonicalInput8559 canonicalOutput8559 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8560 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![1, -1, 3, -3], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8560 : ExponentCode := normalNode4423

theorem canonicalSound8560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8560.moment H = canonicalOutput8560.moment H :=
  canonical_of_padded canonicalInput8560 canonicalOutput8560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8561 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput8561 : ExponentCode := normalNode9441

theorem canonicalSound8561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8561.moment H = canonicalOutput8561.moment H :=
  canonical_of_padded canonicalInput8561 canonicalOutput8561 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8562 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -3, 3], ![1, 1, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput8562 : ExponentCode := normalNode9441

theorem canonicalSound8562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8562.moment H = canonicalOutput8562.moment H :=
  canonical_of_padded canonicalInput8562 canonicalOutput8562 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8563 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8563 : ExponentCode := normalNode7900

theorem canonicalSound8563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8563.moment H = canonicalOutput8563.moment H :=
  canonical_of_padded canonicalInput8563 canonicalOutput8563 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8564 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput8564 : ExponentCode := normalNode10332

theorem canonicalSound8564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8564.moment H = canonicalOutput8564.moment H :=
  canonical_of_padded canonicalInput8564 canonicalOutput8564 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8565 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput8565 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound8565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8565.moment H = canonicalOutput8565.moment H :=
  canonical_of_padded canonicalInput8565 canonicalOutput8565 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8566 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8566 : ExponentCode := normalNode9448

theorem canonicalSound8566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8566.moment H = canonicalOutput8566.moment H :=
  canonical_of_padded canonicalInput8566 canonicalOutput8566 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8567 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8567 : ExponentCode := normalNode10283

theorem canonicalSound8567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8567.moment H = canonicalOutput8567.moment H :=
  canonical_of_padded canonicalInput8567 canonicalOutput8567 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8568 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8568 : ExponentCode := normalNode10659

theorem canonicalSound8568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8568.moment H = canonicalOutput8568.moment H :=
  canonical_of_padded canonicalInput8568 canonicalOutput8568 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8569 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput8569 : ExponentCode := normalNode10632

theorem canonicalSound8569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8569.moment H = canonicalOutput8569.moment H :=
  canonical_of_padded canonicalInput8569 canonicalOutput8569 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8570 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput8570 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2077⟩

theorem canonicalSound8570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8570.moment H = canonicalOutput8570.moment H :=
  canonical_of_padded canonicalInput8570 canonicalOutput8570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8571 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput8571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound8571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8571.moment H = canonicalOutput8571.moment H :=
  canonical_of_padded canonicalInput8571 canonicalOutput8571 (by decide) (by decide)
    ⟨false, false, canonicalPermutation38, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8572 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -3, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8572 : ExponentCode := normalNode4094

theorem canonicalSound8572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8572.moment H = canonicalOutput8572.moment H :=
  canonical_of_padded canonicalInput8572 canonicalOutput8572 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8573 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8573 : ExponentCode := normalNode3783

theorem canonicalSound8573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8573.moment H = canonicalOutput8573.moment H :=
  canonical_of_padded canonicalInput8573 canonicalOutput8573 (by decide) (by decide)
    ⟨false, false, canonicalPermutation64, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8574 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8574 : ExponentCode := normalNode4090

theorem canonicalSound8574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8574.moment H = canonicalOutput8574.moment H :=
  canonical_of_padded canonicalInput8574 canonicalOutput8574 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8575 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8575 : ExponentCode := normalNode10558

theorem canonicalSound8575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8575.moment H = canonicalOutput8575.moment H :=
  canonical_of_padded canonicalInput8575 canonicalOutput8575 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
