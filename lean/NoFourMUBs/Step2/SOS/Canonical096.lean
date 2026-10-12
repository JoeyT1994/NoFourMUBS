import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6144 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6144 : ExponentCode := normalNode10552

theorem canonicalSound6144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6144.moment H = canonicalOutput6144.moment H :=
  canonical_of_padded canonicalInput6144 canonicalOutput6144 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6145 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6145 : ExponentCode := normalNode10552

theorem canonicalSound6145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6145.moment H = canonicalOutput6145.moment H :=
  canonical_of_padded canonicalInput6145 canonicalOutput6145 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6146 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput6146 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1178⟩

theorem canonicalSound6146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6146.moment H = canonicalOutput6146.moment H :=
  canonical_of_padded canonicalInput6146 canonicalOutput6146 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6147 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6147 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2596⟩

theorem canonicalSound6147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6147.moment H = canonicalOutput6147.moment H :=
  canonical_of_padded canonicalInput6147 canonicalOutput6147 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6148 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6148 : ExponentCode := normalNode9881

theorem canonicalSound6148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6148.moment H = canonicalOutput6148.moment H :=
  canonical_of_padded canonicalInput6148 canonicalOutput6148 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6149 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6149 : ExponentCode := normalNode9881

theorem canonicalSound6149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6149.moment H = canonicalOutput6149.moment H :=
  canonical_of_padded canonicalInput6149 canonicalOutput6149 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6150 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput6150 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1189⟩

theorem canonicalSound6150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6150.moment H = canonicalOutput6150.moment H :=
  canonical_of_padded canonicalInput6150 canonicalOutput6150 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6151 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6151 : ExponentCode := normalNode9684

theorem canonicalSound6151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6151.moment H = canonicalOutput6151.moment H :=
  canonical_of_padded canonicalInput6151 canonicalOutput6151 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6152 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6152 : ExponentCode := normalNode11053

theorem canonicalSound6152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6152.moment H = canonicalOutput6152.moment H :=
  canonical_of_padded canonicalInput6152 canonicalOutput6152 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6153 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩

theorem canonicalSound6153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6153.moment H = canonicalOutput6153.moment H :=
  canonical_of_padded canonicalInput6153 canonicalOutput6153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6154 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6154 : ExponentCode := normalNode3229

theorem canonicalSound6154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6154.moment H = canonicalOutput6154.moment H :=
  canonical_of_padded canonicalInput6154 canonicalOutput6154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6155 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput6155 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1155⟩

theorem canonicalSound6155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6155.moment H = canonicalOutput6155.moment H :=
  canonical_of_padded canonicalInput6155 canonicalOutput6155 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6156 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6156 : ExponentCode := normalNode10352

theorem canonicalSound6156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6156.moment H = canonicalOutput6156.moment H :=
  canonical_of_padded canonicalInput6156 canonicalOutput6156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6157 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6157 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩

theorem canonicalSound6157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6157.moment H = canonicalOutput6157.moment H :=
  canonical_of_padded canonicalInput6157 canonicalOutput6157 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6158 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput6158 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node998⟩

theorem canonicalSound6158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6158.moment H = canonicalOutput6158.moment H :=
  canonical_of_padded canonicalInput6158 canonicalOutput6158 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6159 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6159 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound6159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6159.moment H = canonicalOutput6159.moment H :=
  canonical_of_padded canonicalInput6159 canonicalOutput6159 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6160 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6160 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1295⟩

theorem canonicalSound6160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6160.moment H = canonicalOutput6160.moment H :=
  canonical_of_padded canonicalInput6160 canonicalOutput6160 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6161 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6161 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1295⟩

theorem canonicalSound6161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6161.moment H = canonicalOutput6161.moment H :=
  canonical_of_padded canonicalInput6161 canonicalOutput6161 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6162 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6162 : ExponentCode := normalNode10239

theorem canonicalSound6162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6162.moment H = canonicalOutput6162.moment H :=
  canonical_of_padded canonicalInput6162 canonicalOutput6162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6163 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6163 : ExponentCode := normalNode10831

theorem canonicalSound6163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6163.moment H = canonicalOutput6163.moment H :=
  canonical_of_padded canonicalInput6163 canonicalOutput6163 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6164 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6164 : ExponentCode := normalNode10831

theorem canonicalSound6164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6164.moment H = canonicalOutput6164.moment H :=
  canonical_of_padded canonicalInput6164 canonicalOutput6164 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6165 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1295⟩

theorem canonicalSound6165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6165.moment H = canonicalOutput6165.moment H :=
  canonical_of_padded canonicalInput6165 canonicalOutput6165 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6166 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6166 : ExponentCode := normalNode3240

theorem canonicalSound6166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6166.moment H = canonicalOutput6166.moment H :=
  canonical_of_padded canonicalInput6166 canonicalOutput6166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6167 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput6167 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1461⟩

theorem canonicalSound6167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6167.moment H = canonicalOutput6167.moment H :=
  canonical_of_padded canonicalInput6167 canonicalOutput6167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6168 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6168 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1468⟩

theorem canonicalSound6168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6168.moment H = canonicalOutput6168.moment H :=
  canonical_of_padded canonicalInput6168 canonicalOutput6168 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6169 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6169 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2749⟩

theorem canonicalSound6169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6169.moment H = canonicalOutput6169.moment H :=
  canonical_of_padded canonicalInput6169 canonicalOutput6169 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6170 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput6170 : ExponentCode := normalNode10568

theorem canonicalSound6170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6170.moment H = canonicalOutput6170.moment H :=
  canonical_of_padded canonicalInput6170 canonicalOutput6170 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6171 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6171 : ExponentCode := normalNode9912

theorem canonicalSound6171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6171.moment H = canonicalOutput6171.moment H :=
  canonical_of_padded canonicalInput6171 canonicalOutput6171 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6172 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput6172 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩

theorem canonicalSound6172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6172.moment H = canonicalOutput6172.moment H :=
  canonical_of_padded canonicalInput6172 canonicalOutput6172 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6173 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1476⟩

theorem canonicalSound6173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6173.moment H = canonicalOutput6173.moment H :=
  canonical_of_padded canonicalInput6173 canonicalOutput6173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6174 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6174 : ExponentCode := normalNode3248

theorem canonicalSound6174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6174.moment H = canonicalOutput6174.moment H :=
  canonical_of_padded canonicalInput6174 canonicalOutput6174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6175 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput6175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1155⟩

theorem canonicalSound6175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6175.moment H = canonicalOutput6175.moment H :=
  canonical_of_padded canonicalInput6175 canonicalOutput6175 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6176 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput6176 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code628

theorem canonicalSound6176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6176.moment H = canonicalOutput6176.moment H :=
  canonical_of_padded canonicalInput6176 canonicalOutput6176 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6177 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6177 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node940⟩

theorem canonicalSound6177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6177.moment H = canonicalOutput6177.moment H :=
  canonical_of_padded canonicalInput6177 canonicalOutput6177 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6178 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound6178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6178.moment H = canonicalOutput6178.moment H :=
  canonical_of_padded canonicalInput6178 canonicalOutput6178 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6179 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6179 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound6179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6179.moment H = canonicalOutput6179.moment H :=
  canonical_of_padded canonicalInput6179 canonicalOutput6179 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6180 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, 1, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6180 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node940⟩

theorem canonicalSound6180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6180.moment H = canonicalOutput6180.moment H :=
  canonical_of_padded canonicalInput6180 canonicalOutput6180 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6181 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, 2, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput6181 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code628

theorem canonicalSound6181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6181.moment H = canonicalOutput6181.moment H :=
  canonical_of_padded canonicalInput6181 canonicalOutput6181 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6182 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput6182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1297⟩

theorem canonicalSound6182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6182.moment H = canonicalOutput6182.moment H :=
  canonical_of_padded canonicalInput6182 canonicalOutput6182 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6183 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound6183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6183.moment H = canonicalOutput6183.moment H :=
  canonical_of_padded canonicalInput6183 canonicalOutput6183 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput6184 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput6184 : ExponentCode := normalNode9860

theorem canonicalSound6184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6184.moment H = canonicalOutput6184.moment H :=
  canonical_of_padded canonicalInput6184 canonicalOutput6184 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6185 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6185 : ExponentCode := normalNode9412

theorem canonicalSound6185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6185.moment H = canonicalOutput6185.moment H :=
  canonical_of_padded canonicalInput6185 canonicalOutput6185 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6186 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput6186 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1297⟩

theorem canonicalSound6186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6186.moment H = canonicalOutput6186.moment H :=
  canonical_of_padded canonicalInput6186 canonicalOutput6186 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6187 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6187 : ExponentCode := normalNode9861

theorem canonicalSound6187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6187.moment H = canonicalOutput6187.moment H :=
  canonical_of_padded canonicalInput6187 canonicalOutput6187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6188 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6188 : ExponentCode := normalNode10839

theorem canonicalSound6188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6188.moment H = canonicalOutput6188.moment H :=
  canonical_of_padded canonicalInput6188 canonicalOutput6188 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6189 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput6189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1297⟩

theorem canonicalSound6189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6189.moment H = canonicalOutput6189.moment H :=
  canonical_of_padded canonicalInput6189 canonicalOutput6189 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6190 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput6190 : ExponentCode := normalNode9860

theorem canonicalSound6190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6190.moment H = canonicalOutput6190.moment H :=
  canonical_of_padded canonicalInput6190 canonicalOutput6190 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6191 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6191 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2751⟩

theorem canonicalSound6191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6191.moment H = canonicalOutput6191.moment H :=
  canonical_of_padded canonicalInput6191 canonicalOutput6191 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6192 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6192 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound6192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6192.moment H = canonicalOutput6192.moment H :=
  canonical_of_padded canonicalInput6192 canonicalOutput6192 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6193 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6193 : ExponentCode := normalNode9862

theorem canonicalSound6193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6193.moment H = canonicalOutput6193.moment H :=
  canonical_of_padded canonicalInput6193 canonicalOutput6193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6194 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput6194 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1194⟩

theorem canonicalSound6194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6194.moment H = canonicalOutput6194.moment H :=
  canonical_of_padded canonicalInput6194 canonicalOutput6194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6195 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput6195 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code510

theorem canonicalSound6195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6195.moment H = canonicalOutput6195.moment H :=
  canonical_of_padded canonicalInput6195 canonicalOutput6195 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6196 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput6196 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code627

theorem canonicalSound6196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6196.moment H = canonicalOutput6196.moment H :=
  canonical_of_padded canonicalInput6196 canonicalOutput6196 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6197 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6197 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1004⟩

theorem canonicalSound6197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6197.moment H = canonicalOutput6197.moment H :=
  canonical_of_padded canonicalInput6197 canonicalOutput6197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6198 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput6198 : ExponentCode := normalNode9008

theorem canonicalSound6198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6198.moment H = canonicalOutput6198.moment H :=
  canonical_of_padded canonicalInput6198 canonicalOutput6198 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6199 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6199 : ExponentCode := normalNode9008

theorem canonicalSound6199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6199.moment H = canonicalOutput6199.moment H :=
  canonical_of_padded canonicalInput6199 canonicalOutput6199 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6200 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput6200 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1004⟩

theorem canonicalSound6200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6200.moment H = canonicalOutput6200.moment H :=
  canonical_of_padded canonicalInput6200 canonicalOutput6200 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6201 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, 2, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6201 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code627

theorem canonicalSound6201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6201.moment H = canonicalOutput6201.moment H :=
  canonical_of_padded canonicalInput6201 canonicalOutput6201 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6202 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, 2, 0, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput6202 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code510

theorem canonicalSound6202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6202.moment H = canonicalOutput6202.moment H :=
  canonical_of_padded canonicalInput6202 canonicalOutput6202 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6203 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6203 : ExponentCode := normalNode9656

theorem canonicalSound6203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6203.moment H = canonicalOutput6203.moment H :=
  canonical_of_padded canonicalInput6203 canonicalOutput6203 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6204 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6204 : ExponentCode := normalNode9657

theorem canonicalSound6204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6204.moment H = canonicalOutput6204.moment H :=
  canonical_of_padded canonicalInput6204 canonicalOutput6204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6205 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput6205 : ExponentCode := normalNode9658

theorem canonicalSound6205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6205.moment H = canonicalOutput6205.moment H :=
  canonical_of_padded canonicalInput6205 canonicalOutput6205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6206 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput6206 : ExponentCode := normalNode9136

theorem canonicalSound6206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6206.moment H = canonicalOutput6206.moment H :=
  canonical_of_padded canonicalInput6206 canonicalOutput6206 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6207 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6207 : ExponentCode := normalNode7434

theorem canonicalSound6207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6207.moment H = canonicalOutput6207.moment H :=
  canonical_of_padded canonicalInput6207 canonicalOutput6207 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
