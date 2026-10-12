import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33088 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33088 : ExponentCode := normalNode8067

theorem canonicalSound33088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33088.moment H = canonicalOutput33088.moment H :=
  canonical_of_padded canonicalInput33088 canonicalOutput33088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33089 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33089 : ExponentCode := normalNode8361

theorem canonicalSound33089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33089.moment H = canonicalOutput33089.moment H :=
  canonical_of_padded canonicalInput33089 canonicalOutput33089 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33090 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33090 : ExponentCode := normalNode8361

theorem canonicalSound33090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33090.moment H = canonicalOutput33090.moment H :=
  canonical_of_padded canonicalInput33090 canonicalOutput33090 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33091 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33091 : ExponentCode := normalNode8361

theorem canonicalSound33091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33091.moment H = canonicalOutput33091.moment H :=
  canonical_of_padded canonicalInput33091 canonicalOutput33091 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33092 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33092 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33092.moment H = canonicalOutput33092.moment H :=
  canonical_of_padded canonicalInput33092 canonicalOutput33092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33093 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33093 : ExponentCode := normalNode8361

theorem canonicalSound33093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33093.moment H = canonicalOutput33093.moment H :=
  canonical_of_padded canonicalInput33093 canonicalOutput33093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33094 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33094 : ExponentCode := normalNode8361

theorem canonicalSound33094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33094.moment H = canonicalOutput33094.moment H :=
  canonical_of_padded canonicalInput33094 canonicalOutput33094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33095 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33095 : ExponentCode := normalNode8361

theorem canonicalSound33095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33095.moment H = canonicalOutput33095.moment H :=
  canonical_of_padded canonicalInput33095 canonicalOutput33095 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33096 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33096 : ExponentCode := normalNode8066

theorem canonicalSound33096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33096.moment H = canonicalOutput33096.moment H :=
  canonical_of_padded canonicalInput33096 canonicalOutput33096 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33097 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33097 : ExponentCode := normalNode8067

theorem canonicalSound33097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33097.moment H = canonicalOutput33097.moment H :=
  canonical_of_padded canonicalInput33097 canonicalOutput33097 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33098 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33098 : ExponentCode := normalNode8361

theorem canonicalSound33098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33098.moment H = canonicalOutput33098.moment H :=
  canonical_of_padded canonicalInput33098 canonicalOutput33098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33099 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33099 : ExponentCode := normalNode8361

theorem canonicalSound33099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33099.moment H = canonicalOutput33099.moment H :=
  canonical_of_padded canonicalInput33099 canonicalOutput33099 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33100 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33100 : ExponentCode := normalNode8067

theorem canonicalSound33100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33100.moment H = canonicalOutput33100.moment H :=
  canonical_of_padded canonicalInput33100 canonicalOutput33100 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33101 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33101 : ExponentCode := normalNode8066

theorem canonicalSound33101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33101.moment H = canonicalOutput33101.moment H :=
  canonical_of_padded canonicalInput33101 canonicalOutput33101 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33102 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33102 : ExponentCode := normalNode8067

theorem canonicalSound33102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33102.moment H = canonicalOutput33102.moment H :=
  canonical_of_padded canonicalInput33102 canonicalOutput33102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33103 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33103 : ExponentCode := normalNode8361

theorem canonicalSound33103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33103.moment H = canonicalOutput33103.moment H :=
  canonical_of_padded canonicalInput33103 canonicalOutput33103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33104 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33104 : ExponentCode := normalNode8066

theorem canonicalSound33104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33104.moment H = canonicalOutput33104.moment H :=
  canonical_of_padded canonicalInput33104 canonicalOutput33104 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33105 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33105 : ExponentCode := normalNode8066

theorem canonicalSound33105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33105.moment H = canonicalOutput33105.moment H :=
  canonical_of_padded canonicalInput33105 canonicalOutput33105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33106 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33106 : ExponentCode := normalNode8361

theorem canonicalSound33106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33106.moment H = canonicalOutput33106.moment H :=
  canonical_of_padded canonicalInput33106 canonicalOutput33106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33107 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33107 : ExponentCode := normalNode8067

theorem canonicalSound33107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33107.moment H = canonicalOutput33107.moment H :=
  canonical_of_padded canonicalInput33107 canonicalOutput33107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33108 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33108 : ExponentCode := normalNode8066

theorem canonicalSound33108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33108.moment H = canonicalOutput33108.moment H :=
  canonical_of_padded canonicalInput33108 canonicalOutput33108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33109 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33109 : ExponentCode := normalNode8361

theorem canonicalSound33109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33109.moment H = canonicalOutput33109.moment H :=
  canonical_of_padded canonicalInput33109 canonicalOutput33109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33110 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33110 : ExponentCode := normalNode8067

theorem canonicalSound33110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33110.moment H = canonicalOutput33110.moment H :=
  canonical_of_padded canonicalInput33110 canonicalOutput33110 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33111 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33111 : ExponentCode := normalNode8067

theorem canonicalSound33111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33111.moment H = canonicalOutput33111.moment H :=
  canonical_of_padded canonicalInput33111 canonicalOutput33111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33112 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33112 : ExponentCode := normalNode8361

theorem canonicalSound33112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33112.moment H = canonicalOutput33112.moment H :=
  canonical_of_padded canonicalInput33112 canonicalOutput33112 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33113 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33113 : ExponentCode := normalNode8066

theorem canonicalSound33113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33113.moment H = canonicalOutput33113.moment H :=
  canonical_of_padded canonicalInput33113 canonicalOutput33113 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33114 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33114 : ExponentCode := normalNode8064

theorem canonicalSound33114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33114.moment H = canonicalOutput33114.moment H :=
  canonical_of_padded canonicalInput33114 canonicalOutput33114 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33115 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33115 : ExponentCode := normalNode8066

theorem canonicalSound33115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33115.moment H = canonicalOutput33115.moment H :=
  canonical_of_padded canonicalInput33115 canonicalOutput33115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33116 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33116 : ExponentCode := normalNode8066

theorem canonicalSound33116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33116.moment H = canonicalOutput33116.moment H :=
  canonical_of_padded canonicalInput33116 canonicalOutput33116 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33117 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33117 : ExponentCode := normalNode8064

theorem canonicalSound33117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33117.moment H = canonicalOutput33117.moment H :=
  canonical_of_padded canonicalInput33117 canonicalOutput33117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33118 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33118 : ExponentCode := normalNode8068

theorem canonicalSound33118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33118.moment H = canonicalOutput33118.moment H :=
  canonical_of_padded canonicalInput33118 canonicalOutput33118 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput33119 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33119 : ExponentCode := normalNode8458

theorem canonicalSound33119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33119.moment H = canonicalOutput33119.moment H :=
  canonical_of_padded canonicalInput33119 canonicalOutput33119 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput33120 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33120 : ExponentCode := normalNode10045

theorem canonicalSound33120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33120.moment H = canonicalOutput33120.moment H :=
  canonical_of_padded canonicalInput33120 canonicalOutput33120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation388⟩ (by decide +kernel) hH

def canonicalInput33121 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33121 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33121.moment H = canonicalOutput33121.moment H :=
  canonical_of_padded canonicalInput33121 canonicalOutput33121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33122 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33122 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33122.moment H = canonicalOutput33122.moment H :=
  canonical_of_padded canonicalInput33122 canonicalOutput33122 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33123 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33123 : ExponentCode := normalNode10818

theorem canonicalSound33123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33123.moment H = canonicalOutput33123.moment H :=
  canonical_of_padded canonicalInput33123 canonicalOutput33123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation235, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput33124 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33124 : ExponentCode := normalNode10455

theorem canonicalSound33124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33124.moment H = canonicalOutput33124.moment H :=
  canonical_of_padded canonicalInput33124 canonicalOutput33124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput33125 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33125 : ExponentCode := normalNode10375

theorem canonicalSound33125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33125.moment H = canonicalOutput33125.moment H :=
  canonical_of_padded canonicalInput33125 canonicalOutput33125 (by decide) (by decide)
    ⟨false, false, canonicalPermutation391, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput33126 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33126 : ExponentCode := normalNode8064

theorem canonicalSound33126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33126.moment H = canonicalOutput33126.moment H :=
  canonical_of_padded canonicalInput33126 canonicalOutput33126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33127 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33127 : ExponentCode := normalNode8066

theorem canonicalSound33127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33127.moment H = canonicalOutput33127.moment H :=
  canonical_of_padded canonicalInput33127 canonicalOutput33127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33128 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33128 : ExponentCode := normalNode8066

theorem canonicalSound33128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33128.moment H = canonicalOutput33128.moment H :=
  canonical_of_padded canonicalInput33128 canonicalOutput33128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33129 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33129 : ExponentCode := normalNode8064

theorem canonicalSound33129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33129.moment H = canonicalOutput33129.moment H :=
  canonical_of_padded canonicalInput33129 canonicalOutput33129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33130 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33130 : ExponentCode := normalNode8066

theorem canonicalSound33130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33130.moment H = canonicalOutput33130.moment H :=
  canonical_of_padded canonicalInput33130 canonicalOutput33130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33131 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33131 : ExponentCode := normalNode8361

theorem canonicalSound33131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33131.moment H = canonicalOutput33131.moment H :=
  canonical_of_padded canonicalInput33131 canonicalOutput33131 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33132 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33132 : ExponentCode := normalNode8067

theorem canonicalSound33132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33132.moment H = canonicalOutput33132.moment H :=
  canonical_of_padded canonicalInput33132 canonicalOutput33132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33133 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33133 : ExponentCode := normalNode8067

theorem canonicalSound33133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33133.moment H = canonicalOutput33133.moment H :=
  canonical_of_padded canonicalInput33133 canonicalOutput33133 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33134 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33134 : ExponentCode := normalNode8361

theorem canonicalSound33134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33134.moment H = canonicalOutput33134.moment H :=
  canonical_of_padded canonicalInput33134 canonicalOutput33134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33135 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33135 : ExponentCode := normalNode8066

theorem canonicalSound33135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33135.moment H = canonicalOutput33135.moment H :=
  canonical_of_padded canonicalInput33135 canonicalOutput33135 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33136 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33136 : ExponentCode := normalNode8066

theorem canonicalSound33136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33136.moment H = canonicalOutput33136.moment H :=
  canonical_of_padded canonicalInput33136 canonicalOutput33136 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33137 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33137 : ExponentCode := normalNode8067

theorem canonicalSound33137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33137.moment H = canonicalOutput33137.moment H :=
  canonical_of_padded canonicalInput33137 canonicalOutput33137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33138 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33138 : ExponentCode := normalNode8361

theorem canonicalSound33138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33138.moment H = canonicalOutput33138.moment H :=
  canonical_of_padded canonicalInput33138 canonicalOutput33138 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33139 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33139 : ExponentCode := normalNode8361

theorem canonicalSound33139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33139.moment H = canonicalOutput33139.moment H :=
  canonical_of_padded canonicalInput33139 canonicalOutput33139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33140 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33140 : ExponentCode := normalNode8067

theorem canonicalSound33140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33140.moment H = canonicalOutput33140.moment H :=
  canonical_of_padded canonicalInput33140 canonicalOutput33140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33141 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33141 : ExponentCode := normalNode8066

theorem canonicalSound33141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33141.moment H = canonicalOutput33141.moment H :=
  canonical_of_padded canonicalInput33141 canonicalOutput33141 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33142 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33142 : ExponentCode := normalNode8064

theorem canonicalSound33142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33142.moment H = canonicalOutput33142.moment H :=
  canonical_of_padded canonicalInput33142 canonicalOutput33142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33143 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33143 : ExponentCode := normalNode8066

theorem canonicalSound33143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33143.moment H = canonicalOutput33143.moment H :=
  canonical_of_padded canonicalInput33143 canonicalOutput33143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33144 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33144 : ExponentCode := normalNode8066

theorem canonicalSound33144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33144.moment H = canonicalOutput33144.moment H :=
  canonical_of_padded canonicalInput33144 canonicalOutput33144 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33145 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33145 : ExponentCode := normalNode8064

theorem canonicalSound33145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33145.moment H = canonicalOutput33145.moment H :=
  canonical_of_padded canonicalInput33145 canonicalOutput33145 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33146 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33146 : ExponentCode := normalNode8067

theorem canonicalSound33146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33146.moment H = canonicalOutput33146.moment H :=
  canonical_of_padded canonicalInput33146 canonicalOutput33146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33147 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33147 : ExponentCode := normalNode8066

theorem canonicalSound33147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33147.moment H = canonicalOutput33147.moment H :=
  canonical_of_padded canonicalInput33147 canonicalOutput33147 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33148 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33148 : ExponentCode := normalNode8361

theorem canonicalSound33148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33148.moment H = canonicalOutput33148.moment H :=
  canonical_of_padded canonicalInput33148 canonicalOutput33148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33149 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33149 : ExponentCode := normalNode8361

theorem canonicalSound33149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33149.moment H = canonicalOutput33149.moment H :=
  canonical_of_padded canonicalInput33149 canonicalOutput33149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33150 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33150 : ExponentCode := normalNode8066

theorem canonicalSound33150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33150.moment H = canonicalOutput33150.moment H :=
  canonical_of_padded canonicalInput33150 canonicalOutput33150 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33151 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33151 : ExponentCode := normalNode8067

theorem canonicalSound33151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33151.moment H = canonicalOutput33151.moment H :=
  canonical_of_padded canonicalInput33151 canonicalOutput33151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, canonicalPermutation47⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
