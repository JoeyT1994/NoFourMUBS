import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21120 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![0, 2, -2, 1, -1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput21120 : ExponentCode := normalNode9106

theorem canonicalSound21120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21120.moment H = canonicalOutput21120.moment H :=
  canonical_of_padded canonicalInput21120 canonicalOutput21120 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21121 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![1, -2, 1, 1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21121 : ExponentCode := normalNode9453

theorem canonicalSound21121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21121.moment H = canonicalOutput21121.moment H :=
  canonical_of_padded canonicalInput21121 canonicalOutput21121 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21122 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![1, 2, -2, -1, 0], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput21122 : ExponentCode := normalNode9453

theorem canonicalSound21122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21122.moment H = canonicalOutput21122.moment H :=
  canonical_of_padded canonicalInput21122 canonicalOutput21122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21123 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -2, 1], ![0, 2, 0, 0, -2], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput21123 : ExponentCode := normalNode10224

theorem canonicalSound21123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21123.moment H = canonicalOutput21123.moment H :=
  canonical_of_padded canonicalInput21123 canonicalOutput21123 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21124 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -2, 1], ![1, -2, -1, 1, 1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21124 : ExponentCode := normalNode9006

theorem canonicalSound21124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21124.moment H = canonicalOutput21124.moment H :=
  canonical_of_padded canonicalInput21124 canonicalOutput21124 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21125 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -2, 1], ![1, -2, 0, 0, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21125 : ExponentCode := normalNode10892

theorem canonicalSound21125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21125.moment H = canonicalOutput21125.moment H :=
  canonical_of_padded canonicalInput21125 canonicalOutput21125 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21126 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -2, 1], ![1, 2, 0, -1, -2], ![1, -2, -2, 2, 1]]⟩

def canonicalOutput21126 : ExponentCode := normalNode9470

theorem canonicalSound21126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21126.moment H = canonicalOutput21126.moment H :=
  canonical_of_padded canonicalInput21126 canonicalOutput21126 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21127 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -2, 1], ![1, 2, 0, 0, -3], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput21127 : ExponentCode := normalNode9469

theorem canonicalSound21127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21127.moment H = canonicalOutput21127.moment H :=
  canonical_of_padded canonicalInput21127 canonicalOutput21127 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21128 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -1, 0], ![0, -2, -1, 1, 2], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput21128 : ExponentCode := normalNode9061

theorem canonicalSound21128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21128.moment H = canonicalOutput21128.moment H :=
  canonical_of_padded canonicalInput21128 canonicalOutput21128 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21129 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -1, 0], ![0, 2, 0, -1, -1], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput21129 : ExponentCode := normalNode9080

theorem canonicalSound21129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21129.moment H = canonicalOutput21129.moment H :=
  canonical_of_padded canonicalInput21129 canonicalOutput21129 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21130 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, -1, 0], ![1, -2, -1, 1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21130 : ExponentCode := normalNode9448

theorem canonicalSound21130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21130.moment H = canonicalOutput21130.moment H :=
  canonical_of_padded canonicalInput21130 canonicalOutput21130 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21131 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput21131 : ExponentCode := normalNode8950

theorem canonicalSound21131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21131.moment H = canonicalOutput21131.moment H :=
  canonical_of_padded canonicalInput21131 canonicalOutput21131 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21132 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 1, -2, 1], ![0, -2, 1, 1, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21132 : ExponentCode := normalNode8998

theorem canonicalSound21132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21132.moment H = canonicalOutput21132.moment H :=
  canonical_of_padded canonicalInput21132 canonicalOutput21132 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21133 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 1, -2, 1], ![1, -2, 1, -1, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput21133 : ExponentCode := normalNode9480

theorem canonicalSound21133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21133.moment H = canonicalOutput21133.moment H :=
  canonical_of_padded canonicalInput21133 canonicalOutput21133 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21134 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 1, -2, 1], ![1, -2, 1, 1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21134 : ExponentCode := normalNode10297

theorem canonicalSound21134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21134.moment H = canonicalOutput21134.moment H :=
  canonical_of_padded canonicalInput21134 canonicalOutput21134 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21135 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 1, -1, 0], ![1, -2, 1, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21135 : ExponentCode := normalNode9464

theorem canonicalSound21135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21135.moment H = canonicalOutput21135.moment H :=
  canonical_of_padded canonicalInput21135 canonicalOutput21135 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21136 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 2, -3, 1], ![1, -3, 0, 1, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21136 : ExponentCode := normalNode7901

theorem canonicalSound21136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21136.moment H = canonicalOutput21136.moment H :=
  canonical_of_padded canonicalInput21136 canonicalOutput21136 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21137 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 2, -3, 1], ![1, -2, -1, 1, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput21137 : ExponentCode := normalNode7903

theorem canonicalSound21137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21137.moment H = canonicalOutput21137.moment H :=
  canonical_of_padded canonicalInput21137 canonicalOutput21137 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21138 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 2, -2, 0], ![0, -2, -1, 1, 2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput21138 : ExponentCode := normalNode8904

theorem canonicalSound21138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21138.moment H = canonicalOutput21138.moment H :=
  canonical_of_padded canonicalInput21138 canonicalOutput21138 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21139 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 2, -2, 0], ![1, -3, 0, 1, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21139 : ExponentCode := normalNode8975

theorem canonicalSound21139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21139.moment H = canonicalOutput21139.moment H :=
  canonical_of_padded canonicalInput21139 canonicalOutput21139 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21140 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 2, -2, 0], ![1, -2, -1, 1, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput21140 : ExponentCode := normalNode10302

theorem canonicalSound21140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21140.moment H = canonicalOutput21140.moment H :=
  canonical_of_padded canonicalInput21140 canonicalOutput21140 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21141 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 1, 2, -2, 0], ![1, -2, 1, 1, -1], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput21141 : ExponentCode := normalNode9031

theorem canonicalSound21141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21141.moment H = canonicalOutput21141.moment H :=
  canonical_of_padded canonicalInput21141 canonicalOutput21141 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21142 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -3, 0, 1, 2], ![1, 1, -2, -1, 1], ![0, 2, 2, -1, -3]]⟩

def canonicalOutput21142 : ExponentCode := normalNode9347

theorem canonicalSound21142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21142.moment H = canonicalOutput21142.moment H :=
  canonical_of_padded canonicalInput21142 canonicalOutput21142 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21143 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -3, 2, 0, 1], ![0, 1, -1, -2, 2], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21143 : ExponentCode := normalNode10499

theorem canonicalSound21143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21143.moment H = canonicalOutput21143.moment H :=
  canonical_of_padded canonicalInput21143 canonicalOutput21143 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21144 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -3, 2, 0, 1], ![0, 1, 0, 1, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput21144 : ExponentCode := normalNode9011

theorem canonicalSound21144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21144.moment H = canonicalOutput21144.moment H :=
  canonical_of_padded canonicalInput21144 canonicalOutput21144 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21145 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -3, 2, 0, 1], ![1, 1, -1, -2, 1], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput21145 : ExponentCode := normalNode8906

theorem canonicalSound21145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21145.moment H = canonicalOutput21145.moment H :=
  canonical_of_padded canonicalInput21145 canonicalOutput21145 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21146 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -3, 2, 0, 1], ![1, 1, 0, 1, -3], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput21146 : ExponentCode := normalNode9014

theorem canonicalSound21146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21146.moment H = canonicalOutput21146.moment H :=
  canonical_of_padded canonicalInput21146 canonicalOutput21146 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21147 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 0, 2], ![-1, 1, 2, -2, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21147 : ExponentCode := normalNode10224

theorem canonicalSound21147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21147.moment H = canonicalOutput21147.moment H :=
  canonical_of_padded canonicalInput21147 canonicalOutput21147 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21148 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 0, 2], ![-1, 2, -2, 1, 0], ![2, 0, 2, -2, -2]]⟩

def canonicalOutput21148 : ExponentCode := normalNode10216

theorem canonicalSound21148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21148.moment H = canonicalOutput21148.moment H :=
  canonical_of_padded canonicalInput21148 canonicalOutput21148 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21149 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 0, 2], ![0, 1, 2, -2, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21149 : ExponentCode := normalNode10223

theorem canonicalSound21149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21149.moment H = canonicalOutput21149.moment H :=
  canonical_of_padded canonicalInput21149 canonicalOutput21149 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21150 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 0, 2], ![0, 2, -2, 1, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput21150 : ExponentCode := normalNode10222

theorem canonicalSound21150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21150.moment H = canonicalOutput21150.moment H :=
  canonical_of_padded canonicalInput21150 canonicalOutput21150 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21151 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 0, 2], ![1, 0, -2, 1, 0], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput21151 : ExponentCode := normalNode9062

theorem canonicalSound21151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21151.moment H = canonicalOutput21151.moment H :=
  canonical_of_padded canonicalInput21151 canonicalOutput21151 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21152 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 0, 2], ![1, 0, 2, -3, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21152 : ExponentCode := normalNode10820

theorem canonicalSound21152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21152.moment H = canonicalOutput21152.moment H :=
  canonical_of_padded canonicalInput21152 canonicalOutput21152 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21153 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 1, 1], ![-1, 0, 2, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21153 : ExponentCode := normalNode9059

theorem canonicalSound21153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21153.moment H = canonicalOutput21153.moment H :=
  canonical_of_padded canonicalInput21153 canonicalOutput21153 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21154 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 1, 1], ![-1, 1, 2, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21154 : ExponentCode := normalNode8974

theorem canonicalSound21154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21154.moment H = canonicalOutput21154.moment H :=
  canonical_of_padded canonicalInput21154 canonicalOutput21154 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21155 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21155 : ExponentCode := normalNode9553

theorem canonicalSound21155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21155.moment H = canonicalOutput21155.moment H :=
  canonical_of_padded canonicalInput21155 canonicalOutput21155 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21156 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 1, 1], ![0, 0, 2, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21156 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2633⟩

theorem canonicalSound21156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21156.moment H = canonicalOutput21156.moment H :=
  canonical_of_padded canonicalInput21156 canonicalOutput21156 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21157 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 1, 1], ![0, 1, 2, -2, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21157 : ExponentCode := normalNode8949

theorem canonicalSound21157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21157.moment H = canonicalOutput21157.moment H :=
  canonical_of_padded canonicalInput21157 canonicalOutput21157 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21158 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 0, 1, 1], ![1, 0, 2, -2, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput21158 : ExponentCode := normalNode8948

theorem canonicalSound21158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21158.moment H = canonicalOutput21158.moment H :=
  canonical_of_padded canonicalInput21158 canonicalOutput21158 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21159 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, -1, 2], ![0, 0, 1, 1, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21159 : ExponentCode := normalNode9387

theorem canonicalSound21159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21159.moment H = canonicalOutput21159.moment H :=
  canonical_of_padded canonicalInput21159 canonicalOutput21159 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21160 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, -1, 2], ![0, 1, -2, -1, 2], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21160 : ExponentCode := normalNode10531

theorem canonicalSound21160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21160.moment H = canonicalOutput21160.moment H :=
  canonical_of_padded canonicalInput21160 canonicalOutput21160 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21161 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, -1, 2], ![1, 0, 1, 1, -3], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput21161 : ExponentCode := normalNode9390

theorem canonicalSound21161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21161.moment H = canonicalOutput21161.moment H :=
  canonical_of_padded canonicalInput21161 canonicalOutput21161 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21162 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, -1, 2], ![1, 1, -2, -1, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput21162 : ExponentCode := normalNode9374

theorem canonicalSound21162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21162.moment H = canonicalOutput21162.moment H :=
  canonical_of_padded canonicalInput21162 canonicalOutput21162 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21163 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![-1, 0, 1, 1, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput21163 : ExponentCode := normalNode8927

theorem canonicalSound21163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21163.moment H = canonicalOutput21163.moment H :=
  canonical_of_padded canonicalInput21163 canonicalOutput21163 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21164 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![-1, 1, -2, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput21164 : ExponentCode := normalNode10226

theorem canonicalSound21164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21164.moment H = canonicalOutput21164.moment H :=
  canonical_of_padded canonicalInput21164 canonicalOutput21164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21165 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![-1, 1, 1, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21165 : ExponentCode := normalNode10230

theorem canonicalSound21165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21165.moment H = canonicalOutput21165.moment H :=
  canonical_of_padded canonicalInput21165 canonicalOutput21165 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21166 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![-1, 2, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput21166 : ExponentCode := normalNode10234

theorem canonicalSound21166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21166.moment H = canonicalOutput21166.moment H :=
  canonical_of_padded canonicalInput21166 canonicalOutput21166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21167 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 0, -2, 1, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput21167 : ExponentCode := normalNode8929

theorem canonicalSound21167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21167.moment H = canonicalOutput21167.moment H :=
  canonical_of_padded canonicalInput21167 canonicalOutput21167 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21168 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 0, 1, 1, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput21168 : ExponentCode := normalNode8929

theorem canonicalSound21168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21168.moment H = canonicalOutput21168.moment H :=
  canonical_of_padded canonicalInput21168 canonicalOutput21168 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21169 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 0, 2, -2, 0], ![1, 2, -3, 1, -1]]⟩

def canonicalOutput21169 : ExponentCode := normalNode10522

theorem canonicalSound21169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21169.moment H = canonicalOutput21169.moment H :=
  canonical_of_padded canonicalInput21169 canonicalOutput21169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21170 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 1, -3, 1, 1], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput21170 : ExponentCode := normalNode10251

theorem canonicalSound21170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21170.moment H = canonicalOutput21170.moment H :=
  canonical_of_padded canonicalInput21170 canonicalOutput21170 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21171 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, -2, 3], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21171 : ExponentCode := normalNode10253

theorem canonicalSound21171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21171.moment H = canonicalOutput21171.moment H :=
  canonical_of_padded canonicalInput21171 canonicalOutput21171 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21172 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput21172 : ExponentCode := normalNode8991

theorem canonicalSound21172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21172.moment H = canonicalOutput21172.moment H :=
  canonical_of_padded canonicalInput21172 canonicalOutput21172 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21173 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21173 : ExponentCode := normalNode10532

theorem canonicalSound21173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21173.moment H = canonicalOutput21173.moment H :=
  canonical_of_padded canonicalInput21173 canonicalOutput21173 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21174 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput21174 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound21174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21174.moment H = canonicalOutput21174.moment H :=
  canonical_of_padded canonicalInput21174 canonicalOutput21174 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21175 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 0, -2, 1, 0], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput21175 : ExponentCode := normalNode9079

theorem canonicalSound21175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21175.moment H = canonicalOutput21175.moment H :=
  canonical_of_padded canonicalInput21175 canonicalOutput21175 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21176 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 0, 1, -3, 1], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21176 : ExponentCode := normalNode10822

theorem canonicalSound21176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21176.moment H = canonicalOutput21176.moment H :=
  canonical_of_padded canonicalInput21176 canonicalOutput21176 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21177 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 0, 1, 1, -3], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput21177 : ExponentCode := normalNode10252

theorem canonicalSound21177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21177.moment H = canonicalOutput21177.moment H :=
  canonical_of_padded canonicalInput21177 canonicalOutput21177 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21178 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 0, 2, -2, -1], ![0, 2, -3, 1, 0]]⟩

def canonicalOutput21178 : ExponentCode := normalNode10263

theorem canonicalSound21178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21178.moment H = canonicalOutput21178.moment H :=
  canonical_of_padded canonicalInput21178 canonicalOutput21178 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21179 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 1, -3, 1, 0], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput21179 : ExponentCode := normalNode10264

theorem canonicalSound21179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21179.moment H = canonicalOutput21179.moment H :=
  canonical_of_padded canonicalInput21179 canonicalOutput21179 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21180 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 1, -2, -2, 2], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput21180 : ExponentCode := normalNode10251

theorem canonicalSound21180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21180.moment H = canonicalOutput21180.moment H :=
  canonical_of_padded canonicalInput21180 canonicalOutput21180 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21181 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 1, -2, 1, -1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput21181 : ExponentCode := normalNode10532

theorem canonicalSound21181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21181.moment H = canonicalOutput21181.moment H :=
  canonical_of_padded canonicalInput21181 canonicalOutput21181 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21182 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![2, 0, 1, -3, 0], ![-1, 2, -2, 2, -1]]⟩

def canonicalOutput21182 : ExponentCode := normalNode10881

theorem canonicalSound21182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21182.moment H = canonicalOutput21182.moment H :=
  canonical_of_padded canonicalInput21182 canonicalOutput21182 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21183 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, -1, 1], ![0, 0, -1, 2, -1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21183 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2451⟩

theorem canonicalSound21183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21183.moment H = canonicalOutput21183.moment H :=
  canonical_of_padded canonicalInput21183 canonicalOutput21183 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
