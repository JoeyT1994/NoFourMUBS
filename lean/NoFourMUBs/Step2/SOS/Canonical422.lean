import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27008 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27008 : ExponentCode := normalNode8067

theorem canonicalSound27008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27008.moment H = canonicalOutput27008.moment H :=
  canonical_of_padded canonicalInput27008 canonicalOutput27008 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27009 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27009 : ExponentCode := normalNode10869

theorem canonicalSound27009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27009.moment H = canonicalOutput27009.moment H :=
  canonical_of_padded canonicalInput27009 canonicalOutput27009 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27010 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput27010 : ExponentCode := normalNode10434

theorem canonicalSound27010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27010.moment H = canonicalOutput27010.moment H :=
  canonical_of_padded canonicalInput27010 canonicalOutput27010 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput27011 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput27011 : ExponentCode := normalNode10433

theorem canonicalSound27011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27011.moment H = canonicalOutput27011.moment H :=
  canonical_of_padded canonicalInput27011 canonicalOutput27011 (by decide) (by decide)
    ⟨false, false, canonicalPermutation243, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput27012 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput27012 : ExponentCode := normalNode10396

theorem canonicalSound27012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27012.moment H = canonicalOutput27012.moment H :=
  canonical_of_padded canonicalInput27012 canonicalOutput27012 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput27013 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput27013 : ExponentCode := normalNode10818

theorem canonicalSound27013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27013.moment H = canonicalOutput27013.moment H :=
  canonical_of_padded canonicalInput27013 canonicalOutput27013 (by decide) (by decide)
    ⟨false, true, canonicalPermutation28, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput27014 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput27014 : ExponentCode := normalNode10455

theorem canonicalSound27014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27014.moment H = canonicalOutput27014.moment H :=
  canonical_of_padded canonicalInput27014 canonicalOutput27014 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput27015 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput27015 : ExponentCode := normalNode10375

theorem canonicalSound27015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27015.moment H = canonicalOutput27015.moment H :=
  canonical_of_padded canonicalInput27015 canonicalOutput27015 (by decide) (by decide)
    ⟨false, false, canonicalPermutation338, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput27016 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27016 : ExponentCode := normalNode8064

theorem canonicalSound27016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27016.moment H = canonicalOutput27016.moment H :=
  canonical_of_padded canonicalInput27016 canonicalOutput27016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27017 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27017 : ExponentCode := normalNode8066

theorem canonicalSound27017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27017.moment H = canonicalOutput27017.moment H :=
  canonical_of_padded canonicalInput27017 canonicalOutput27017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27018 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27018 : ExponentCode := normalNode8066

theorem canonicalSound27018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27018.moment H = canonicalOutput27018.moment H :=
  canonical_of_padded canonicalInput27018 canonicalOutput27018 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27019 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27019 : ExponentCode := normalNode8064

theorem canonicalSound27019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27019.moment H = canonicalOutput27019.moment H :=
  canonical_of_padded canonicalInput27019 canonicalOutput27019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27020 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27020 : ExponentCode := normalNode8066

theorem canonicalSound27020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27020.moment H = canonicalOutput27020.moment H :=
  canonical_of_padded canonicalInput27020 canonicalOutput27020 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27021 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27021 : ExponentCode := normalNode8361

theorem canonicalSound27021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27021.moment H = canonicalOutput27021.moment H :=
  canonical_of_padded canonicalInput27021 canonicalOutput27021 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27022 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27022 : ExponentCode := normalNode8067

theorem canonicalSound27022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27022.moment H = canonicalOutput27022.moment H :=
  canonical_of_padded canonicalInput27022 canonicalOutput27022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27023 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27023 : ExponentCode := normalNode8067

theorem canonicalSound27023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27023.moment H = canonicalOutput27023.moment H :=
  canonical_of_padded canonicalInput27023 canonicalOutput27023 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27024 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27024 : ExponentCode := normalNode8361

theorem canonicalSound27024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27024.moment H = canonicalOutput27024.moment H :=
  canonical_of_padded canonicalInput27024 canonicalOutput27024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27025 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27025 : ExponentCode := normalNode8066

theorem canonicalSound27025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27025.moment H = canonicalOutput27025.moment H :=
  canonical_of_padded canonicalInput27025 canonicalOutput27025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27026 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27026 : ExponentCode := normalNode8066

theorem canonicalSound27026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27026.moment H = canonicalOutput27026.moment H :=
  canonical_of_padded canonicalInput27026 canonicalOutput27026 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27027 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27027 : ExponentCode := normalNode8067

theorem canonicalSound27027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27027.moment H = canonicalOutput27027.moment H :=
  canonical_of_padded canonicalInput27027 canonicalOutput27027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27028 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27028 : ExponentCode := normalNode8361

theorem canonicalSound27028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27028.moment H = canonicalOutput27028.moment H :=
  canonical_of_padded canonicalInput27028 canonicalOutput27028 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27029 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27029 : ExponentCode := normalNode8361

theorem canonicalSound27029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27029.moment H = canonicalOutput27029.moment H :=
  canonical_of_padded canonicalInput27029 canonicalOutput27029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27030 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27030 : ExponentCode := normalNode8067

theorem canonicalSound27030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27030.moment H = canonicalOutput27030.moment H :=
  canonical_of_padded canonicalInput27030 canonicalOutput27030 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27031 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27031 : ExponentCode := normalNode8066

theorem canonicalSound27031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27031.moment H = canonicalOutput27031.moment H :=
  canonical_of_padded canonicalInput27031 canonicalOutput27031 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27032 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27032 : ExponentCode := normalNode8064

theorem canonicalSound27032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27032.moment H = canonicalOutput27032.moment H :=
  canonical_of_padded canonicalInput27032 canonicalOutput27032 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27033 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27033 : ExponentCode := normalNode8066

theorem canonicalSound27033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27033.moment H = canonicalOutput27033.moment H :=
  canonical_of_padded canonicalInput27033 canonicalOutput27033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27034 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27034 : ExponentCode := normalNode8066

theorem canonicalSound27034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27034.moment H = canonicalOutput27034.moment H :=
  canonical_of_padded canonicalInput27034 canonicalOutput27034 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27035 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27035 : ExponentCode := normalNode8064

theorem canonicalSound27035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27035.moment H = canonicalOutput27035.moment H :=
  canonical_of_padded canonicalInput27035 canonicalOutput27035 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27036 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27036 : ExponentCode := normalNode8067

theorem canonicalSound27036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27036.moment H = canonicalOutput27036.moment H :=
  canonical_of_padded canonicalInput27036 canonicalOutput27036 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27037 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27037 : ExponentCode := normalNode8066

theorem canonicalSound27037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27037.moment H = canonicalOutput27037.moment H :=
  canonical_of_padded canonicalInput27037 canonicalOutput27037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27038 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27038 : ExponentCode := normalNode8361

theorem canonicalSound27038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27038.moment H = canonicalOutput27038.moment H :=
  canonical_of_padded canonicalInput27038 canonicalOutput27038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation210, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27039 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27039 : ExponentCode := normalNode8361

theorem canonicalSound27039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27039.moment H = canonicalOutput27039.moment H :=
  canonical_of_padded canonicalInput27039 canonicalOutput27039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27040 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27040 : ExponentCode := normalNode8066

theorem canonicalSound27040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27040.moment H = canonicalOutput27040.moment H :=
  canonical_of_padded canonicalInput27040 canonicalOutput27040 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27041 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27041 : ExponentCode := normalNode8067

theorem canonicalSound27041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27041.moment H = canonicalOutput27041.moment H :=
  canonical_of_padded canonicalInput27041 canonicalOutput27041 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27042 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27042 : ExponentCode := normalNode8361

theorem canonicalSound27042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27042.moment H = canonicalOutput27042.moment H :=
  canonical_of_padded canonicalInput27042 canonicalOutput27042 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27043 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27043 : ExponentCode := normalNode8361

theorem canonicalSound27043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27043.moment H = canonicalOutput27043.moment H :=
  canonical_of_padded canonicalInput27043 canonicalOutput27043 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27044 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27044 : ExponentCode := normalNode8361

theorem canonicalSound27044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27044.moment H = canonicalOutput27044.moment H :=
  canonical_of_padded canonicalInput27044 canonicalOutput27044 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27045 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27045 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound27045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27045.moment H = canonicalOutput27045.moment H :=
  canonical_of_padded canonicalInput27045 canonicalOutput27045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput27046 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27046 : ExponentCode := normalNode8361

theorem canonicalSound27046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27046.moment H = canonicalOutput27046.moment H :=
  canonical_of_padded canonicalInput27046 canonicalOutput27046 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27047 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27047 : ExponentCode := normalNode8361

theorem canonicalSound27047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27047.moment H = canonicalOutput27047.moment H :=
  canonical_of_padded canonicalInput27047 canonicalOutput27047 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27048 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27048 : ExponentCode := normalNode8361

theorem canonicalSound27048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27048.moment H = canonicalOutput27048.moment H :=
  canonical_of_padded canonicalInput27048 canonicalOutput27048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation265, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27049 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27049 : ExponentCode := normalNode8066

theorem canonicalSound27049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27049.moment H = canonicalOutput27049.moment H :=
  canonical_of_padded canonicalInput27049 canonicalOutput27049 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27050 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27050 : ExponentCode := normalNode8067

theorem canonicalSound27050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27050.moment H = canonicalOutput27050.moment H :=
  canonical_of_padded canonicalInput27050 canonicalOutput27050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27051 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27051 : ExponentCode := normalNode8361

theorem canonicalSound27051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27051.moment H = canonicalOutput27051.moment H :=
  canonical_of_padded canonicalInput27051 canonicalOutput27051 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27052 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27052 : ExponentCode := normalNode8361

theorem canonicalSound27052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27052.moment H = canonicalOutput27052.moment H :=
  canonical_of_padded canonicalInput27052 canonicalOutput27052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27053 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27053 : ExponentCode := normalNode8067

theorem canonicalSound27053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27053.moment H = canonicalOutput27053.moment H :=
  canonical_of_padded canonicalInput27053 canonicalOutput27053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27054 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27054 : ExponentCode := normalNode8066

theorem canonicalSound27054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27054.moment H = canonicalOutput27054.moment H :=
  canonical_of_padded canonicalInput27054 canonicalOutput27054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27055 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27055 : ExponentCode := normalNode8067

theorem canonicalSound27055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27055.moment H = canonicalOutput27055.moment H :=
  canonical_of_padded canonicalInput27055 canonicalOutput27055 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27056 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27056 : ExponentCode := normalNode8361

theorem canonicalSound27056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27056.moment H = canonicalOutput27056.moment H :=
  canonical_of_padded canonicalInput27056 canonicalOutput27056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27057 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27057 : ExponentCode := normalNode8066

theorem canonicalSound27057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27057.moment H = canonicalOutput27057.moment H :=
  canonical_of_padded canonicalInput27057 canonicalOutput27057 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27058 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27058 : ExponentCode := normalNode8066

theorem canonicalSound27058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27058.moment H = canonicalOutput27058.moment H :=
  canonical_of_padded canonicalInput27058 canonicalOutput27058 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27059 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27059 : ExponentCode := normalNode8361

theorem canonicalSound27059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27059.moment H = canonicalOutput27059.moment H :=
  canonical_of_padded canonicalInput27059 canonicalOutput27059 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27060 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27060 : ExponentCode := normalNode8067

theorem canonicalSound27060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27060.moment H = canonicalOutput27060.moment H :=
  canonical_of_padded canonicalInput27060 canonicalOutput27060 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27061 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27061 : ExponentCode := normalNode8066

theorem canonicalSound27061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27061.moment H = canonicalOutput27061.moment H :=
  canonical_of_padded canonicalInput27061 canonicalOutput27061 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27062 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27062 : ExponentCode := normalNode8361

theorem canonicalSound27062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27062.moment H = canonicalOutput27062.moment H :=
  canonical_of_padded canonicalInput27062 canonicalOutput27062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27063 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27063 : ExponentCode := normalNode8067

theorem canonicalSound27063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27063.moment H = canonicalOutput27063.moment H :=
  canonical_of_padded canonicalInput27063 canonicalOutput27063 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27064 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27064 : ExponentCode := normalNode8067

theorem canonicalSound27064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27064.moment H = canonicalOutput27064.moment H :=
  canonical_of_padded canonicalInput27064 canonicalOutput27064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27065 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27065 : ExponentCode := normalNode8361

theorem canonicalSound27065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27065.moment H = canonicalOutput27065.moment H :=
  canonical_of_padded canonicalInput27065 canonicalOutput27065 (by decide) (by decide)
    ⟨false, false, canonicalPermutation266, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27066 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27066 : ExponentCode := normalNode8066

theorem canonicalSound27066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27066.moment H = canonicalOutput27066.moment H :=
  canonical_of_padded canonicalInput27066 canonicalOutput27066 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27067 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27067 : ExponentCode := normalNode8064

theorem canonicalSound27067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27067.moment H = canonicalOutput27067.moment H :=
  canonical_of_padded canonicalInput27067 canonicalOutput27067 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27068 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27068 : ExponentCode := normalNode8066

theorem canonicalSound27068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27068.moment H = canonicalOutput27068.moment H :=
  canonical_of_padded canonicalInput27068 canonicalOutput27068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27069 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27069 : ExponentCode := normalNode8066

theorem canonicalSound27069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27069.moment H = canonicalOutput27069.moment H :=
  canonical_of_padded canonicalInput27069 canonicalOutput27069 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27070 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27070 : ExponentCode := normalNode8064

theorem canonicalSound27070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27070.moment H = canonicalOutput27070.moment H :=
  canonical_of_padded canonicalInput27070 canonicalOutput27070 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27071 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput27071 : ExponentCode := normalNode8068

theorem canonicalSound27071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27071.moment H = canonicalOutput27071.moment H :=
  canonical_of_padded canonicalInput27071 canonicalOutput27071 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation40⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
