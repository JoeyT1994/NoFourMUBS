import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32128 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32128 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32128.moment H = canonicalOutput32128.moment H :=
  canonical_of_padded canonicalInput32128 canonicalOutput32128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32129 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32129 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32129.moment H = canonicalOutput32129.moment H :=
  canonical_of_padded canonicalInput32129 canonicalOutput32129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32130 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32130 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32130.moment H = canonicalOutput32130.moment H :=
  canonical_of_padded canonicalInput32130 canonicalOutput32130 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32131 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32131 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32131.moment H = canonicalOutput32131.moment H :=
  canonical_of_padded canonicalInput32131 canonicalOutput32131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32132 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32132 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32132.moment H = canonicalOutput32132.moment H :=
  canonical_of_padded canonicalInput32132 canonicalOutput32132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32133 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32133 : ExponentCode := normalNode10818

theorem canonicalSound32133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32133.moment H = canonicalOutput32133.moment H :=
  canonical_of_padded canonicalInput32133 canonicalOutput32133 (by decide) (by decide)
    ⟨false, true, canonicalPermutation28, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput32134 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32134 : ExponentCode := normalNode10455

theorem canonicalSound32134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32134.moment H = canonicalOutput32134.moment H :=
  canonical_of_padded canonicalInput32134 canonicalOutput32134 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput32135 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32135 : ExponentCode := normalNode10375

theorem canonicalSound32135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32135.moment H = canonicalOutput32135.moment H :=
  canonical_of_padded canonicalInput32135 canonicalOutput32135 (by decide) (by decide)
    ⟨false, false, canonicalPermutation338, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32136 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32136 : ExponentCode := normalNode8064

theorem canonicalSound32136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32136.moment H = canonicalOutput32136.moment H :=
  canonical_of_padded canonicalInput32136 canonicalOutput32136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32137 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32137 : ExponentCode := normalNode8066

theorem canonicalSound32137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32137.moment H = canonicalOutput32137.moment H :=
  canonical_of_padded canonicalInput32137 canonicalOutput32137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32138 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32138 : ExponentCode := normalNode8066

theorem canonicalSound32138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32138.moment H = canonicalOutput32138.moment H :=
  canonical_of_padded canonicalInput32138 canonicalOutput32138 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32139 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32139 : ExponentCode := normalNode8064

theorem canonicalSound32139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32139.moment H = canonicalOutput32139.moment H :=
  canonical_of_padded canonicalInput32139 canonicalOutput32139 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32140 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32140 : ExponentCode := normalNode8066

theorem canonicalSound32140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32140.moment H = canonicalOutput32140.moment H :=
  canonical_of_padded canonicalInput32140 canonicalOutput32140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32141 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32141 : ExponentCode := normalNode8361

theorem canonicalSound32141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32141.moment H = canonicalOutput32141.moment H :=
  canonical_of_padded canonicalInput32141 canonicalOutput32141 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32142 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32142 : ExponentCode := normalNode8067

theorem canonicalSound32142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32142.moment H = canonicalOutput32142.moment H :=
  canonical_of_padded canonicalInput32142 canonicalOutput32142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32143 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32143 : ExponentCode := normalNode8067

theorem canonicalSound32143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32143.moment H = canonicalOutput32143.moment H :=
  canonical_of_padded canonicalInput32143 canonicalOutput32143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32144 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32144 : ExponentCode := normalNode8361

theorem canonicalSound32144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32144.moment H = canonicalOutput32144.moment H :=
  canonical_of_padded canonicalInput32144 canonicalOutput32144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32145 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32145 : ExponentCode := normalNode8066

theorem canonicalSound32145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32145.moment H = canonicalOutput32145.moment H :=
  canonical_of_padded canonicalInput32145 canonicalOutput32145 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32146 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32146 : ExponentCode := normalNode8066

theorem canonicalSound32146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32146.moment H = canonicalOutput32146.moment H :=
  canonical_of_padded canonicalInput32146 canonicalOutput32146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32147 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32147 : ExponentCode := normalNode8067

theorem canonicalSound32147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32147.moment H = canonicalOutput32147.moment H :=
  canonical_of_padded canonicalInput32147 canonicalOutput32147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32148 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32148 : ExponentCode := normalNode8361

theorem canonicalSound32148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32148.moment H = canonicalOutput32148.moment H :=
  canonical_of_padded canonicalInput32148 canonicalOutput32148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32149 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32149 : ExponentCode := normalNode8361

theorem canonicalSound32149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32149.moment H = canonicalOutput32149.moment H :=
  canonical_of_padded canonicalInput32149 canonicalOutput32149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32150 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32150 : ExponentCode := normalNode8067

theorem canonicalSound32150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32150.moment H = canonicalOutput32150.moment H :=
  canonical_of_padded canonicalInput32150 canonicalOutput32150 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32151 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32151 : ExponentCode := normalNode8066

theorem canonicalSound32151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32151.moment H = canonicalOutput32151.moment H :=
  canonical_of_padded canonicalInput32151 canonicalOutput32151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32152 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32152 : ExponentCode := normalNode8064

theorem canonicalSound32152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32152.moment H = canonicalOutput32152.moment H :=
  canonical_of_padded canonicalInput32152 canonicalOutput32152 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32153 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32153 : ExponentCode := normalNode8066

theorem canonicalSound32153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32153.moment H = canonicalOutput32153.moment H :=
  canonical_of_padded canonicalInput32153 canonicalOutput32153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32154 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32154 : ExponentCode := normalNode8066

theorem canonicalSound32154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32154.moment H = canonicalOutput32154.moment H :=
  canonical_of_padded canonicalInput32154 canonicalOutput32154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32155 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32155 : ExponentCode := normalNode8064

theorem canonicalSound32155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32155.moment H = canonicalOutput32155.moment H :=
  canonical_of_padded canonicalInput32155 canonicalOutput32155 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32156 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32156 : ExponentCode := normalNode8067

theorem canonicalSound32156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32156.moment H = canonicalOutput32156.moment H :=
  canonical_of_padded canonicalInput32156 canonicalOutput32156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32157 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32157 : ExponentCode := normalNode8066

theorem canonicalSound32157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32157.moment H = canonicalOutput32157.moment H :=
  canonical_of_padded canonicalInput32157 canonicalOutput32157 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32158 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32158 : ExponentCode := normalNode8361

theorem canonicalSound32158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32158.moment H = canonicalOutput32158.moment H :=
  canonical_of_padded canonicalInput32158 canonicalOutput32158 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32159 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32159 : ExponentCode := normalNode8361

theorem canonicalSound32159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32159.moment H = canonicalOutput32159.moment H :=
  canonical_of_padded canonicalInput32159 canonicalOutput32159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32160 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32160 : ExponentCode := normalNode8066

theorem canonicalSound32160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32160.moment H = canonicalOutput32160.moment H :=
  canonical_of_padded canonicalInput32160 canonicalOutput32160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32161 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32161 : ExponentCode := normalNode8067

theorem canonicalSound32161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32161.moment H = canonicalOutput32161.moment H :=
  canonical_of_padded canonicalInput32161 canonicalOutput32161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32162 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32162 : ExponentCode := normalNode8361

theorem canonicalSound32162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32162.moment H = canonicalOutput32162.moment H :=
  canonical_of_padded canonicalInput32162 canonicalOutput32162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32163 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32163 : ExponentCode := normalNode8361

theorem canonicalSound32163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32163.moment H = canonicalOutput32163.moment H :=
  canonical_of_padded canonicalInput32163 canonicalOutput32163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32164 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32164 : ExponentCode := normalNode8361

theorem canonicalSound32164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32164.moment H = canonicalOutput32164.moment H :=
  canonical_of_padded canonicalInput32164 canonicalOutput32164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32165 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32165 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32165.moment H = canonicalOutput32165.moment H :=
  canonical_of_padded canonicalInput32165 canonicalOutput32165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32166 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32166 : ExponentCode := normalNode8361

theorem canonicalSound32166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32166.moment H = canonicalOutput32166.moment H :=
  canonical_of_padded canonicalInput32166 canonicalOutput32166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32167 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32167 : ExponentCode := normalNode8361

theorem canonicalSound32167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32167.moment H = canonicalOutput32167.moment H :=
  canonical_of_padded canonicalInput32167 canonicalOutput32167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32168 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32168 : ExponentCode := normalNode8361

theorem canonicalSound32168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32168.moment H = canonicalOutput32168.moment H :=
  canonical_of_padded canonicalInput32168 canonicalOutput32168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32169 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32169 : ExponentCode := normalNode8066

theorem canonicalSound32169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32169.moment H = canonicalOutput32169.moment H :=
  canonical_of_padded canonicalInput32169 canonicalOutput32169 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32170 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32170 : ExponentCode := normalNode8067

theorem canonicalSound32170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32170.moment H = canonicalOutput32170.moment H :=
  canonical_of_padded canonicalInput32170 canonicalOutput32170 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32171 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32171 : ExponentCode := normalNode8361

theorem canonicalSound32171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32171.moment H = canonicalOutput32171.moment H :=
  canonical_of_padded canonicalInput32171 canonicalOutput32171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32172 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32172 : ExponentCode := normalNode8361

theorem canonicalSound32172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32172.moment H = canonicalOutput32172.moment H :=
  canonical_of_padded canonicalInput32172 canonicalOutput32172 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32173 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32173 : ExponentCode := normalNode8067

theorem canonicalSound32173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32173.moment H = canonicalOutput32173.moment H :=
  canonical_of_padded canonicalInput32173 canonicalOutput32173 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32174 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32174 : ExponentCode := normalNode8066

theorem canonicalSound32174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32174.moment H = canonicalOutput32174.moment H :=
  canonical_of_padded canonicalInput32174 canonicalOutput32174 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32175 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32175 : ExponentCode := normalNode8067

theorem canonicalSound32175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32175.moment H = canonicalOutput32175.moment H :=
  canonical_of_padded canonicalInput32175 canonicalOutput32175 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32176 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32176 : ExponentCode := normalNode8361

theorem canonicalSound32176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32176.moment H = canonicalOutput32176.moment H :=
  canonical_of_padded canonicalInput32176 canonicalOutput32176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32177 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32177 : ExponentCode := normalNode8066

theorem canonicalSound32177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32177.moment H = canonicalOutput32177.moment H :=
  canonical_of_padded canonicalInput32177 canonicalOutput32177 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32178 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32178 : ExponentCode := normalNode8066

theorem canonicalSound32178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32178.moment H = canonicalOutput32178.moment H :=
  canonical_of_padded canonicalInput32178 canonicalOutput32178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32179 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32179 : ExponentCode := normalNode8361

theorem canonicalSound32179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32179.moment H = canonicalOutput32179.moment H :=
  canonical_of_padded canonicalInput32179 canonicalOutput32179 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32180 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32180 : ExponentCode := normalNode8067

theorem canonicalSound32180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32180.moment H = canonicalOutput32180.moment H :=
  canonical_of_padded canonicalInput32180 canonicalOutput32180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32181 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32181 : ExponentCode := normalNode8066

theorem canonicalSound32181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32181.moment H = canonicalOutput32181.moment H :=
  canonical_of_padded canonicalInput32181 canonicalOutput32181 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32182 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32182 : ExponentCode := normalNode8361

theorem canonicalSound32182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32182.moment H = canonicalOutput32182.moment H :=
  canonical_of_padded canonicalInput32182 canonicalOutput32182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32183 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32183 : ExponentCode := normalNode8067

theorem canonicalSound32183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32183.moment H = canonicalOutput32183.moment H :=
  canonical_of_padded canonicalInput32183 canonicalOutput32183 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32184 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32184 : ExponentCode := normalNode8067

theorem canonicalSound32184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32184.moment H = canonicalOutput32184.moment H :=
  canonical_of_padded canonicalInput32184 canonicalOutput32184 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32185 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32185 : ExponentCode := normalNode8361

theorem canonicalSound32185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32185.moment H = canonicalOutput32185.moment H :=
  canonical_of_padded canonicalInput32185 canonicalOutput32185 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32186 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32186 : ExponentCode := normalNode8066

theorem canonicalSound32186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32186.moment H = canonicalOutput32186.moment H :=
  canonical_of_padded canonicalInput32186 canonicalOutput32186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32187 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32187 : ExponentCode := normalNode8064

theorem canonicalSound32187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32187.moment H = canonicalOutput32187.moment H :=
  canonical_of_padded canonicalInput32187 canonicalOutput32187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32188 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32188 : ExponentCode := normalNode8066

theorem canonicalSound32188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32188.moment H = canonicalOutput32188.moment H :=
  canonical_of_padded canonicalInput32188 canonicalOutput32188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32189 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32189 : ExponentCode := normalNode8066

theorem canonicalSound32189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32189.moment H = canonicalOutput32189.moment H :=
  canonical_of_padded canonicalInput32189 canonicalOutput32189 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32190 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32190 : ExponentCode := normalNode8064

theorem canonicalSound32190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32190.moment H = canonicalOutput32190.moment H :=
  canonical_of_padded canonicalInput32190 canonicalOutput32190 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32191 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32191 : ExponentCode := normalNode8068

theorem canonicalSound32191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32191.moment H = canonicalOutput32191.moment H :=
  canonical_of_padded canonicalInput32191 canonicalOutput32191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
