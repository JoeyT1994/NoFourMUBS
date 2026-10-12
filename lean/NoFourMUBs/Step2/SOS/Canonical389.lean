import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24896 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![-1, 1, 0, 2, -2], ![1, 1, -1, -3, 2]]⟩

def canonicalOutput24896 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩

theorem canonicalSound24896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24896.moment H = canonicalOutput24896.moment H :=
  canonical_of_padded canonicalInput24896 canonicalOutput24896 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24897 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, -1, 2, 0, -1], ![-2, 1, 2, -1, 0], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput24897 : ExponentCode := normalNode4509

theorem canonicalSound24897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24897.moment H = canonicalOutput24897.moment H :=
  canonical_of_padded canonicalInput24897 canonicalOutput24897 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24898 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, -1, 2, 0, -1], ![-1, 1, 2, -1, -1], ![1, 1, -3, -1, 2]]⟩

def canonicalOutput24898 : ExponentCode := normalNode4504

theorem canonicalSound24898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24898.moment H = canonicalOutput24898.moment H :=
  canonical_of_padded canonicalInput24898 canonicalOutput24898 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24899 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, 0, 0, 1, -1], ![-1, -1, 2, -1, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput24899 : ExponentCode := normalNode7031

theorem canonicalSound24899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24899.moment H = canonicalOutput24899.moment H :=
  canonical_of_padded canonicalInput24899 canonicalOutput24899 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24900 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![-1, -1, 1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput24900 : ExponentCode := normalNode10297

theorem canonicalSound24900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24900.moment H = canonicalOutput24900.moment H :=
  canonical_of_padded canonicalInput24900 canonicalOutput24900 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24901 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![-1, -1, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput24901 : ExponentCode := normalNode10652

theorem canonicalSound24901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24901.moment H = canonicalOutput24901.moment H :=
  canonical_of_padded canonicalInput24901 canonicalOutput24901 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24902 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![-2, -1, 1, -1, 3], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput24902 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code790

theorem canonicalSound24902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24902.moment H = canonicalOutput24902.moment H :=
  canonical_of_padded canonicalInput24902 canonicalOutput24902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24903 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![-1, -1, 1, -1, 2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput24903 : ExponentCode := normalNode3991

theorem canonicalSound24903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24903.moment H = canonicalOutput24903.moment H :=
  canonical_of_padded canonicalInput24903 canonicalOutput24903 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24904 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![1, 0, 0, 1, -2], ![-2, -1, 2, -1, 2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput24904 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code667

theorem canonicalSound24904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24904.moment H = canonicalOutput24904.moment H :=
  canonical_of_padded canonicalInput24904 canonicalOutput24904 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24905 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![1, 0, 0, 1, -2], ![-1, -1, 2, -1, 1], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput24905 : ExponentCode := normalNode2520

theorem canonicalSound24905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24905.moment H = canonicalOutput24905.moment H :=
  canonical_of_padded canonicalInput24905 canonicalOutput24905 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24906 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![1, 0, 1, 0, -2], ![-2, -1, 1, -1, 3], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput24906 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code776

theorem canonicalSound24906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24906.moment H = canonicalOutput24906.moment H :=
  canonical_of_padded canonicalInput24906 canonicalOutput24906 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24907 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![1, 0, 1, 0, -2], ![-2, -1, 2, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput24907 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound24907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24907.moment H = canonicalOutput24907.moment H :=
  canonical_of_padded canonicalInput24907 canonicalOutput24907 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24908 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![1, 0, 1, 0, -2], ![-1, -1, 1, -1, 2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput24908 : ExponentCode := normalNode3994

theorem canonicalSound24908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24908.moment H = canonicalOutput24908.moment H :=
  canonical_of_padded canonicalInput24908 canonicalOutput24908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24909 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![1, 0, 1, 0, -2], ![-1, -1, 2, -1, 1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput24909 : ExponentCode := normalNode4312

theorem canonicalSound24909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24909.moment H = canonicalOutput24909.moment H :=
  canonical_of_padded canonicalInput24909 canonicalOutput24909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24910 : ExponentCode := ⟨5, 5, ![![0, -1, 0, -1, 2], ![-1, -1, 2, -1, 1], ![0, 0, 0, 2, -2], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput24910 : ExponentCode := normalNode9534

theorem canonicalSound24910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24910.moment H = canonicalOutput24910.moment H :=
  canonical_of_padded canonicalInput24910 canonicalOutput24910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24911 : ExponentCode := ⟨4, 5, ![![0, -1, 0, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput24911 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound24911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24911.moment H = canonicalOutput24911.moment H :=
  canonical_of_padded canonicalInput24911 canonicalOutput24911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput24912 : ExponentCode := ⟨4, 5, ![![0, -1, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput24912 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node621⟩

theorem canonicalSound24912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24912.moment H = canonicalOutput24912.moment H :=
  canonical_of_padded canonicalInput24912 canonicalOutput24912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24913 : ExponentCode := ⟨5, 5, ![![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![-1, 0, 0, 2, -1], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput24913 : ExponentCode := normalNode8173

theorem canonicalSound24913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24913.moment H = canonicalOutput24913.moment H :=
  canonical_of_padded canonicalInput24913 canonicalOutput24913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput24914 : ExponentCode := ⟨5, 5, ![![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![-1, 2, 0, -1, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput24914 : ExponentCode := normalNode10757

theorem canonicalSound24914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24914.moment H = canonicalOutput24914.moment H :=
  canonical_of_padded canonicalInput24914 canonicalOutput24914 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput24915 : ExponentCode := ⟨5, 5, ![![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![0, 2, 0, -1, -1], ![0, 0, -2, 1, 1]]⟩

def canonicalOutput24915 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound24915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24915.moment H = canonicalOutput24915.moment H :=
  canonical_of_padded canonicalInput24915 canonicalOutput24915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24916 : ExponentCode := ⟨4, 5, ![![0, -1, 0, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput24916 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound24916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24916.moment H = canonicalOutput24916.moment H :=
  canonical_of_padded canonicalInput24916 canonicalOutput24916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24917 : ExponentCode := ⟨4, 5, ![![0, -1, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput24917 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩

theorem canonicalSound24917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24917.moment H = canonicalOutput24917.moment H :=
  canonical_of_padded canonicalInput24917 canonicalOutput24917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24918 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-2, 0, 2, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24918 : ExponentCode := normalNode4638

theorem canonicalSound24918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24918.moment H = canonicalOutput24918.moment H :=
  canonical_of_padded canonicalInput24918 canonicalOutput24918 (by decide) (by decide)
    ⟨false, false, canonicalPermutation203, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24919 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput24919 : ExponentCode := normalNode2857

theorem canonicalSound24919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24919.moment H = canonicalOutput24919.moment H :=
  canonical_of_padded canonicalInput24919 canonicalOutput24919 (by decide) (by decide)
    ⟨false, true, canonicalPermutation112, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24920 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, 1, -1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput24920 : ExponentCode := normalNode1617

theorem canonicalSound24920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24920.moment H = canonicalOutput24920.moment H :=
  canonical_of_padded canonicalInput24920 canonicalOutput24920 (by decide) (by decide)
    ⟨false, true, canonicalPermutation112, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24921 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput24921 : ExponentCode := normalNode1497

theorem canonicalSound24921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24921.moment H = canonicalOutput24921.moment H :=
  canonical_of_padded canonicalInput24921 canonicalOutput24921 (by decide) (by decide)
    ⟨false, true, canonicalPermutation194, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24922 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, -1, -2, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput24922 : ExponentCode := normalNode2198

theorem canonicalSound24922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24922.moment H = canonicalOutput24922.moment H :=
  canonical_of_padded canonicalInput24922 canonicalOutput24922 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput24923 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, 0, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput24923 : ExponentCode := normalNode3701

theorem canonicalSound24923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24923.moment H = canonicalOutput24923.moment H :=
  canonical_of_padded canonicalInput24923 canonicalOutput24923 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation249, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput24924 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, -2, 0], ![0, 1, 2, 0, -3]]⟩

def canonicalOutput24924 : ExponentCode := normalNode1479

theorem canonicalSound24924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24924.moment H = canonicalOutput24924.moment H :=
  canonical_of_padded canonicalInput24924 canonicalOutput24924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput24925 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, 0, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput24925 : ExponentCode := normalNode1632

theorem canonicalSound24925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24925.moment H = canonicalOutput24925.moment H :=
  canonical_of_padded canonicalInput24925 canonicalOutput24925 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput24926 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![-1, 2, 0, -1, 0], ![0, 0, 2, -1, -1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput24926 : ExponentCode := normalNode1495

theorem canonicalSound24926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24926.moment H = canonicalOutput24926.moment H :=
  canonical_of_padded canonicalInput24926 canonicalOutput24926 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24927 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, -1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput24927 : ExponentCode := normalNode2851

theorem canonicalSound24927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24927.moment H = canonicalOutput24927.moment H :=
  canonical_of_padded canonicalInput24927 canonicalOutput24927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput24928 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 0, 2, 1, -2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput24928 : ExponentCode := normalNode1565

theorem canonicalSound24928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24928.moment H = canonicalOutput24928.moment H :=
  canonical_of_padded canonicalInput24928 canonicalOutput24928 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24929 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 1, 2, 0, -2], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput24929 : ExponentCode := normalNode1498

theorem canonicalSound24929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24929.moment H = canonicalOutput24929.moment H :=
  canonical_of_padded canonicalInput24929 canonicalOutput24929 (by decide) (by decide)
    ⟨false, true, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24930 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput24930 : ExponentCode := normalNode2168

theorem canonicalSound24930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24930.moment H = canonicalOutput24930.moment H :=
  canonical_of_padded canonicalInput24930 canonicalOutput24930 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput24931 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput24931 : ExponentCode := normalNode2850

theorem canonicalSound24931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24931.moment H = canonicalOutput24931.moment H :=
  canonical_of_padded canonicalInput24931 canonicalOutput24931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput24932 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput24932 : ExponentCode := normalNode3690

theorem canonicalSound24932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24932.moment H = canonicalOutput24932.moment H :=
  canonical_of_padded canonicalInput24932 canonicalOutput24932 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24933 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1], ![-1, 0, 2, 1, -2]]⟩

def canonicalOutput24933 : ExponentCode := normalNode1597

theorem canonicalSound24933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24933.moment H = canonicalOutput24933.moment H :=
  canonical_of_padded canonicalInput24933 canonicalOutput24933 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput24934 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, -2, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput24934 : ExponentCode := normalNode2150

theorem canonicalSound24934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24934.moment H = canonicalOutput24934.moment H :=
  canonical_of_padded canonicalInput24934 canonicalOutput24934 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput24935 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput24935 : ExponentCode := normalNode4579

theorem canonicalSound24935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24935.moment H = canonicalOutput24935.moment H :=
  canonical_of_padded canonicalInput24935 canonicalOutput24935 (by decide) (by decide)
    ⟨false, true, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput24936 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 0, 2], ![1, 0, -1, 0, 0], ![-1, 1, 0, -1, 1], ![0, 1, -1, 2, -2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput24936 : ExponentCode := normalNode1584

theorem canonicalSound24936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24936.moment H = canonicalOutput24936.moment H :=
  canonical_of_padded canonicalInput24936 canonicalOutput24936 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput24937 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![-1, 0, 1, -1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput24937 : ExponentCode := normalNode2213

theorem canonicalSound24937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24937.moment H = canonicalOutput24937.moment H :=
  canonical_of_padded canonicalInput24937 canonicalOutput24937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput24938 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 1, 1], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput24938 : ExponentCode := normalNode3649

theorem canonicalSound24938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24938.moment H = canonicalOutput24938.moment H :=
  canonical_of_padded canonicalInput24938 canonicalOutput24938 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput24939 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 0, 1, 1], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput24939 : ExponentCode := normalNode3652

theorem canonicalSound24939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24939.moment H = canonicalOutput24939.moment H :=
  canonical_of_padded canonicalInput24939 canonicalOutput24939 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24940 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput24940 : ExponentCode := normalNode3648

theorem canonicalSound24940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24940.moment H = canonicalOutput24940.moment H :=
  canonical_of_padded canonicalInput24940 canonicalOutput24940 (by decide) (by decide)
    ⟨false, true, canonicalPermutation112, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24941 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput24941 : ExponentCode := normalNode1474

theorem canonicalSound24941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24941.moment H = canonicalOutput24941.moment H :=
  canonical_of_padded canonicalInput24941 canonicalOutput24941 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24942 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput24942 : ExponentCode := normalNode1627

theorem canonicalSound24942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24942.moment H = canonicalOutput24942.moment H :=
  canonical_of_padded canonicalInput24942 canonicalOutput24942 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24943 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![2, -1, 0, 0, -1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput24943 : ExponentCode := normalNode1622

theorem canonicalSound24943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24943.moment H = canonicalOutput24943.moment H :=
  canonical_of_padded canonicalInput24943 canonicalOutput24943 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput24944 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput24944 : ExponentCode := normalNode2858

theorem canonicalSound24944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24944.moment H = canonicalOutput24944.moment H :=
  canonical_of_padded canonicalInput24944 canonicalOutput24944 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24945 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, -1, 0, 0, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput24945 : ExponentCode := normalNode1618

theorem canonicalSound24945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24945.moment H = canonicalOutput24945.moment H :=
  canonical_of_padded canonicalInput24945 canonicalOutput24945 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput24946 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput24946 : ExponentCode := normalNode2176

theorem canonicalSound24946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24946.moment H = canonicalOutput24946.moment H :=
  canonical_of_padded canonicalInput24946 canonicalOutput24946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput24947 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput24947 : ExponentCode := normalNode2856

theorem canonicalSound24947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24947.moment H = canonicalOutput24947.moment H :=
  canonical_of_padded canonicalInput24947 canonicalOutput24947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation183⟩ (by decide +kernel) hH

def canonicalInput24948 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput24948 : ExponentCode := normalNode1531

theorem canonicalSound24948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24948.moment H = canonicalOutput24948.moment H :=
  canonical_of_padded canonicalInput24948 canonicalOutput24948 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput24949 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![-1, 2, 0, 1, -2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput24949 : ExponentCode := normalNode1534

theorem canonicalSound24949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24949.moment H = canonicalOutput24949.moment H :=
  canonical_of_padded canonicalInput24949 canonicalOutput24949 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput24950 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput24950 : ExponentCode := normalNode1145

theorem canonicalSound24950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24950.moment H = canonicalOutput24950.moment H :=
  canonical_of_padded canonicalInput24950 canonicalOutput24950 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput24951 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, -1, 0], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput24951 : ExponentCode := normalNode2165

theorem canonicalSound24951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24951.moment H = canonicalOutput24951.moment H :=
  canonical_of_padded canonicalInput24951 canonicalOutput24951 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24952 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, 0, -1], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput24952 : ExponentCode := normalNode2855

theorem canonicalSound24952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24952.moment H = canonicalOutput24952.moment H :=
  canonical_of_padded canonicalInput24952 canonicalOutput24952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation183⟩ (by decide +kernel) hH

def canonicalInput24953 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput24953 : ExponentCode := normalNode1533

theorem canonicalSound24953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24953.moment H = canonicalOutput24953.moment H :=
  canonical_of_padded canonicalInput24953 canonicalOutput24953 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput24954 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput24954 : ExponentCode := normalNode2169

theorem canonicalSound24954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24954.moment H = canonicalOutput24954.moment H :=
  canonical_of_padded canonicalInput24954 canonicalOutput24954 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation376, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput24955 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput24955 : ExponentCode := normalNode2867

theorem canonicalSound24955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24955.moment H = canonicalOutput24955.moment H :=
  canonical_of_padded canonicalInput24955 canonicalOutput24955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput24956 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput24956 : ExponentCode := normalNode3695

theorem canonicalSound24956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24956.moment H = canonicalOutput24956.moment H :=
  canonical_of_padded canonicalInput24956 canonicalOutput24956 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation285, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24957 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput24957 : ExponentCode := normalNode1494

theorem canonicalSound24957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24957.moment H = canonicalOutput24957.moment H :=
  canonical_of_padded canonicalInput24957 canonicalOutput24957 (by decide) (by decide)
    ⟨false, true, canonicalPermutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24958 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput24958 : ExponentCode := normalNode2160

theorem canonicalSound24958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24958.moment H = canonicalOutput24958.moment H :=
  canonical_of_padded canonicalInput24958 canonicalOutput24958 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24959 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![-1, 0, -1, 2, 0], ![2, -1, 0, 0, -1], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput24959 : ExponentCode := normalNode1502

theorem canonicalSound24959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24959.moment H = canonicalOutput24959.moment H :=
  canonical_of_padded canonicalInput24959 canonicalOutput24959 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
