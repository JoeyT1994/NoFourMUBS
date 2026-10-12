import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24064 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, 0, -2], ![-1, 1, 0, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput24064 : ExponentCode := normalNode6618

theorem canonicalSound24064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24064.moment H = canonicalOutput24064.moment H :=
  canonical_of_padded canonicalInput24064 canonicalOutput24064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24065 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput24065 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound24065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24065.moment H = canonicalOutput24065.moment H :=
  canonical_of_padded canonicalInput24065 canonicalOutput24065 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24066 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![-1, 1, 0, 1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput24066 : ExponentCode := normalNode10766

theorem canonicalSound24066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24066.moment H = canonicalOutput24066.moment H :=
  canonical_of_padded canonicalInput24066 canonicalOutput24066 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24067 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![0, 0, -2, 0, 2]]⟩

def canonicalOutput24067 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound24067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24067.moment H = canonicalOutput24067.moment H :=
  canonical_of_padded canonicalInput24067 canonicalOutput24067 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24068 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, -1, 1, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput24068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1348⟩

theorem canonicalSound24068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24068.moment H = canonicalOutput24068.moment H :=
  canonical_of_padded canonicalInput24068 canonicalOutput24068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24069 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput24069 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound24069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24069.moment H = canonicalOutput24069.moment H :=
  canonical_of_padded canonicalInput24069 canonicalOutput24069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24070 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput24070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound24070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24070.moment H = canonicalOutput24070.moment H :=
  canonical_of_padded canonicalInput24070 canonicalOutput24070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24071 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, -1, 3, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24071 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node979⟩

theorem canonicalSound24071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24071.moment H = canonicalOutput24071.moment H :=
  canonical_of_padded canonicalInput24071 canonicalOutput24071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24072 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, -2, 3], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput24072 : ExponentCode := normalNode9359

theorem canonicalSound24072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24072.moment H = canonicalOutput24072.moment H :=
  canonical_of_padded canonicalInput24072 canonicalOutput24072 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24073 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput24073 : ExponentCode := normalNode10215

theorem canonicalSound24073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24073.moment H = canonicalOutput24073.moment H :=
  canonical_of_padded canonicalInput24073 canonicalOutput24073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24074 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24074 : ExponentCode := normalNode8986

theorem canonicalSound24074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24074.moment H = canonicalOutput24074.moment H :=
  canonical_of_padded canonicalInput24074 canonicalOutput24074 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24075 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24075 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound24075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24075.moment H = canonicalOutput24075.moment H :=
  canonical_of_padded canonicalInput24075 canonicalOutput24075 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24076 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 0, 1, 0], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24076 : ExponentCode := normalNode10569

theorem canonicalSound24076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24076.moment H = canonicalOutput24076.moment H :=
  canonical_of_padded canonicalInput24076 canonicalOutput24076 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24077 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound24077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24077.moment H = canonicalOutput24077.moment H :=
  canonical_of_padded canonicalInput24077 canonicalOutput24077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24078 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24078 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound24078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24078.moment H = canonicalOutput24078.moment H :=
  canonical_of_padded canonicalInput24078 canonicalOutput24078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24079 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24079 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound24079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24079.moment H = canonicalOutput24079.moment H :=
  canonical_of_padded canonicalInput24079 canonicalOutput24079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24080 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput24080 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1305⟩

theorem canonicalSound24080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24080.moment H = canonicalOutput24080.moment H :=
  canonical_of_padded canonicalInput24080 canonicalOutput24080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24081 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24081 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound24081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24081.moment H = canonicalOutput24081.moment H :=
  canonical_of_padded canonicalInput24081 canonicalOutput24081 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24082 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 3, -2], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput24082 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound24082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24082.moment H = canonicalOutput24082.moment H :=
  canonical_of_padded canonicalInput24082 canonicalOutput24082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24083 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 3, -2], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput24083 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound24083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24083.moment H = canonicalOutput24083.moment H :=
  canonical_of_padded canonicalInput24083 canonicalOutput24083 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24084 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24084 : ExponentCode := normalNode10912

theorem canonicalSound24084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24084.moment H = canonicalOutput24084.moment H :=
  canonical_of_padded canonicalInput24084 canonicalOutput24084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24085 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 0, 4, -3], ![0, 1, -3, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput24085 : ExponentCode := normalNode9370

theorem canonicalSound24085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24085.moment H = canonicalOutput24085.moment H :=
  canonical_of_padded canonicalInput24085 canonicalOutput24085 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24086 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, -3, 3], ![0, 1, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput24086 : ExponentCode := normalNode10245

theorem canonicalSound24086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24086.moment H = canonicalOutput24086.moment H :=
  canonical_of_padded canonicalInput24086 canonicalOutput24086 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24087 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, -3, 3], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput24087 : ExponentCode := normalNode10547

theorem canonicalSound24087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24087.moment H = canonicalOutput24087.moment H :=
  canonical_of_padded canonicalInput24087 canonicalOutput24087 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24088 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, -2, 2], ![0, 0, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput24088 : ExponentCode := normalNode9117

theorem canonicalSound24088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24088.moment H = canonicalOutput24088.moment H :=
  canonical_of_padded canonicalInput24088 canonicalOutput24088 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24089 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24089 : ExponentCode := normalNode9449

theorem canonicalSound24089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24089.moment H = canonicalOutput24089.moment H :=
  canonical_of_padded canonicalInput24089 canonicalOutput24089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24090 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput24090 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound24090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24090.moment H = canonicalOutput24090.moment H :=
  canonical_of_padded canonicalInput24090 canonicalOutput24090 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24091 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput24091 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1301⟩

theorem canonicalSound24091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24091.moment H = canonicalOutput24091.moment H :=
  canonical_of_padded canonicalInput24091 canonicalOutput24091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24092 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput24092 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1318⟩

theorem canonicalSound24092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24092.moment H = canonicalOutput24092.moment H :=
  canonical_of_padded canonicalInput24092 canonicalOutput24092 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24093 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24093 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound24093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24093.moment H = canonicalOutput24093.moment H :=
  canonical_of_padded canonicalInput24093 canonicalOutput24093 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24094 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput24094 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound24094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24094.moment H = canonicalOutput24094.moment H :=
  canonical_of_padded canonicalInput24094 canonicalOutput24094 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24095 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput24095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1351⟩

theorem canonicalSound24095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24095.moment H = canonicalOutput24095.moment H :=
  canonical_of_padded canonicalInput24095 canonicalOutput24095 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24096 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput24096 : ExponentCode := normalNode9579

theorem canonicalSound24096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24096.moment H = canonicalOutput24096.moment H :=
  canonical_of_padded canonicalInput24096 canonicalOutput24096 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24097 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24097 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound24097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24097.moment H = canonicalOutput24097.moment H :=
  canonical_of_padded canonicalInput24097 canonicalOutput24097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24098 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![-1, 3, 2, -4], ![0, -1, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput24098 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩

theorem canonicalSound24098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24098.moment H = canonicalOutput24098.moment H :=
  canonical_of_padded canonicalInput24098 canonicalOutput24098 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24099 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput24099 : ExponentCode := normalNode498

theorem canonicalSound24099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24099.moment H = canonicalOutput24099.moment H :=
  canonical_of_padded canonicalInput24099 canonicalOutput24099 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24100 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, 1, 3, -2]]⟩

def canonicalOutput24100 : ExponentCode := normalNode2470

theorem canonicalSound24100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24100.moment H = canonicalOutput24100.moment H :=
  canonical_of_padded canonicalInput24100 canonicalOutput24100 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24101 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput24101 : ExponentCode := normalNode2935

theorem canonicalSound24101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24101.moment H = canonicalOutput24101.moment H :=
  canonical_of_padded canonicalInput24101 canonicalOutput24101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24102 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 2, -1, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput24102 : ExponentCode := normalNode395

theorem canonicalSound24102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24102.moment H = canonicalOutput24102.moment H :=
  canonical_of_padded canonicalInput24102 canonicalOutput24102 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24103 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 1, 0, 1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput24103 : ExponentCode := normalNode4429

theorem canonicalSound24103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24103.moment H = canonicalOutput24103.moment H :=
  canonical_of_padded canonicalInput24103 canonicalOutput24103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24104 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 1, -1, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput24104 : ExponentCode := normalNode831

theorem canonicalSound24104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24104.moment H = canonicalOutput24104.moment H :=
  canonical_of_padded canonicalInput24104 canonicalOutput24104 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24105 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput24105 : ExponentCode := normalNode2422

theorem canonicalSound24105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24105.moment H = canonicalOutput24105.moment H :=
  canonical_of_padded canonicalInput24105 canonicalOutput24105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24106 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput24106 : ExponentCode := normalNode6913

theorem canonicalSound24106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24106.moment H = canonicalOutput24106.moment H :=
  canonical_of_padded canonicalInput24106 canonicalOutput24106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24107 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput24107 : ExponentCode := normalNode6198

theorem canonicalSound24107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24107.moment H = canonicalOutput24107.moment H :=
  canonical_of_padded canonicalInput24107 canonicalOutput24107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24108 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput24108 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound24108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24108.moment H = canonicalOutput24108.moment H :=
  canonical_of_padded canonicalInput24108 canonicalOutput24108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24109 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 3, -1, -2]]⟩

def canonicalOutput24109 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound24109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24109.moment H = canonicalOutput24109.moment H :=
  canonical_of_padded canonicalInput24109 canonicalOutput24109 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24110 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, -1, 3, -2], ![0, 1, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput24110 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound24110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24110.moment H = canonicalOutput24110.moment H :=
  canonical_of_padded canonicalInput24110 canonicalOutput24110 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24111 : ExponentCode := ⟨3, 4, ![![0, -2, 0, 2], ![0, -1, 3, -2], ![0, 3, -3, 0]]⟩

def canonicalOutput24111 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound24111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24111.moment H = canonicalOutput24111.moment H :=
  canonical_of_padded canonicalInput24111 canonicalOutput24111 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24112 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, -3, 3], ![0, 0, 2, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput24112 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound24112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24112.moment H = canonicalOutput24112.moment H :=
  canonical_of_padded canonicalInput24112 canonicalOutput24112 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24113 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput24113 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node192⟩

theorem canonicalSound24113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24113.moment H = canonicalOutput24113.moment H :=
  canonical_of_padded canonicalInput24113 canonicalOutput24113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24114 : ExponentCode := ⟨3, 4, ![![0, -2, 0, 2], ![0, 0, -3, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput24114 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node28⟩

theorem canonicalSound24114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24114.moment H = canonicalOutput24114.moment H :=
  canonical_of_padded canonicalInput24114 canonicalOutput24114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24115 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput24115 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node197⟩

theorem canonicalSound24115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24115.moment H = canonicalOutput24115.moment H :=
  canonical_of_padded canonicalInput24115 canonicalOutput24115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24116 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput24116 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound24116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24116.moment H = canonicalOutput24116.moment H :=
  canonical_of_padded canonicalInput24116 canonicalOutput24116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24117 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput24117 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound24117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24117.moment H = canonicalOutput24117.moment H :=
  canonical_of_padded canonicalInput24117 canonicalOutput24117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24118 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput24118 : ExponentCode := normalNode10215

theorem canonicalSound24118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24118.moment H = canonicalOutput24118.moment H :=
  canonical_of_padded canonicalInput24118 canonicalOutput24118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24119 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24119 : ExponentCode := normalNode10526

theorem canonicalSound24119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24119.moment H = canonicalOutput24119.moment H :=
  canonical_of_padded canonicalInput24119 canonicalOutput24119 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24120 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput24120 : ExponentCode := normalNode10863

theorem canonicalSound24120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24120.moment H = canonicalOutput24120.moment H :=
  canonical_of_padded canonicalInput24120 canonicalOutput24120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24121 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput24121 : ExponentCode := normalNode1762

theorem canonicalSound24121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24121.moment H = canonicalOutput24121.moment H :=
  canonical_of_padded canonicalInput24121 canonicalOutput24121 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24122 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput24122 : ExponentCode := normalNode3202

theorem canonicalSound24122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24122.moment H = canonicalOutput24122.moment H :=
  canonical_of_padded canonicalInput24122 canonicalOutput24122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24123 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -1, 1, -2], ![-2, 2, 2, -2]]⟩

def canonicalOutput24123 : ExponentCode := normalNode2770

theorem canonicalSound24123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24123.moment H = canonicalOutput24123.moment H :=
  canonical_of_padded canonicalInput24123 canonicalOutput24123 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24124 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, 0, -1, 1]]⟩

def canonicalOutput24124 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node384⟩

theorem canonicalSound24124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24124.moment H = canonicalOutput24124.moment H :=
  canonical_of_padded canonicalInput24124 canonicalOutput24124 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24125 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput24125 : ExponentCode := normalNode1761

theorem canonicalSound24125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24125.moment H = canonicalOutput24125.moment H :=
  canonical_of_padded canonicalInput24125 canonicalOutput24125 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24126 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24126 : ExponentCode := normalNode4704

theorem canonicalSound24126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24126.moment H = canonicalOutput24126.moment H :=
  canonical_of_padded canonicalInput24126 canonicalOutput24126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24127 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput24127 : ExponentCode := normalNode5728

theorem canonicalSound24127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24127.moment H = canonicalOutput24127.moment H :=
  canonical_of_padded canonicalInput24127 canonicalOutput24127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
