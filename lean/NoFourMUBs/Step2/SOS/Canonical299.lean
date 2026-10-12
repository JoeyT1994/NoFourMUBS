import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19136 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput19136 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound19136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19136.moment H = canonicalOutput19136.moment H :=
  canonical_of_padded canonicalInput19136 canonicalOutput19136 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19137 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 3, 0, -3], ![0, -2, -1, 3], ![1, 0, -2, 1]]⟩

def canonicalOutput19137 : ExponentCode := normalNode9578

theorem canonicalSound19137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19137.moment H = canonicalOutput19137.moment H :=
  canonical_of_padded canonicalInput19137 canonicalOutput19137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19138 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 3, 0, -3], ![0, -1, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput19138 : ExponentCode := normalNode9581

theorem canonicalSound19138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19138.moment H = canonicalOutput19138.moment H :=
  canonical_of_padded canonicalInput19138 canonicalOutput19138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19139 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, 4, -2, -2], ![1, -3, -1, 3]]⟩

def canonicalOutput19139 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩

theorem canonicalSound19139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19139.moment H = canonicalOutput19139.moment H :=
  canonical_of_padded canonicalInput19139 canonicalOutput19139 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19140 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![1, -3, 1, 1], ![0, 4, -4, 0]]⟩

def canonicalOutput19140 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩

theorem canonicalSound19140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19140.moment H = canonicalOutput19140.moment H :=
  canonical_of_padded canonicalInput19140 canonicalOutput19140 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19141 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![1, -2, -2, 3], ![0, 3, -1, -2]]⟩

def canonicalOutput19141 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound19141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19141.moment H = canonicalOutput19141.moment H :=
  canonical_of_padded canonicalInput19141 canonicalOutput19141 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19142 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![1, -2, 0, 1], ![0, 0, -2, 2], ![0, 3, -1, -2]]⟩

def canonicalOutput19142 : ExponentCode := normalNode7839

theorem canonicalSound19142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19142.moment H = canonicalOutput19142.moment H :=
  canonical_of_padded canonicalInput19142 canonicalOutput19142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19143 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![1, -2, 2, -1], ![0, 3, -5, 2]]⟩

def canonicalOutput19143 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound19143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19143.moment H = canonicalOutput19143.moment H :=
  canonical_of_padded canonicalInput19143 canonicalOutput19143 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19144 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![1, -1, 1, -1], ![0, 2, -4, 2]]⟩

def canonicalOutput19144 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound19144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19144.moment H = canonicalOutput19144.moment H :=
  canonical_of_padded canonicalInput19144 canonicalOutput19144 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19145 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![1, -1, 2, -2], ![0, 2, -5, 3]]⟩

def canonicalOutput19145 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound19145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19145.moment H = canonicalOutput19145.moment H :=
  canonical_of_padded canonicalInput19145 canonicalOutput19145 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19146 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![1, 2, 0, -3], ![0, -1, -3, 4]]⟩

def canonicalOutput19146 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound19146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19146.moment H = canonicalOutput19146.moment H :=
  canonical_of_padded canonicalInput19146 canonicalOutput19146 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19147 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![2, -3, 1, 0], ![-1, 4, -4, 1]]⟩

def canonicalOutput19147 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound19147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19147.moment H = canonicalOutput19147.moment H :=
  canonical_of_padded canonicalInput19147 canonicalOutput19147 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19148 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![2, -2, 0, 0], ![-1, 3, -3, 1]]⟩

def canonicalOutput19148 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node170⟩

theorem canonicalSound19148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19148.moment H = canonicalOutput19148.moment H :=
  canonical_of_padded canonicalInput19148 canonicalOutput19148 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19149 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![2, -1, 0, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput19149 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node223⟩

theorem canonicalSound19149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19149.moment H = canonicalOutput19149.moment H :=
  canonical_of_padded canonicalInput19149 canonicalOutput19149 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19150 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![2, -1, 1, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput19150 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound19150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19150.moment H = canonicalOutput19150.moment H :=
  canonical_of_padded canonicalInput19150 canonicalOutput19150 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19151 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![3, -2, 0, -1], ![-2, 3, -3, 2]]⟩

def canonicalOutput19151 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound19151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19151.moment H = canonicalOutput19151.moment H :=
  canonical_of_padded canonicalInput19151 canonicalOutput19151 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19152 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![3, -1, 0, -2], ![-2, 2, -3, 3]]⟩

def canonicalOutput19152 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound19152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19152.moment H = canonicalOutput19152.moment H :=
  canonical_of_padded canonicalInput19152 canonicalOutput19152 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19153 : ExponentCode := ⟨5, 4, ![![-1, -1, 4, -2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput19153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2507⟩

theorem canonicalSound19153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19153.moment H = canonicalOutput19153.moment H :=
  canonical_of_padded canonicalInput19153 canonicalOutput19153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19154 : ExponentCode := ⟨4, 4, ![![-1, -1, 4, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput19154 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound19154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19154.moment H = canonicalOutput19154.moment H :=
  canonical_of_padded canonicalInput19154 canonicalOutput19154 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19155 : ExponentCode := ⟨3, 4, ![![-1, -1, 4, -2], ![0, 2, -1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput19155 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound19155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19155.moment H = canonicalOutput19155.moment H :=
  canonical_of_padded canonicalInput19155 canonicalOutput19155 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19156 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, -1, 2, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput19156 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node142⟩

theorem canonicalSound19156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19156.moment H = canonicalOutput19156.moment H :=
  canonical_of_padded canonicalInput19156 canonicalOutput19156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19157 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, -1, 3, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput19157 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node77⟩

theorem canonicalSound19157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19157.moment H = canonicalOutput19157.moment H :=
  canonical_of_padded canonicalInput19157 canonicalOutput19157 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19158 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, 0, 2, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput19158 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩

theorem canonicalSound19158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19158.moment H = canonicalOutput19158.moment H :=
  canonical_of_padded canonicalInput19158 canonicalOutput19158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19159 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, 0, 3, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput19159 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound19159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19159.moment H = canonicalOutput19159.moment H :=
  canonical_of_padded canonicalInput19159 canonicalOutput19159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19160 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, 1, 1, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput19160 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node122⟩

theorem canonicalSound19160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19160.moment H = canonicalOutput19160.moment H :=
  canonical_of_padded canonicalInput19160 canonicalOutput19160 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19161 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, 1, 2, -3], ![1, -1, 2, -2]]⟩

def canonicalOutput19161 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node71⟩

theorem canonicalSound19161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19161.moment H = canonicalOutput19161.moment H :=
  canonical_of_padded canonicalInput19161 canonicalOutput19161 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19162 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![0, 1, 3, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput19162 : ExponentCode := normalNode5979

theorem canonicalSound19162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19162.moment H = canonicalOutput19162.moment H :=
  canonical_of_padded canonicalInput19162 canonicalOutput19162 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19163 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![1, -1, 2, -2], ![0, 1, 2, -3]]⟩

def canonicalOutput19163 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node71⟩

theorem canonicalSound19163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19163.moment H = canonicalOutput19163.moment H :=
  canonical_of_padded canonicalInput19163 canonicalOutput19163 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19164 : ExponentCode := ⟨3, 4, ![![-1, 0, -4, 5], ![1, -1, 3, -3], ![0, 1, 1, -2]]⟩

def canonicalOutput19164 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node122⟩

theorem canonicalSound19164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19164.moment H = canonicalOutput19164.moment H :=
  canonical_of_padded canonicalInput19164 canonicalOutput19164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19165 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19165 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1730⟩

theorem canonicalSound19165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19165.moment H = canonicalOutput19165.moment H :=
  canonical_of_padded canonicalInput19165 canonicalOutput19165 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19166 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19166 : ExponentCode := normalNode2488

theorem canonicalSound19166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19166.moment H = canonicalOutput19166.moment H :=
  canonical_of_padded canonicalInput19166 canonicalOutput19166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19167 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, -1, 1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19167 : ExponentCode := normalNode7867

theorem canonicalSound19167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19167.moment H = canonicalOutput19167.moment H :=
  canonical_of_padded canonicalInput19167 canonicalOutput19167 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19168 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, -1, 2, -2, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19168 : ExponentCode := normalNode2828

theorem canonicalSound19168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19168.moment H = canonicalOutput19168.moment H :=
  canonical_of_padded canonicalInput19168 canonicalOutput19168 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19169 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19169 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩

theorem canonicalSound19169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19169.moment H = canonicalOutput19169.moment H :=
  canonical_of_padded canonicalInput19169 canonicalOutput19169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19170 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound19170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19170.moment H = canonicalOutput19170.moment H :=
  canonical_of_padded canonicalInput19170 canonicalOutput19170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19171 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, -1, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput19171 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1788⟩

theorem canonicalSound19171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19171.moment H = canonicalOutput19171.moment H :=
  canonical_of_padded canonicalInput19171 canonicalOutput19171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19172 : ExponentCode := ⟨4, 5, ![![-1, 0, -3, 3, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19172 : ExponentCode := normalNode1796

theorem canonicalSound19172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19172.moment H = canonicalOutput19172.moment H :=
  canonical_of_padded canonicalInput19172 canonicalOutput19172 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19173 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput19173 : ExponentCode := normalNode7385

theorem canonicalSound19173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19173.moment H = canonicalOutput19173.moment H :=
  canonical_of_padded canonicalInput19173 canonicalOutput19173 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19174 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput19174 : ExponentCode := normalNode7852

theorem canonicalSound19174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19174.moment H = canonicalOutput19174.moment H :=
  canonical_of_padded canonicalInput19174 canonicalOutput19174 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19175 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput19175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node992⟩

theorem canonicalSound19175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19175.moment H = canonicalOutput19175.moment H :=
  canonical_of_padded canonicalInput19175 canonicalOutput19175 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19176 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19176 : ExponentCode := normalNode9037

theorem canonicalSound19176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19176.moment H = canonicalOutput19176.moment H :=
  canonical_of_padded canonicalInput19176 canonicalOutput19176 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19177 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 2, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput19177 : ExponentCode := normalNode7409

theorem canonicalSound19177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19177.moment H = canonicalOutput19177.moment H :=
  canonical_of_padded canonicalInput19177 canonicalOutput19177 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19178 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 2, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput19178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound19178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19178.moment H = canonicalOutput19178.moment H :=
  canonical_of_padded canonicalInput19178 canonicalOutput19178 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19179 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 2, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput19179 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1019⟩

theorem canonicalSound19179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19179.moment H = canonicalOutput19179.moment H :=
  canonical_of_padded canonicalInput19179 canonicalOutput19179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19180 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput19180 : ExponentCode := normalNode7920

theorem canonicalSound19180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19180.moment H = canonicalOutput19180.moment H :=
  canonical_of_padded canonicalInput19180 canonicalOutput19180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19181 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19181 : ExponentCode := normalNode7921

theorem canonicalSound19181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19181.moment H = canonicalOutput19181.moment H :=
  canonical_of_padded canonicalInput19181 canonicalOutput19181 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19182 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19182 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2677⟩

theorem canonicalSound19182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19182.moment H = canonicalOutput19182.moment H :=
  canonical_of_padded canonicalInput19182 canonicalOutput19182 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19183 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput19183 : ExponentCode := normalNode7893

theorem canonicalSound19183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19183.moment H = canonicalOutput19183.moment H :=
  canonical_of_padded canonicalInput19183 canonicalOutput19183 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19184 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput19184 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩

theorem canonicalSound19184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19184.moment H = canonicalOutput19184.moment H :=
  canonical_of_padded canonicalInput19184 canonicalOutput19184 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19185 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 3, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput19185 : ExponentCode := normalNode7922

theorem canonicalSound19185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19185.moment H = canonicalOutput19185.moment H :=
  canonical_of_padded canonicalInput19185 canonicalOutput19185 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19186 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, -1, 4, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19186 : ExponentCode := normalNode7431

theorem canonicalSound19186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19186.moment H = canonicalOutput19186.moment H :=
  canonical_of_padded canonicalInput19186 canonicalOutput19186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19187 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, -1, 4, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19187 : ExponentCode := normalNode7432

theorem canonicalSound19187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19187.moment H = canonicalOutput19187.moment H :=
  canonical_of_padded canonicalInput19187 canonicalOutput19187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19188 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 4, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19188 : ExponentCode := normalNode7434

theorem canonicalSound19188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19188.moment H = canonicalOutput19188.moment H :=
  canonical_of_padded canonicalInput19188 canonicalOutput19188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19189 : ExponentCode := ⟨4, 4, ![![-1, 0, -3, 4], ![-1, -1, 4, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput19189 : ExponentCode := normalNode7433

theorem canonicalSound19189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19189.moment H = canonicalOutput19189.moment H :=
  canonical_of_padded canonicalInput19189 canonicalOutput19189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19190 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19190 : ExponentCode := normalNode10563

theorem canonicalSound19190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19190.moment H = canonicalOutput19190.moment H :=
  canonical_of_padded canonicalInput19190 canonicalOutput19190 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19191 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput19191 : ExponentCode := normalNode10583

theorem canonicalSound19191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19191.moment H = canonicalOutput19191.moment H :=
  canonical_of_padded canonicalInput19191 canonicalOutput19191 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19192 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 0, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19192 : ExponentCode := normalNode10243

theorem canonicalSound19192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19192.moment H = canonicalOutput19192.moment H :=
  canonical_of_padded canonicalInput19192 canonicalOutput19192 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19193 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19193 : ExponentCode := normalNode10638

theorem canonicalSound19193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19193.moment H = canonicalOutput19193.moment H :=
  canonical_of_padded canonicalInput19193 canonicalOutput19193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19194 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19194 : ExponentCode := normalNode10562

theorem canonicalSound19194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19194.moment H = canonicalOutput19194.moment H :=
  canonical_of_padded canonicalInput19194 canonicalOutput19194 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19195 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19195 : ExponentCode := normalNode9907

theorem canonicalSound19195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19195.moment H = canonicalOutput19195.moment H :=
  canonical_of_padded canonicalInput19195 canonicalOutput19195 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19196 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19196 : ExponentCode := normalNode10661

theorem canonicalSound19196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19196.moment H = canonicalOutput19196.moment H :=
  canonical_of_padded canonicalInput19196 canonicalOutput19196 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19197 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput19197 : ExponentCode := normalNode10639

theorem canonicalSound19197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19197.moment H = canonicalOutput19197.moment H :=
  canonical_of_padded canonicalInput19197 canonicalOutput19197 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19198 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19198 : ExponentCode := normalNode10281

theorem canonicalSound19198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19198.moment H = canonicalOutput19198.moment H :=
  canonical_of_padded canonicalInput19198 canonicalOutput19198 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19199 : ExponentCode := ⟨5, 4, ![![-1, 0, -3, 4], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19199 : ExponentCode := normalNode9920

theorem canonicalSound19199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19199.moment H = canonicalOutput19199.moment H :=
  canonical_of_padded canonicalInput19199 canonicalOutput19199 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
