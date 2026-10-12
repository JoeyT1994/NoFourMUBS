import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput128 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![1, -1, 0], ![1, 2, -3], ![2, -2, 0]]⟩

def canonicalOutput128 : ExponentCode := normalNode229

theorem canonicalSound128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput128.moment H = canonicalOutput128.moment H :=
  canonical_of_padded canonicalInput128 canonicalOutput128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput129 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -1, 1], ![1, 2, -3], ![3, -3, 0]]⟩

def canonicalOutput129 : ExponentCode := normalNode241

theorem canonicalSound129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput129.moment H = canonicalOutput129.moment H :=
  canonical_of_padded canonicalInput129 canonicalOutput129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput130 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 0, 0], ![1, -2, 1], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput130 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput130.moment H = canonicalOutput130.moment H :=
  canonical_of_padded canonicalInput130 canonicalOutput130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput131 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, 0, 0], ![2, -3, 1], ![2, 1, -3]]⟩

def canonicalOutput131 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput131.moment H = canonicalOutput131.moment H :=
  canonical_of_padded canonicalInput131 canonicalOutput131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput132 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 1, -1], ![0, 1, -1], ![1, -3, 2], ![3, -1, -2]]⟩

def canonicalOutput132 : ExponentCode := normalNode19

theorem canonicalSound132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput132.moment H = canonicalOutput132.moment H :=
  canonical_of_padded canonicalInput132 canonicalOutput132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput133 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 1, -1], ![0, 1, -1], ![1, -2, 1], ![3, -2, -1]]⟩

def canonicalOutput133 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node425⟩

theorem canonicalSound133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput133.moment H = canonicalOutput133.moment H :=
  canonical_of_padded canonicalInput133 canonicalOutput133 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput134 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 1, -1], ![1, -3, 2], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput134 : ExponentCode := normalNode26

theorem canonicalSound134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput134.moment H = canonicalOutput134.moment H :=
  canonical_of_padded canonicalInput134 canonicalOutput134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput135 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 1, -1], ![1, -3, 2], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput135 : ExponentCode := normalNode25

theorem canonicalSound135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput135.moment H = canonicalOutput135.moment H :=
  canonical_of_padded canonicalInput135 canonicalOutput135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput136 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 1, -1], ![1, -2, 1], ![1, -2, 1], ![2, 1, -3]]⟩

def canonicalOutput136 : ExponentCode := normalNode27

theorem canonicalSound136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput136.moment H = canonicalOutput136.moment H :=
  canonical_of_padded canonicalInput136 canonicalOutput136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput137 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![2, 0, -2]]⟩

def canonicalOutput137 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node421⟩

theorem canonicalSound137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput137.moment H = canonicalOutput137.moment H :=
  canonical_of_padded canonicalInput137 canonicalOutput137 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput138 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, 1, -1], ![1, 1, -2], ![3, -4, 1]]⟩

def canonicalOutput138 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput138.moment H = canonicalOutput138.moment H :=
  canonical_of_padded canonicalInput138 canonicalOutput138 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput139 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, 1, -1], ![2, -4, 2], ![2, 1, -3]]⟩

def canonicalOutput139 : ExponentCode := normalNode28

theorem canonicalSound139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput139.moment H = canonicalOutput139.moment H :=
  canonical_of_padded canonicalInput139 canonicalOutput139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput140 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, 1, -1], ![2, -3, 1], ![2, 0, -2]]⟩

def canonicalOutput140 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput140.moment H = canonicalOutput140.moment H :=
  canonical_of_padded canonicalInput140 canonicalOutput140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput141 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, 2, -2], ![1, -2, 1], ![3, -2, -1]]⟩

def canonicalOutput141 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput141.moment H = canonicalOutput141.moment H :=
  canonical_of_padded canonicalInput141 canonicalOutput141 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput142 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -3, 2], ![1, -1, 0], ![2, 2, -4]]⟩

def canonicalOutput142 : ExponentCode := normalNode28

theorem canonicalSound142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput142.moment H = canonicalOutput142.moment H :=
  canonical_of_padded canonicalInput142 canonicalOutput142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput143 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -3, 2], ![1, 0, -1], ![2, 1, -3]]⟩

def canonicalOutput143 : ExponentCode := normalNode235

theorem canonicalSound143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput143.moment H = canonicalOutput143.moment H :=
  canonical_of_padded canonicalInput143 canonicalOutput143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput144 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -3, 2], ![1, 1, -2], ![2, 0, -2]]⟩

def canonicalOutput144 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput144.moment H = canonicalOutput144.moment H :=
  canonical_of_padded canonicalInput144 canonicalOutput144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput145 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -3, 2], ![2, -1, -1], ![1, 2, -3]]⟩

def canonicalOutput145 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code13

theorem canonicalSound145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput145.moment H = canonicalOutput145.moment H :=
  canonical_of_padded canonicalInput145 canonicalOutput145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput146 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -3, 2], ![2, 0, -2], ![1, 1, -2]]⟩

def canonicalOutput146 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput146.moment H = canonicalOutput146.moment H :=
  canonical_of_padded canonicalInput146 canonicalOutput146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput147 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, -2, 1], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput147 : ExponentCode := normalNode30

theorem canonicalSound147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput147.moment H = canonicalOutput147.moment H :=
  canonical_of_padded canonicalInput147 canonicalOutput147 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput148 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput148 : ExponentCode := normalNode224

theorem canonicalSound148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput148.moment H = canonicalOutput148.moment H :=
  canonical_of_padded canonicalInput148 canonicalOutput148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput149 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, -1, 0], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput149 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node422⟩

theorem canonicalSound149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput149.moment H = canonicalOutput149.moment H :=
  canonical_of_padded canonicalInput149 canonicalOutput149 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput150 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput150 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput150.moment H = canonicalOutput150.moment H :=
  canonical_of_padded canonicalInput150 canonicalOutput150 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput151 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -2, 1], ![1, 2, -3], ![2, -2, 0]]⟩

def canonicalOutput151 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput151.moment H = canonicalOutput151.moment H :=
  canonical_of_padded canonicalInput151 canonicalOutput151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput152 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, -1, 0], ![1, 2, -3], ![2, -3, 1]]⟩

def canonicalOutput152 : ExponentCode := normalNode235

theorem canonicalSound152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput152.moment H = canonicalOutput152.moment H :=
  canonical_of_padded canonicalInput152 canonicalOutput152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput153 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, 0, -1], ![1, 1, -2], ![2, -3, 1]]⟩

def canonicalOutput153 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput153.moment H = canonicalOutput153.moment H :=
  canonical_of_padded canonicalInput153 canonicalOutput153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput154 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, 0, -1], ![1, 2, -3], ![2, -4, 2]]⟩

def canonicalOutput154 : ExponentCode := normalNode28

theorem canonicalSound154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput154.moment H = canonicalOutput154.moment H :=
  canonical_of_padded canonicalInput154 canonicalOutput154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput155 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, 1, -2], ![1, 0, -1], ![2, -3, 1]]⟩

def canonicalOutput155 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput155.moment H = canonicalOutput155.moment H :=
  canonical_of_padded canonicalInput155 canonicalOutput155 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput156 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![1, 1, -2], ![1, 1, -2], ![2, -4, 2]]⟩

def canonicalOutput156 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput156.moment H = canonicalOutput156.moment H :=
  canonical_of_padded canonicalInput156 canonicalOutput156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput157 : ExponentCode := ⟨3, 3, ![![-4, 2, 2], ![1, 2, -3], ![3, -4, 1]]⟩

def canonicalOutput157 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node22⟩

theorem canonicalSound157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput157.moment H = canonicalOutput157.moment H :=
  canonical_of_padded canonicalInput157 canonicalOutput157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput158 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![2, -4, 2], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput158 : ExponentCode := normalNode28

theorem canonicalSound158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput158.moment H = canonicalOutput158.moment H :=
  canonical_of_padded canonicalInput158 canonicalOutput158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput159 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![2, -4, 2], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput159 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput159.moment H = canonicalOutput159.moment H :=
  canonical_of_padded canonicalInput159 canonicalOutput159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput160 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput160 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput160.moment H = canonicalOutput160.moment H :=
  canonical_of_padded canonicalInput160 canonicalOutput160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput161 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput161 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput161.moment H = canonicalOutput161.moment H :=
  canonical_of_padded canonicalInput161 canonicalOutput161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput162 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput162 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput162.moment H = canonicalOutput162.moment H :=
  canonical_of_padded canonicalInput162 canonicalOutput162 (by decide) (by decide)
    ⟨false, true, canonicalPermutation12, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput163 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput163 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput163.moment H = canonicalOutput163.moment H :=
  canonical_of_padded canonicalInput163 canonicalOutput163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput164 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput164 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput164.moment H = canonicalOutput164.moment H :=
  canonical_of_padded canonicalInput164 canonicalOutput164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation297, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput165 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput165 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code16

theorem canonicalSound165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput165.moment H = canonicalOutput165.moment H :=
  canonical_of_padded canonicalInput165 canonicalOutput165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput166 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput166 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput166.moment H = canonicalOutput166.moment H :=
  canonical_of_padded canonicalInput166 canonicalOutput166 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput167 : ExponentCode := ⟨6, 6, ![![-4, 2, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput167 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput167.moment H = canonicalOutput167.moment H :=
  canonical_of_padded canonicalInput167 canonicalOutput167 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput168 : ExponentCode := ⟨4, 3, ![![-4, 3, 1], ![0, -2, 2], ![0, 1, -1], ![4, -2, -2]]⟩

def canonicalOutput168 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput168.moment H = canonicalOutput168.moment H :=
  canonical_of_padded canonicalInput168 canonicalOutput168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput169 : ExponentCode := ⟨4, 3, ![![-4, 3, 1], ![0, -2, 2], ![1, 1, -2], ![3, -2, -1]]⟩

def canonicalOutput169 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput169.moment H = canonicalOutput169.moment H :=
  canonical_of_padded canonicalInput169 canonicalOutput169 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput170 : ExponentCode := ⟨4, 3, ![![-4, 3, 1], ![0, -2, 2], ![2, -2, 0], ![2, 1, -3]]⟩

def canonicalOutput170 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput170.moment H = canonicalOutput170.moment H :=
  canonical_of_padded canonicalInput170 canonicalOutput170 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput171 : ExponentCode := ⟨4, 4, ![![-3, -3, 3, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput171 : ExponentCode := normalNode6722

theorem canonicalSound171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput171.moment H = canonicalOutput171.moment H :=
  canonical_of_padded canonicalInput171 canonicalOutput171 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput172 : ExponentCode := ⟨4, 4, ![![-3, -3, 3, 3], ![0, 3, -2, -1], ![1, 0, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput172 : ExponentCode := normalNode6722

theorem canonicalSound172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput172.moment H = canonicalOutput172.moment H :=
  canonical_of_padded canonicalInput172 canonicalOutput172 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput173 : ExponentCode := ⟨2, 4, ![![-3, -3, 4, 2], ![3, 3, -4, -2]]⟩

def canonicalOutput173 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code18

theorem canonicalSound173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput173.moment H = canonicalOutput173.moment H :=
  canonical_of_padded canonicalInput173 canonicalOutput173 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput174 : ExponentCode := ⟨3, 3, ![![-3, -3, 6], ![0, 1, -1], ![3, 2, -5]]⟩

def canonicalOutput174 : ExponentCode := normalNode5973

theorem canonicalSound174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput174.moment H = canonicalOutput174.moment H :=
  canonical_of_padded canonicalInput174 canonicalOutput174 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput175 : ExponentCode := ⟨3, 3, ![![-3, -3, 6], ![0, 2, -2], ![3, 1, -4]]⟩

def canonicalOutput175 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code96

theorem canonicalSound175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput175.moment H = canonicalOutput175.moment H :=
  canonical_of_padded canonicalInput175 canonicalOutput175 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput176 : ExponentCode := ⟨4, 3, ![![-3, -3, 6], ![1, 0, -1], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput176 : ExponentCode := normalNode31

theorem canonicalSound176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput176.moment H = canonicalOutput176.moment H :=
  canonical_of_padded canonicalInput176 canonicalOutput176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput177 : ExponentCode := ⟨4, 3, ![![-3, -3, 6], ![1, 0, -1], ![1, 1, -2], ![1, 2, -3]]⟩

def canonicalOutput177 : ExponentCode := normalNode33

theorem canonicalSound177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput177.moment H = canonicalOutput177.moment H :=
  canonical_of_padded canonicalInput177 canonicalOutput177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput178 : ExponentCode := ⟨3, 3, ![![-3, -3, 6], ![1, 0, -1], ![2, 3, -5]]⟩

def canonicalOutput178 : ExponentCode := normalNode5973

theorem canonicalSound178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput178.moment H = canonicalOutput178.moment H :=
  canonical_of_padded canonicalInput178 canonicalOutput178 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput179 : ExponentCode := ⟨3, 3, ![![-3, -3, 6], ![1, 1, -2], ![2, 2, -4]]⟩

def canonicalOutput179 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code99

theorem canonicalSound179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput179.moment H = canonicalOutput179.moment H :=
  canonical_of_padded canonicalInput179 canonicalOutput179 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput180 : ExponentCode := ⟨3, 3, ![![-3, -3, 6], ![1, 3, -4], ![2, 0, -2]]⟩

def canonicalOutput180 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code96

theorem canonicalSound180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput180.moment H = canonicalOutput180.moment H :=
  canonical_of_padded canonicalInput180 canonicalOutput180 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput181 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 0, 0, 0], ![0, 2, -1, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput181 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node196⟩

theorem canonicalSound181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput181.moment H = canonicalOutput181.moment H :=
  canonical_of_padded canonicalInput181 canonicalOutput181 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput182 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![3, 0, 0, -3]]⟩

def canonicalOutput182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1021⟩

theorem canonicalSound182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput182.moment H = canonicalOutput182.moment H :=
  canonical_of_padded canonicalInput182 canonicalOutput182 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput183 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput183.moment H = canonicalOutput183.moment H :=
  canonical_of_padded canonicalInput183 canonicalOutput183 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput184 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 2, -2, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput184 : ExponentCode := normalNode6956

theorem canonicalSound184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput184.moment H = canonicalOutput184.moment H :=
  canonical_of_padded canonicalInput184 canonicalOutput184 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput185 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, -1, 0, -2]]⟩

def canonicalOutput185 : ExponentCode := normalNode6959

theorem canonicalSound185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput185.moment H = canonicalOutput185.moment H :=
  canonical_of_padded canonicalInput185 canonicalOutput185 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput186 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![3, -1, -1, -1]]⟩

def canonicalOutput186 : ExponentCode := normalNode6961

theorem canonicalSound186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput186.moment H = canonicalOutput186.moment H :=
  canonical_of_padded canonicalInput186 canonicalOutput186 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput187 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput187 : ExponentCode := normalNode11020

theorem canonicalSound187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput187.moment H = canonicalOutput187.moment H :=
  canonical_of_padded canonicalInput187 canonicalOutput187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput188 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput188 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1195⟩

theorem canonicalSound188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput188.moment H = canonicalOutput188.moment H :=
  canonical_of_padded canonicalInput188 canonicalOutput188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput189 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node991⟩

theorem canonicalSound189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput189.moment H = canonicalOutput189.moment H :=
  canonical_of_padded canonicalInput189 canonicalOutput189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput190 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, -1, 0], ![1, 2, -2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput190 : ExponentCode := normalNode6928

theorem canonicalSound190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput190.moment H = canonicalOutput190.moment H :=
  canonical_of_padded canonicalInput190 canonicalOutput190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput191 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 1, 0, -1], ![0, 2, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput191 : ExponentCode := normalNode6958

theorem canonicalSound191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput191.moment H = canonicalOutput191.moment H :=
  canonical_of_padded canonicalInput191 canonicalOutput191 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
