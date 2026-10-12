import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27072 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput27072 : ExponentCode := normalNode8458

theorem canonicalSound27072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27072.moment H = canonicalOutput27072.moment H :=
  canonical_of_padded canonicalInput27072 canonicalOutput27072 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput27073 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput27073 : ExponentCode := normalNode10045

theorem canonicalSound27073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27073.moment H = canonicalOutput27073.moment H :=
  canonical_of_padded canonicalInput27073 canonicalOutput27073 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation388⟩ (by decide +kernel) hH

def canonicalInput27074 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27074 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound27074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27074.moment H = canonicalOutput27074.moment H :=
  canonical_of_padded canonicalInput27074 canonicalOutput27074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput27075 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27075 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound27075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27075.moment H = canonicalOutput27075.moment H :=
  canonical_of_padded canonicalInput27075 canonicalOutput27075 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput27076 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27076 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound27076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27076.moment H = canonicalOutput27076.moment H :=
  canonical_of_padded canonicalInput27076 canonicalOutput27076 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput27077 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput27077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound27077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27077.moment H = canonicalOutput27077.moment H :=
  canonical_of_padded canonicalInput27077 canonicalOutput27077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput27078 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput27078 : ExponentCode := normalNode10415

theorem canonicalSound27078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27078.moment H = canonicalOutput27078.moment H :=
  canonical_of_padded canonicalInput27078 canonicalOutput27078 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput27079 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput27079 : ExponentCode := normalNode10371

theorem canonicalSound27079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27079.moment H = canonicalOutput27079.moment H :=
  canonical_of_padded canonicalInput27079 canonicalOutput27079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation238, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput27080 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27080 : ExponentCode := normalNode11165

theorem canonicalSound27080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27080.moment H = canonicalOutput27080.moment H :=
  canonical_of_padded canonicalInput27080 canonicalOutput27080 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27081 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27081 : ExponentCode := normalNode8361

theorem canonicalSound27081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27081.moment H = canonicalOutput27081.moment H :=
  canonical_of_padded canonicalInput27081 canonicalOutput27081 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27082 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27082 : ExponentCode := normalNode8361

theorem canonicalSound27082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27082.moment H = canonicalOutput27082.moment H :=
  canonical_of_padded canonicalInput27082 canonicalOutput27082 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27083 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27083 : ExponentCode := normalNode11165

theorem canonicalSound27083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27083.moment H = canonicalOutput27083.moment H :=
  canonical_of_padded canonicalInput27083 canonicalOutput27083 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27084 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27084 : ExponentCode := normalNode8361

theorem canonicalSound27084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27084.moment H = canonicalOutput27084.moment H :=
  canonical_of_padded canonicalInput27084 canonicalOutput27084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27085 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27085 : ExponentCode := normalNode10645

theorem canonicalSound27085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27085.moment H = canonicalOutput27085.moment H :=
  canonical_of_padded canonicalInput27085 canonicalOutput27085 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27086 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27086 : ExponentCode := normalNode10453

theorem canonicalSound27086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27086.moment H = canonicalOutput27086.moment H :=
  canonical_of_padded canonicalInput27086 canonicalOutput27086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27087 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27087 : ExponentCode := normalNode10453

theorem canonicalSound27087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27087.moment H = canonicalOutput27087.moment H :=
  canonical_of_padded canonicalInput27087 canonicalOutput27087 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27088 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27088 : ExponentCode := normalNode10645

theorem canonicalSound27088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27088.moment H = canonicalOutput27088.moment H :=
  canonical_of_padded canonicalInput27088 canonicalOutput27088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27089 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27089 : ExponentCode := normalNode8361

theorem canonicalSound27089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27089.moment H = canonicalOutput27089.moment H :=
  canonical_of_padded canonicalInput27089 canonicalOutput27089 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27090 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27090 : ExponentCode := normalNode8361

theorem canonicalSound27090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27090.moment H = canonicalOutput27090.moment H :=
  canonical_of_padded canonicalInput27090 canonicalOutput27090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27091 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27091 : ExponentCode := normalNode10453

theorem canonicalSound27091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27091.moment H = canonicalOutput27091.moment H :=
  canonical_of_padded canonicalInput27091 canonicalOutput27091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27092 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27092 : ExponentCode := normalNode10645

theorem canonicalSound27092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27092.moment H = canonicalOutput27092.moment H :=
  canonical_of_padded canonicalInput27092 canonicalOutput27092 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27093 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27093 : ExponentCode := normalNode10645

theorem canonicalSound27093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27093.moment H = canonicalOutput27093.moment H :=
  canonical_of_padded canonicalInput27093 canonicalOutput27093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27094 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27094 : ExponentCode := normalNode10453

theorem canonicalSound27094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27094.moment H = canonicalOutput27094.moment H :=
  canonical_of_padded canonicalInput27094 canonicalOutput27094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27095 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27095 : ExponentCode := normalNode8361

theorem canonicalSound27095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27095.moment H = canonicalOutput27095.moment H :=
  canonical_of_padded canonicalInput27095 canonicalOutput27095 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27096 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27096 : ExponentCode := normalNode11165

theorem canonicalSound27096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27096.moment H = canonicalOutput27096.moment H :=
  canonical_of_padded canonicalInput27096 canonicalOutput27096 (by decide) (by decide)
    ⟨false, true, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27097 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27097 : ExponentCode := normalNode8361

theorem canonicalSound27097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27097.moment H = canonicalOutput27097.moment H :=
  canonical_of_padded canonicalInput27097 canonicalOutput27097 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27098 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27098 : ExponentCode := normalNode8361

theorem canonicalSound27098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27098.moment H = canonicalOutput27098.moment H :=
  canonical_of_padded canonicalInput27098 canonicalOutput27098 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27099 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27099 : ExponentCode := normalNode11165

theorem canonicalSound27099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27099.moment H = canonicalOutput27099.moment H :=
  canonical_of_padded canonicalInput27099 canonicalOutput27099 (by decide) (by decide)
    ⟨false, true, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27100 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27100 : ExponentCode := normalNode10453

theorem canonicalSound27100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27100.moment H = canonicalOutput27100.moment H :=
  canonical_of_padded canonicalInput27100 canonicalOutput27100 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27101 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27101 : ExponentCode := normalNode8361

theorem canonicalSound27101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27101.moment H = canonicalOutput27101.moment H :=
  canonical_of_padded canonicalInput27101 canonicalOutput27101 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27102 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27102 : ExponentCode := normalNode10645

theorem canonicalSound27102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27102.moment H = canonicalOutput27102.moment H :=
  canonical_of_padded canonicalInput27102 canonicalOutput27102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27103 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27103 : ExponentCode := normalNode10645

theorem canonicalSound27103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27103.moment H = canonicalOutput27103.moment H :=
  canonical_of_padded canonicalInput27103 canonicalOutput27103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27104 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27104 : ExponentCode := normalNode8361

theorem canonicalSound27104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27104.moment H = canonicalOutput27104.moment H :=
  canonical_of_padded canonicalInput27104 canonicalOutput27104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27105 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27105 : ExponentCode := normalNode10453

theorem canonicalSound27105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27105.moment H = canonicalOutput27105.moment H :=
  canonical_of_padded canonicalInput27105 canonicalOutput27105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27106 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27106 : ExponentCode := normalNode10645

theorem canonicalSound27106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27106.moment H = canonicalOutput27106.moment H :=
  canonical_of_padded canonicalInput27106 canonicalOutput27106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27107 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27107 : ExponentCode := normalNode10645

theorem canonicalSound27107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27107.moment H = canonicalOutput27107.moment H :=
  canonical_of_padded canonicalInput27107 canonicalOutput27107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27108 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27108 : ExponentCode := normalNode10645

theorem canonicalSound27108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27108.moment H = canonicalOutput27108.moment H :=
  canonical_of_padded canonicalInput27108 canonicalOutput27108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27109 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27109 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound27109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27109.moment H = canonicalOutput27109.moment H :=
  canonical_of_padded canonicalInput27109 canonicalOutput27109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput27110 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27110 : ExponentCode := normalNode10645

theorem canonicalSound27110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27110.moment H = canonicalOutput27110.moment H :=
  canonical_of_padded canonicalInput27110 canonicalOutput27110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27111 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27111 : ExponentCode := normalNode10645

theorem canonicalSound27111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27111.moment H = canonicalOutput27111.moment H :=
  canonical_of_padded canonicalInput27111 canonicalOutput27111 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27112 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27112 : ExponentCode := normalNode10645

theorem canonicalSound27112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27112.moment H = canonicalOutput27112.moment H :=
  canonical_of_padded canonicalInput27112 canonicalOutput27112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27113 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27113 : ExponentCode := normalNode8361

theorem canonicalSound27113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27113.moment H = canonicalOutput27113.moment H :=
  canonical_of_padded canonicalInput27113 canonicalOutput27113 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27114 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27114 : ExponentCode := normalNode10453

theorem canonicalSound27114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27114.moment H = canonicalOutput27114.moment H :=
  canonical_of_padded canonicalInput27114 canonicalOutput27114 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27115 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27115 : ExponentCode := normalNode10645

theorem canonicalSound27115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27115.moment H = canonicalOutput27115.moment H :=
  canonical_of_padded canonicalInput27115 canonicalOutput27115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27116 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27116 : ExponentCode := normalNode10645

theorem canonicalSound27116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27116.moment H = canonicalOutput27116.moment H :=
  canonical_of_padded canonicalInput27116 canonicalOutput27116 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27117 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27117 : ExponentCode := normalNode10453

theorem canonicalSound27117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27117.moment H = canonicalOutput27117.moment H :=
  canonical_of_padded canonicalInput27117 canonicalOutput27117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27118 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27118 : ExponentCode := normalNode8361

theorem canonicalSound27118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27118.moment H = canonicalOutput27118.moment H :=
  canonical_of_padded canonicalInput27118 canonicalOutput27118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27119 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27119 : ExponentCode := normalNode10453

theorem canonicalSound27119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27119.moment H = canonicalOutput27119.moment H :=
  canonical_of_padded canonicalInput27119 canonicalOutput27119 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27120 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27120 : ExponentCode := normalNode10645

theorem canonicalSound27120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27120.moment H = canonicalOutput27120.moment H :=
  canonical_of_padded canonicalInput27120 canonicalOutput27120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27121 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27121 : ExponentCode := normalNode8361

theorem canonicalSound27121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27121.moment H = canonicalOutput27121.moment H :=
  canonical_of_padded canonicalInput27121 canonicalOutput27121 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27122 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27122 : ExponentCode := normalNode8361

theorem canonicalSound27122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27122.moment H = canonicalOutput27122.moment H :=
  canonical_of_padded canonicalInput27122 canonicalOutput27122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27123 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27123 : ExponentCode := normalNode10645

theorem canonicalSound27123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27123.moment H = canonicalOutput27123.moment H :=
  canonical_of_padded canonicalInput27123 canonicalOutput27123 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27124 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27124 : ExponentCode := normalNode10453

theorem canonicalSound27124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27124.moment H = canonicalOutput27124.moment H :=
  canonical_of_padded canonicalInput27124 canonicalOutput27124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27125 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27125 : ExponentCode := normalNode8361

theorem canonicalSound27125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27125.moment H = canonicalOutput27125.moment H :=
  canonical_of_padded canonicalInput27125 canonicalOutput27125 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27126 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27126 : ExponentCode := normalNode10645

theorem canonicalSound27126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27126.moment H = canonicalOutput27126.moment H :=
  canonical_of_padded canonicalInput27126 canonicalOutput27126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27127 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27127 : ExponentCode := normalNode10453

theorem canonicalSound27127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27127.moment H = canonicalOutput27127.moment H :=
  canonical_of_padded canonicalInput27127 canonicalOutput27127 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27128 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27128 : ExponentCode := normalNode10453

theorem canonicalSound27128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27128.moment H = canonicalOutput27128.moment H :=
  canonical_of_padded canonicalInput27128 canonicalOutput27128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27129 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27129 : ExponentCode := normalNode10645

theorem canonicalSound27129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27129.moment H = canonicalOutput27129.moment H :=
  canonical_of_padded canonicalInput27129 canonicalOutput27129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27130 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27130 : ExponentCode := normalNode8361

theorem canonicalSound27130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27130.moment H = canonicalOutput27130.moment H :=
  canonical_of_padded canonicalInput27130 canonicalOutput27130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27131 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27131 : ExponentCode := normalNode11165

theorem canonicalSound27131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27131.moment H = canonicalOutput27131.moment H :=
  canonical_of_padded canonicalInput27131 canonicalOutput27131 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27132 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27132 : ExponentCode := normalNode8361

theorem canonicalSound27132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27132.moment H = canonicalOutput27132.moment H :=
  canonical_of_padded canonicalInput27132 canonicalOutput27132 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27133 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27133 : ExponentCode := normalNode8361

theorem canonicalSound27133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27133.moment H = canonicalOutput27133.moment H :=
  canonical_of_padded canonicalInput27133 canonicalOutput27133 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27134 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27134 : ExponentCode := normalNode11165

theorem canonicalSound27134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27134.moment H = canonicalOutput27134.moment H :=
  canonical_of_padded canonicalInput27134 canonicalOutput27134 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27135 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput27135 : ExponentCode := normalNode10415

theorem canonicalSound27135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27135.moment H = canonicalOutput27135.moment H :=
  canonical_of_padded canonicalInput27135 canonicalOutput27135 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
