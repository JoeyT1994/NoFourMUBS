import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8128 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-2, 2, 2, -2], ![4, -2, -3, 1]]⟩

def canonicalOutput8128 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound8128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8128.moment H = canonicalOutput8128.moment H :=
  canonical_of_padded canonicalInput8128 canonicalOutput8128 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8129 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-2, 3, 1, -2], ![4, -3, -2, 1]]⟩

def canonicalOutput8129 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound8129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8129.moment H = canonicalOutput8129.moment H :=
  canonical_of_padded canonicalInput8129 canonicalOutput8129 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8130 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-2, 4, -2, 0], ![4, -4, 1, -1]]⟩

def canonicalOutput8130 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound8130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8130.moment H = canonicalOutput8130.moment H :=
  canonical_of_padded canonicalInput8130 canonicalOutput8130 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8131 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-1, -3, 2, 2], ![3, 3, -3, -3]]⟩

def canonicalOutput8131 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code689

theorem canonicalSound8131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8131.moment H = canonicalOutput8131.moment H :=
  canonical_of_padded canonicalInput8131 canonicalOutput8131 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8132 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-1, -2, 4, -1], ![3, 2, -5, 0]]⟩

def canonicalOutput8132 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound8132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8132.moment H = canonicalOutput8132.moment H :=
  canonical_of_padded canonicalInput8132 canonicalOutput8132 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8133 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-1, 2, -3, 2], ![3, -2, 2, -3]]⟩

def canonicalOutput8133 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound8133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8133.moment H = canonicalOutput8133.moment H :=
  canonical_of_padded canonicalInput8133 canonicalOutput8133 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8134 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-1, 3, -3, 1], ![3, -3, 2, -2]]⟩

def canonicalOutput8134 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound8134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8134.moment H = canonicalOutput8134.moment H :=
  canonical_of_padded canonicalInput8134 canonicalOutput8134 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8135 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-1, 3, 1, -3], ![3, -3, -2, 2]]⟩

def canonicalOutput8135 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound8135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8135.moment H = canonicalOutput8135.moment H :=
  canonical_of_padded canonicalInput8135 canonicalOutput8135 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8136 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-1, 5, -2, -2], ![3, -5, 1, 1]]⟩

def canonicalOutput8136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code702

theorem canonicalSound8136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8136.moment H = canonicalOutput8136.moment H :=
  canonical_of_padded canonicalInput8136 canonicalOutput8136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8137 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, -4, 1, 3], ![2, 4, -2, -4]]⟩

def canonicalOutput8137 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1042

theorem canonicalSound8137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8137.moment H = canonicalOutput8137.moment H :=
  canonical_of_padded canonicalInput8137 canonicalOutput8137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8138 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput8138 : ExponentCode := normalNode5373

theorem canonicalSound8138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8138.moment H = canonicalOutput8138.moment H :=
  canonical_of_padded canonicalInput8138 canonicalOutput8138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8139 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 0, 3], ![1, 1, -2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput8139 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound8139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8139.moment H = canonicalOutput8139.moment H :=
  canonical_of_padded canonicalInput8139 canonicalOutput8139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8140 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput8140 : ExponentCode := normalNode4566

theorem canonicalSound8140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8140.moment H = canonicalOutput8140.moment H :=
  canonical_of_padded canonicalInput8140 canonicalOutput8140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8141 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -2, 1], ![2, 2, 0, -4]]⟩

def canonicalOutput8141 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩

theorem canonicalSound8141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8141.moment H = canonicalOutput8141.moment H :=
  canonical_of_padded canonicalInput8141 canonicalOutput8141 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8142 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput8142 : ExponentCode := normalNode4010

theorem canonicalSound8142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8142.moment H = canonicalOutput8142.moment H :=
  canonical_of_padded canonicalInput8142 canonicalOutput8142 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8143 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput8143 : ExponentCode := normalNode5396

theorem canonicalSound8143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8143.moment H = canonicalOutput8143.moment H :=
  canonical_of_padded canonicalInput8143 canonicalOutput8143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8144 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput8144 : ExponentCode := normalNode5402

theorem canonicalSound8144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8144.moment H = canonicalOutput8144.moment H :=
  canonical_of_padded canonicalInput8144 canonicalOutput8144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8145 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput8145 : ExponentCode := normalNode4003

theorem canonicalSound8145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8145.moment H = canonicalOutput8145.moment H :=
  canonical_of_padded canonicalInput8145 canonicalOutput8145 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8146 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput8146 : ExponentCode := normalNode5425

theorem canonicalSound8146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8146.moment H = canonicalOutput8146.moment H :=
  canonical_of_padded canonicalInput8146 canonicalOutput8146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8147 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8147 : ExponentCode := normalNode5527

theorem canonicalSound8147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8147.moment H = canonicalOutput8147.moment H :=
  canonical_of_padded canonicalInput8147 canonicalOutput8147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8148 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput8148 : ExponentCode := normalNode5529

theorem canonicalSound8148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8148.moment H = canonicalOutput8148.moment H :=
  canonical_of_padded canonicalInput8148 canonicalOutput8148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8149 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput8149 : ExponentCode := normalNode5221

theorem canonicalSound8149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8149.moment H = canonicalOutput8149.moment H :=
  canonical_of_padded canonicalInput8149 canonicalOutput8149 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8150 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8150 : ExponentCode := normalNode5504

theorem canonicalSound8150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8150.moment H = canonicalOutput8150.moment H :=
  canonical_of_padded canonicalInput8150 canonicalOutput8150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8151 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8151 : ExponentCode := normalNode5530

theorem canonicalSound8151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8151.moment H = canonicalOutput8151.moment H :=
  canonical_of_padded canonicalInput8151 canonicalOutput8151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8152 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput8152 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code928

theorem canonicalSound8152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8152.moment H = canonicalOutput8152.moment H :=
  canonical_of_padded canonicalInput8152 canonicalOutput8152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8153 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 1, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput8153 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound8153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8153.moment H = canonicalOutput8153.moment H :=
  canonical_of_padded canonicalInput8153 canonicalOutput8153 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8154 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput8154 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code277

theorem canonicalSound8154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8154.moment H = canonicalOutput8154.moment H :=
  canonical_of_padded canonicalInput8154 canonicalOutput8154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8155 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput8155 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound8155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8155.moment H = canonicalOutput8155.moment H :=
  canonical_of_padded canonicalInput8155 canonicalOutput8155 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8156 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8156 : ExponentCode := normalNode5536

theorem canonicalSound8156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8156.moment H = canonicalOutput8156.moment H :=
  canonical_of_padded canonicalInput8156 canonicalOutput8156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8157 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput8157 : ExponentCode := normalNode5474

theorem canonicalSound8157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8157.moment H = canonicalOutput8157.moment H :=
  canonical_of_padded canonicalInput8157 canonicalOutput8157 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8158 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, 1, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput8158 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound8158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8158.moment H = canonicalOutput8158.moment H :=
  canonical_of_padded canonicalInput8158 canonicalOutput8158 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8159 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8159 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1975⟩

theorem canonicalSound8159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8159.moment H = canonicalOutput8159.moment H :=
  canonical_of_padded canonicalInput8159 canonicalOutput8159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8160 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput8160 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound8160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8160.moment H = canonicalOutput8160.moment H :=
  canonical_of_padded canonicalInput8160 canonicalOutput8160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8161 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8161 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2262⟩

theorem canonicalSound8161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8161.moment H = canonicalOutput8161.moment H :=
  canonical_of_padded canonicalInput8161 canonicalOutput8161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8162 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8162 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2262⟩

theorem canonicalSound8162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8162.moment H = canonicalOutput8162.moment H :=
  canonical_of_padded canonicalInput8162 canonicalOutput8162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8163 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, 0, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8163 : ExponentCode := normalNode5540

theorem canonicalSound8163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8163.moment H = canonicalOutput8163.moment H :=
  canonical_of_padded canonicalInput8163 canonicalOutput8163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8164 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8164 : ExponentCode := normalNode5541

theorem canonicalSound8164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8164.moment H = canonicalOutput8164.moment H :=
  canonical_of_padded canonicalInput8164 canonicalOutput8164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8165 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput8165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound8165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8165.moment H = canonicalOutput8165.moment H :=
  canonical_of_padded canonicalInput8165 canonicalOutput8165 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8166 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput8166 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound8166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8166.moment H = canonicalOutput8166.moment H :=
  canonical_of_padded canonicalInput8166 canonicalOutput8166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8167 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput8167 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1203

theorem canonicalSound8167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8167.moment H = canonicalOutput8167.moment H :=
  canonical_of_padded canonicalInput8167 canonicalOutput8167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8168 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput8168 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound8168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8168.moment H = canonicalOutput8168.moment H :=
  canonical_of_padded canonicalInput8168 canonicalOutput8168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8169 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 2, -3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8169 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code934

theorem canonicalSound8169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8169.moment H = canonicalOutput8169.moment H :=
  canonical_of_padded canonicalInput8169 canonicalOutput8169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8170 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 2, 0, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput8170 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1203

theorem canonicalSound8170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8170.moment H = canonicalOutput8170.moment H :=
  canonical_of_padded canonicalInput8170 canonicalOutput8170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8171 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 3, -3, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8171 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound8171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8171.moment H = canonicalOutput8171.moment H :=
  canonical_of_padded canonicalInput8171 canonicalOutput8171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8172 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput8172 : ExponentCode := normalNode5425

theorem canonicalSound8172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8172.moment H = canonicalOutput8172.moment H :=
  canonical_of_padded canonicalInput8172 canonicalOutput8172 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8173 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput8173 : ExponentCode := normalNode5529

theorem canonicalSound8173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8173.moment H = canonicalOutput8173.moment H :=
  canonical_of_padded canonicalInput8173 canonicalOutput8173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8174 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput8174 : ExponentCode := normalNode5396

theorem canonicalSound8174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8174.moment H = canonicalOutput8174.moment H :=
  canonical_of_padded canonicalInput8174 canonicalOutput8174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8175 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8175 : ExponentCode := normalNode5404

theorem canonicalSound8175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8175.moment H = canonicalOutput8175.moment H :=
  canonical_of_padded canonicalInput8175 canonicalOutput8175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8176 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput8176 : ExponentCode := normalNode5402

theorem canonicalSound8176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8176.moment H = canonicalOutput8176.moment H :=
  canonical_of_padded canonicalInput8176 canonicalOutput8176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8177 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8177 : ExponentCode := normalNode5403

theorem canonicalSound8177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8177.moment H = canonicalOutput8177.moment H :=
  canonical_of_padded canonicalInput8177 canonicalOutput8177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8178 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput8178 : ExponentCode := normalNode4123

theorem canonicalSound8178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8178.moment H = canonicalOutput8178.moment H :=
  canonical_of_padded canonicalInput8178 canonicalOutput8178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8179 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8179 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2262⟩

theorem canonicalSound8179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8179.moment H = canonicalOutput8179.moment H :=
  canonical_of_padded canonicalInput8179 canonicalOutput8179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8180 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput8180 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound8180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8180.moment H = canonicalOutput8180.moment H :=
  canonical_of_padded canonicalInput8180 canonicalOutput8180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8181 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 3, -1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8181 : ExponentCode := normalNode4167

theorem canonicalSound8181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8181.moment H = canonicalOutput8181.moment H :=
  canonical_of_padded canonicalInput8181 canonicalOutput8181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8182 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8182 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1975⟩

theorem canonicalSound8182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8182.moment H = canonicalOutput8182.moment H :=
  canonical_of_padded canonicalInput8182 canonicalOutput8182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8183 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput8183 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1203

theorem canonicalSound8183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8183.moment H = canonicalOutput8183.moment H :=
  canonical_of_padded canonicalInput8183 canonicalOutput8183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8184 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, -3, 2, 1], ![2, 3, -3, -2]]⟩

def canonicalOutput8184 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node196⟩

theorem canonicalSound8184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8184.moment H = canonicalOutput8184.moment H :=
  canonical_of_padded canonicalInput8184 canonicalOutput8184 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8185 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, -3, 3, 0], ![2, 3, -4, -1]]⟩

def canonicalOutput8185 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound8185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8185.moment H = canonicalOutput8185.moment H :=
  canonical_of_padded canonicalInput8185 canonicalOutput8185 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8186 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, -1, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput8186 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1678⟩

theorem canonicalSound8186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8186.moment H = canonicalOutput8186.moment H :=
  canonical_of_padded canonicalInput8186 canonicalOutput8186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8187 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput8187 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1348⟩

theorem canonicalSound8187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8187.moment H = canonicalOutput8187.moment H :=
  canonical_of_padded canonicalInput8187 canonicalOutput8187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8188 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput8188 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound8188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8188.moment H = canonicalOutput8188.moment H :=
  canonical_of_padded canonicalInput8188 canonicalOutput8188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8189 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, -1, 2, -1], ![2, 3, -3, -2]]⟩

def canonicalOutput8189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node478⟩

theorem canonicalSound8189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8189.moment H = canonicalOutput8189.moment H :=
  canonical_of_padded canonicalInput8189 canonicalOutput8189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8190 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput8190 : ExponentCode := normalNode3744

theorem canonicalSound8190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8190.moment H = canonicalOutput8190.moment H :=
  canonical_of_padded canonicalInput8190 canonicalOutput8190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8191 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput8191 : ExponentCode := normalNode3753

theorem canonicalSound8191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8191.moment H = canonicalOutput8191.moment H :=
  canonical_of_padded canonicalInput8191 canonicalOutput8191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
