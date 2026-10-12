import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19520 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 3, -3], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput19520 : ExponentCode := normalNode10983

theorem canonicalSound19520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19520.moment H = canonicalOutput19520.moment H :=
  canonical_of_padded canonicalInput19520 canonicalOutput19520 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19521 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 4, -4], ![0, 1, -2, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput19521 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code749

theorem canonicalSound19521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19521.moment H = canonicalOutput19521.moment H :=
  canonical_of_padded canonicalInput19521 canonicalOutput19521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19522 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 1, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput19522 : ExponentCode := normalNode9839

theorem canonicalSound19522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19522.moment H = canonicalOutput19522.moment H :=
  canonical_of_padded canonicalInput19522 canonicalOutput19522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19523 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 4, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput19523 : ExponentCode := normalNode7385

theorem canonicalSound19523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19523.moment H = canonicalOutput19523.moment H :=
  canonical_of_padded canonicalInput19523 canonicalOutput19523 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19524 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 1, 4, -4], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput19524 : ExponentCode := normalNode9360

theorem canonicalSound19524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19524.moment H = canonicalOutput19524.moment H :=
  canonical_of_padded canonicalInput19524 canonicalOutput19524 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19525 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 2, -2, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19525 : ExponentCode := normalNode5132

theorem canonicalSound19525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19525.moment H = canonicalOutput19525.moment H :=
  canonical_of_padded canonicalInput19525 canonicalOutput19525 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19526 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 2, -2, 1], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19526 : ExponentCode := normalNode5108

theorem canonicalSound19526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19526.moment H = canonicalOutput19526.moment H :=
  canonical_of_padded canonicalInput19526 canonicalOutput19526 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19527 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 2, -2, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19527 : ExponentCode := normalNode5253

theorem canonicalSound19527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19527.moment H = canonicalOutput19527.moment H :=
  canonical_of_padded canonicalInput19527 canonicalOutput19527 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19528 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, -2, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput19528 : ExponentCode := normalNode10878

theorem canonicalSound19528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19528.moment H = canonicalOutput19528.moment H :=
  canonical_of_padded canonicalInput19528 canonicalOutput19528 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19529 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, -2, 1], ![1, -1, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19529 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1138

theorem canonicalSound19529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19529.moment H = canonicalOutput19529.moment H :=
  canonical_of_padded canonicalInput19529 canonicalOutput19529 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19530 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 2, -1, 0], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19530 : ExponentCode := normalNode5402

theorem canonicalSound19530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19530.moment H = canonicalOutput19530.moment H :=
  canonical_of_padded canonicalInput19530 canonicalOutput19530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19531 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 2, -1, 0], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19531 : ExponentCode := normalNode5358

theorem canonicalSound19531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19531.moment H = canonicalOutput19531.moment H :=
  canonical_of_padded canonicalInput19531 canonicalOutput19531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19532 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19532 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound19532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19532.moment H = canonicalOutput19532.moment H :=
  canonical_of_padded canonicalInput19532 canonicalOutput19532 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19533 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19533 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1204

theorem canonicalSound19533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19533.moment H = canonicalOutput19533.moment H :=
  canonical_of_padded canonicalInput19533 canonicalOutput19533 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19534 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 0, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput19534 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1206

theorem canonicalSound19534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19534.moment H = canonicalOutput19534.moment H :=
  canonical_of_padded canonicalInput19534 canonicalOutput19534 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19535 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound19535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19535.moment H = canonicalOutput19535.moment H :=
  canonical_of_padded canonicalInput19535 canonicalOutput19535 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19536 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19536 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound19536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19536.moment H = canonicalOutput19536.moment H :=
  canonical_of_padded canonicalInput19536 canonicalOutput19536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19537 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 1, -2], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput19537 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound19537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19537.moment H = canonicalOutput19537.moment H :=
  canonical_of_padded canonicalInput19537 canonicalOutput19537 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19538 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19538 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound19538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19538.moment H = canonicalOutput19538.moment H :=
  canonical_of_padded canonicalInput19538 canonicalOutput19538 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19539 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 2, -3], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput19539 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node677⟩

theorem canonicalSound19539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19539.moment H = canonicalOutput19539.moment H :=
  canonical_of_padded canonicalInput19539 canonicalOutput19539 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19540 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, 2, 3, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput19540 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node992⟩

theorem canonicalSound19540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19540.moment H = canonicalOutput19540.moment H :=
  canonical_of_padded canonicalInput19540 canonicalOutput19540 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19541 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 0, 2], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput19541 : ExponentCode := normalNode9359

theorem canonicalSound19541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19541.moment H = canonicalOutput19541.moment H :=
  canonical_of_padded canonicalInput19541 canonicalOutput19541 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19542 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 0, 2], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput19542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩

theorem canonicalSound19542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19542.moment H = canonicalOutput19542.moment H :=
  canonical_of_padded canonicalInput19542 canonicalOutput19542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19543 : ExponentCode := ⟨3, 4, ![![-1, 0, -2, 3], ![0, -2, 0, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput19543 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound19543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19543.moment H = canonicalOutput19543.moment H :=
  canonical_of_padded canonicalInput19543 canonicalOutput19543 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19544 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput19544 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound19544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19544.moment H = canonicalOutput19544.moment H :=
  canonical_of_padded canonicalInput19544 canonicalOutput19544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19545 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput19545 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound19545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19545.moment H = canonicalOutput19545.moment H :=
  canonical_of_padded canonicalInput19545 canonicalOutput19545 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19546 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput19546 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound19546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19546.moment H = canonicalOutput19546.moment H :=
  canonical_of_padded canonicalInput19546 canonicalOutput19546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19547 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput19547 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound19547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19547.moment H = canonicalOutput19547.moment H :=
  canonical_of_padded canonicalInput19547 canonicalOutput19547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19548 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19548 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound19548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19548.moment H = canonicalOutput19548.moment H :=
  canonical_of_padded canonicalInput19548 canonicalOutput19548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19549 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput19549 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound19549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19549.moment H = canonicalOutput19549.moment H :=
  canonical_of_padded canonicalInput19549 canonicalOutput19549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19550 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput19550 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound19550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19550.moment H = canonicalOutput19550.moment H :=
  canonical_of_padded canonicalInput19550 canonicalOutput19550 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19551 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 2, 0], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput19551 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound19551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19551.moment H = canonicalOutput19551.moment H :=
  canonical_of_padded canonicalInput19551 canonicalOutput19551 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19552 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19552 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1001⟩

theorem canonicalSound19552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19552.moment H = canonicalOutput19552.moment H :=
  canonical_of_padded canonicalInput19552 canonicalOutput19552 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19553 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19553 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1305⟩

theorem canonicalSound19553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19553.moment H = canonicalOutput19553.moment H :=
  canonical_of_padded canonicalInput19553 canonicalOutput19553 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19554 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 4, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput19554 : ExponentCode := normalNode9008

theorem canonicalSound19554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19554.moment H = canonicalOutput19554.moment H :=
  canonical_of_padded canonicalInput19554 canonicalOutput19554 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19555 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -2, 4, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19555 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2751⟩

theorem canonicalSound19555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19555.moment H = canonicalOutput19555.moment H :=
  canonical_of_padded canonicalInput19555 canonicalOutput19555 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19556 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput19556 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1004⟩

theorem canonicalSound19556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19556.moment H = canonicalOutput19556.moment H :=
  canonical_of_padded canonicalInput19556 canonicalOutput19556 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19557 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 4, -2], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19557 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1297⟩

theorem canonicalSound19557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19557.moment H = canonicalOutput19557.moment H :=
  canonical_of_padded canonicalInput19557 canonicalOutput19557 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19558 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -2, 4, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19558 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound19558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19558.moment H = canonicalOutput19558.moment H :=
  canonical_of_padded canonicalInput19558 canonicalOutput19558 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19559 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19559 : ExponentCode := normalNode5362

theorem canonicalSound19559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19559.moment H = canonicalOutput19559.moment H :=
  canonical_of_padded canonicalInput19559 canonicalOutput19559 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19560 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput19560 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound19560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19560.moment H = canonicalOutput19560.moment H :=
  canonical_of_padded canonicalInput19560 canonicalOutput19560 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19561 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19561 : ExponentCode := normalNode9866

theorem canonicalSound19561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19561.moment H = canonicalOutput19561.moment H :=
  canonical_of_padded canonicalInput19561 canonicalOutput19561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19562 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput19562 : ExponentCode := normalNode9867

theorem canonicalSound19562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19562.moment H = canonicalOutput19562.moment H :=
  canonical_of_padded canonicalInput19562 canonicalOutput19562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19563 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput19563 : ExponentCode := normalNode9674

theorem canonicalSound19563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19563.moment H = canonicalOutput19563.moment H :=
  canonical_of_padded canonicalInput19563 canonicalOutput19563 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19564 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput19564 : ExponentCode := normalNode9675

theorem canonicalSound19564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19564.moment H = canonicalOutput19564.moment H :=
  canonical_of_padded canonicalInput19564 canonicalOutput19564 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19565 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput19565 : ExponentCode := normalNode8922

theorem canonicalSound19565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19565.moment H = canonicalOutput19565.moment H :=
  canonical_of_padded canonicalInput19565 canonicalOutput19565 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19566 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![-1, 2, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19566 : ExponentCode := normalNode5641

theorem canonicalSound19566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19566.moment H = canonicalOutput19566.moment H :=
  canonical_of_padded canonicalInput19566 canonicalOutput19566 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19567 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19567 : ExponentCode := normalNode5410

theorem canonicalSound19567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19567.moment H = canonicalOutput19567.moment H :=
  canonical_of_padded canonicalInput19567 canonicalOutput19567 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19568 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput19568 : ExponentCode := normalNode9704

theorem canonicalSound19568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19568.moment H = canonicalOutput19568.moment H :=
  canonical_of_padded canonicalInput19568 canonicalOutput19568 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19569 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19569 : ExponentCode := normalNode9901

theorem canonicalSound19569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19569.moment H = canonicalOutput19569.moment H :=
  canonical_of_padded canonicalInput19569 canonicalOutput19569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19570 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput19570 : ExponentCode := normalNode9906

theorem canonicalSound19570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19570.moment H = canonicalOutput19570.moment H :=
  canonical_of_padded canonicalInput19570 canonicalOutput19570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19571 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19571 : ExponentCode := normalNode9902

theorem canonicalSound19571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19571.moment H = canonicalOutput19571.moment H :=
  canonical_of_padded canonicalInput19571 canonicalOutput19571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19572 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, -1, 0]]⟩

def canonicalOutput19572 : ExponentCode := normalNode9906

theorem canonicalSound19572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19572.moment H = canonicalOutput19572.moment H :=
  canonical_of_padded canonicalInput19572 canonicalOutput19572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19573 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput19573 : ExponentCode := normalNode9704

theorem canonicalSound19573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19573.moment H = canonicalOutput19573.moment H :=
  canonical_of_padded canonicalInput19573 canonicalOutput19573 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19574 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19574 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩

theorem canonicalSound19574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19574.moment H = canonicalOutput19574.moment H :=
  canonical_of_padded canonicalInput19574 canonicalOutput19574 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19575 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput19575 : ExponentCode := normalNode7187

theorem canonicalSound19575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19575.moment H = canonicalOutput19575.moment H :=
  canonical_of_padded canonicalInput19575 canonicalOutput19575 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19576 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput19576 : ExponentCode := normalNode9881

theorem canonicalSound19576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19576.moment H = canonicalOutput19576.moment H :=
  canonical_of_padded canonicalInput19576 canonicalOutput19576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19577 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19577 : ExponentCode := normalNode9892

theorem canonicalSound19577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19577.moment H = canonicalOutput19577.moment H :=
  canonical_of_padded canonicalInput19577 canonicalOutput19577 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19578 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19578 : ExponentCode := normalNode9894

theorem canonicalSound19578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19578.moment H = canonicalOutput19578.moment H :=
  canonical_of_padded canonicalInput19578 canonicalOutput19578 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19579 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput19579 : ExponentCode := normalNode9693

theorem canonicalSound19579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19579.moment H = canonicalOutput19579.moment H :=
  canonical_of_padded canonicalInput19579 canonicalOutput19579 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19580 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19580 : ExponentCode := normalNode9926

theorem canonicalSound19580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19580.moment H = canonicalOutput19580.moment H :=
  canonical_of_padded canonicalInput19580 canonicalOutput19580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19581 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19581 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩

theorem canonicalSound19581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19581.moment H = canonicalOutput19581.moment H :=
  canonical_of_padded canonicalInput19581 canonicalOutput19581 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19582 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput19582 : ExponentCode := normalNode9917

theorem canonicalSound19582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19582.moment H = canonicalOutput19582.moment H :=
  canonical_of_padded canonicalInput19582 canonicalOutput19582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19583 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput19583 : ExponentCode := normalNode10609

theorem canonicalSound19583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19583.moment H = canonicalOutput19583.moment H :=
  canonical_of_padded canonicalInput19583 canonicalOutput19583 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
