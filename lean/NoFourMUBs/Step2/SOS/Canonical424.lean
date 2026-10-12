import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27136 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput27136 : ExponentCode := normalNode10371

theorem canonicalSound27136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27136.moment H = canonicalOutput27136.moment H :=
  canonical_of_padded canonicalInput27136 canonicalOutput27136 (by decide) (by decide)
    ⟨false, false, canonicalPermutation238, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput27137 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput27137 : ExponentCode := normalNode10415

theorem canonicalSound27137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27137.moment H = canonicalOutput27137.moment H :=
  canonical_of_padded canonicalInput27137 canonicalOutput27137 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput27138 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput27138 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound27138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27138.moment H = canonicalOutput27138.moment H :=
  canonical_of_padded canonicalInput27138 canonicalOutput27138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput27139 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput27139 : ExponentCode := normalNode10415

theorem canonicalSound27139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27139.moment H = canonicalOutput27139.moment H :=
  canonical_of_padded canonicalInput27139 canonicalOutput27139 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput27140 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput27140 : ExponentCode := normalNode10371

theorem canonicalSound27140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27140.moment H = canonicalOutput27140.moment H :=
  canonical_of_padded canonicalInput27140 canonicalOutput27140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation262, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput27141 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27141 : ExponentCode := normalNode11165

theorem canonicalSound27141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27141.moment H = canonicalOutput27141.moment H :=
  canonical_of_padded canonicalInput27141 canonicalOutput27141 (by decide) (by decide)
    ⟨false, true, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27142 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27142 : ExponentCode := normalNode8361

theorem canonicalSound27142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27142.moment H = canonicalOutput27142.moment H :=
  canonical_of_padded canonicalInput27142 canonicalOutput27142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27143 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27143 : ExponentCode := normalNode8361

theorem canonicalSound27143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27143.moment H = canonicalOutput27143.moment H :=
  canonical_of_padded canonicalInput27143 canonicalOutput27143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27144 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27144 : ExponentCode := normalNode11165

theorem canonicalSound27144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27144.moment H = canonicalOutput27144.moment H :=
  canonical_of_padded canonicalInput27144 canonicalOutput27144 (by decide) (by decide)
    ⟨false, true, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27145 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27145 : ExponentCode := normalNode8361

theorem canonicalSound27145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27145.moment H = canonicalOutput27145.moment H :=
  canonical_of_padded canonicalInput27145 canonicalOutput27145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27146 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27146 : ExponentCode := normalNode10645

theorem canonicalSound27146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27146.moment H = canonicalOutput27146.moment H :=
  canonical_of_padded canonicalInput27146 canonicalOutput27146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27147 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27147 : ExponentCode := normalNode10453

theorem canonicalSound27147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27147.moment H = canonicalOutput27147.moment H :=
  canonical_of_padded canonicalInput27147 canonicalOutput27147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27148 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27148 : ExponentCode := normalNode10453

theorem canonicalSound27148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27148.moment H = canonicalOutput27148.moment H :=
  canonical_of_padded canonicalInput27148 canonicalOutput27148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27149 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27149 : ExponentCode := normalNode10645

theorem canonicalSound27149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27149.moment H = canonicalOutput27149.moment H :=
  canonical_of_padded canonicalInput27149 canonicalOutput27149 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27150 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27150 : ExponentCode := normalNode8361

theorem canonicalSound27150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27150.moment H = canonicalOutput27150.moment H :=
  canonical_of_padded canonicalInput27150 canonicalOutput27150 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27151 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27151 : ExponentCode := normalNode8361

theorem canonicalSound27151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27151.moment H = canonicalOutput27151.moment H :=
  canonical_of_padded canonicalInput27151 canonicalOutput27151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27152 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27152 : ExponentCode := normalNode10453

theorem canonicalSound27152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27152.moment H = canonicalOutput27152.moment H :=
  canonical_of_padded canonicalInput27152 canonicalOutput27152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27153 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27153 : ExponentCode := normalNode10645

theorem canonicalSound27153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27153.moment H = canonicalOutput27153.moment H :=
  canonical_of_padded canonicalInput27153 canonicalOutput27153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27154 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27154 : ExponentCode := normalNode10645

theorem canonicalSound27154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27154.moment H = canonicalOutput27154.moment H :=
  canonical_of_padded canonicalInput27154 canonicalOutput27154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27155 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27155 : ExponentCode := normalNode10453

theorem canonicalSound27155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27155.moment H = canonicalOutput27155.moment H :=
  canonical_of_padded canonicalInput27155 canonicalOutput27155 (by decide) (by decide)
    ⟨false, false, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27156 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27156 : ExponentCode := normalNode8361

theorem canonicalSound27156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27156.moment H = canonicalOutput27156.moment H :=
  canonical_of_padded canonicalInput27156 canonicalOutput27156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27157 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27157 : ExponentCode := normalNode11165

theorem canonicalSound27157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27157.moment H = canonicalOutput27157.moment H :=
  canonical_of_padded canonicalInput27157 canonicalOutput27157 (by decide) (by decide)
    ⟨false, true, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27158 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27158 : ExponentCode := normalNode8361

theorem canonicalSound27158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27158.moment H = canonicalOutput27158.moment H :=
  canonical_of_padded canonicalInput27158 canonicalOutput27158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27159 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27159 : ExponentCode := normalNode8361

theorem canonicalSound27159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27159.moment H = canonicalOutput27159.moment H :=
  canonical_of_padded canonicalInput27159 canonicalOutput27159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27160 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27160 : ExponentCode := normalNode11165

theorem canonicalSound27160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27160.moment H = canonicalOutput27160.moment H :=
  canonical_of_padded canonicalInput27160 canonicalOutput27160 (by decide) (by decide)
    ⟨false, true, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27161 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27161 : ExponentCode := normalNode10453

theorem canonicalSound27161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27161.moment H = canonicalOutput27161.moment H :=
  canonical_of_padded canonicalInput27161 canonicalOutput27161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27162 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27162 : ExponentCode := normalNode8361

theorem canonicalSound27162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27162.moment H = canonicalOutput27162.moment H :=
  canonical_of_padded canonicalInput27162 canonicalOutput27162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27163 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27163 : ExponentCode := normalNode10645

theorem canonicalSound27163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27163.moment H = canonicalOutput27163.moment H :=
  canonical_of_padded canonicalInput27163 canonicalOutput27163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27164 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27164 : ExponentCode := normalNode10645

theorem canonicalSound27164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27164.moment H = canonicalOutput27164.moment H :=
  canonical_of_padded canonicalInput27164 canonicalOutput27164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27165 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27165 : ExponentCode := normalNode8361

theorem canonicalSound27165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27165.moment H = canonicalOutput27165.moment H :=
  canonical_of_padded canonicalInput27165 canonicalOutput27165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27166 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27166 : ExponentCode := normalNode10453

theorem canonicalSound27166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27166.moment H = canonicalOutput27166.moment H :=
  canonical_of_padded canonicalInput27166 canonicalOutput27166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27167 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27167 : ExponentCode := normalNode10645

theorem canonicalSound27167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27167.moment H = canonicalOutput27167.moment H :=
  canonical_of_padded canonicalInput27167 canonicalOutput27167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27168 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27168 : ExponentCode := normalNode10645

theorem canonicalSound27168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27168.moment H = canonicalOutput27168.moment H :=
  canonical_of_padded canonicalInput27168 canonicalOutput27168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27169 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27169 : ExponentCode := normalNode10645

theorem canonicalSound27169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27169.moment H = canonicalOutput27169.moment H :=
  canonical_of_padded canonicalInput27169 canonicalOutput27169 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27170 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27170 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound27170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27170.moment H = canonicalOutput27170.moment H :=
  canonical_of_padded canonicalInput27170 canonicalOutput27170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput27171 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27171 : ExponentCode := normalNode10645

theorem canonicalSound27171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27171.moment H = canonicalOutput27171.moment H :=
  canonical_of_padded canonicalInput27171 canonicalOutput27171 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27172 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27172 : ExponentCode := normalNode10645

theorem canonicalSound27172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27172.moment H = canonicalOutput27172.moment H :=
  canonical_of_padded canonicalInput27172 canonicalOutput27172 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27173 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27173 : ExponentCode := normalNode10645

theorem canonicalSound27173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27173.moment H = canonicalOutput27173.moment H :=
  canonical_of_padded canonicalInput27173 canonicalOutput27173 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27174 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27174 : ExponentCode := normalNode8361

theorem canonicalSound27174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27174.moment H = canonicalOutput27174.moment H :=
  canonical_of_padded canonicalInput27174 canonicalOutput27174 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27175 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27175 : ExponentCode := normalNode10453

theorem canonicalSound27175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27175.moment H = canonicalOutput27175.moment H :=
  canonical_of_padded canonicalInput27175 canonicalOutput27175 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27176 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27176 : ExponentCode := normalNode10645

theorem canonicalSound27176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27176.moment H = canonicalOutput27176.moment H :=
  canonical_of_padded canonicalInput27176 canonicalOutput27176 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27177 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27177 : ExponentCode := normalNode10645

theorem canonicalSound27177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27177.moment H = canonicalOutput27177.moment H :=
  canonical_of_padded canonicalInput27177 canonicalOutput27177 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput27178 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27178 : ExponentCode := normalNode10453

theorem canonicalSound27178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27178.moment H = canonicalOutput27178.moment H :=
  canonical_of_padded canonicalInput27178 canonicalOutput27178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27179 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27179 : ExponentCode := normalNode8361

theorem canonicalSound27179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27179.moment H = canonicalOutput27179.moment H :=
  canonical_of_padded canonicalInput27179 canonicalOutput27179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27180 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27180 : ExponentCode := normalNode10453

theorem canonicalSound27180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27180.moment H = canonicalOutput27180.moment H :=
  canonical_of_padded canonicalInput27180 canonicalOutput27180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27181 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27181 : ExponentCode := normalNode10645

theorem canonicalSound27181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27181.moment H = canonicalOutput27181.moment H :=
  canonical_of_padded canonicalInput27181 canonicalOutput27181 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27182 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27182 : ExponentCode := normalNode8361

theorem canonicalSound27182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27182.moment H = canonicalOutput27182.moment H :=
  canonical_of_padded canonicalInput27182 canonicalOutput27182 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27183 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27183 : ExponentCode := normalNode8361

theorem canonicalSound27183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27183.moment H = canonicalOutput27183.moment H :=
  canonical_of_padded canonicalInput27183 canonicalOutput27183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput27184 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27184 : ExponentCode := normalNode10645

theorem canonicalSound27184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27184.moment H = canonicalOutput27184.moment H :=
  canonical_of_padded canonicalInput27184 canonicalOutput27184 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput27185 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27185 : ExponentCode := normalNode10453

theorem canonicalSound27185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27185.moment H = canonicalOutput27185.moment H :=
  canonical_of_padded canonicalInput27185 canonicalOutput27185 (by decide) (by decide)
    ⟨false, false, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27186 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27186 : ExponentCode := normalNode8361

theorem canonicalSound27186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27186.moment H = canonicalOutput27186.moment H :=
  canonical_of_padded canonicalInput27186 canonicalOutput27186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27187 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27187 : ExponentCode := normalNode10645

theorem canonicalSound27187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27187.moment H = canonicalOutput27187.moment H :=
  canonical_of_padded canonicalInput27187 canonicalOutput27187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27188 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27188 : ExponentCode := normalNode10453

theorem canonicalSound27188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27188.moment H = canonicalOutput27188.moment H :=
  canonical_of_padded canonicalInput27188 canonicalOutput27188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27189 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27189 : ExponentCode := normalNode10453

theorem canonicalSound27189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27189.moment H = canonicalOutput27189.moment H :=
  canonical_of_padded canonicalInput27189 canonicalOutput27189 (by decide) (by decide)
    ⟨false, false, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27190 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27190 : ExponentCode := normalNode10645

theorem canonicalSound27190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27190.moment H = canonicalOutput27190.moment H :=
  canonical_of_padded canonicalInput27190 canonicalOutput27190 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput27191 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27191 : ExponentCode := normalNode8361

theorem canonicalSound27191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27191.moment H = canonicalOutput27191.moment H :=
  canonical_of_padded canonicalInput27191 canonicalOutput27191 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput27192 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27192 : ExponentCode := normalNode11165

theorem canonicalSound27192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27192.moment H = canonicalOutput27192.moment H :=
  canonical_of_padded canonicalInput27192 canonicalOutput27192 (by decide) (by decide)
    ⟨false, true, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27193 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27193 : ExponentCode := normalNode8361

theorem canonicalSound27193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27193.moment H = canonicalOutput27193.moment H :=
  canonical_of_padded canonicalInput27193 canonicalOutput27193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27194 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27194 : ExponentCode := normalNode8361

theorem canonicalSound27194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27194.moment H = canonicalOutput27194.moment H :=
  canonical_of_padded canonicalInput27194 canonicalOutput27194 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput27195 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27195 : ExponentCode := normalNode11165

theorem canonicalSound27195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27195.moment H = canonicalOutput27195.moment H :=
  canonical_of_padded canonicalInput27195 canonicalOutput27195 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27196 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput27196 : ExponentCode := normalNode10415

theorem canonicalSound27196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27196.moment H = canonicalOutput27196.moment H :=
  canonical_of_padded canonicalInput27196 canonicalOutput27196 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput27197 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput27197 : ExponentCode := normalNode10371

theorem canonicalSound27197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27197.moment H = canonicalOutput27197.moment H :=
  canonical_of_padded canonicalInput27197 canonicalOutput27197 (by decide) (by decide)
    ⟨false, false, canonicalPermutation262, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput27198 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput27198 : ExponentCode := normalNode10415

theorem canonicalSound27198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27198.moment H = canonicalOutput27198.moment H :=
  canonical_of_padded canonicalInput27198 canonicalOutput27198 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput27199 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27199 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound27199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27199.moment H = canonicalOutput27199.moment H :=
  canonical_of_padded canonicalInput27199 canonicalOutput27199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation19⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
