import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31104 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -2, 1, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31104 : ExponentCode := normalNode8431

theorem canonicalSound31104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31104.moment H = canonicalOutput31104.moment H :=
  canonical_of_padded canonicalInput31104 canonicalOutput31104 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput31105 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -2, 1, 0], ![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31105 : ExponentCode := normalNode8431

theorem canonicalSound31105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31105.moment H = canonicalOutput31105.moment H :=
  canonical_of_padded canonicalInput31105 canonicalOutput31105 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput31106 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -2, 1, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31106 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1054⟩

theorem canonicalSound31106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31106.moment H = canonicalOutput31106.moment H :=
  canonical_of_padded canonicalInput31106 canonicalOutput31106 (by decide) (by decide)
    ⟨false, true, canonicalPermutation251, canonicalPermutation346⟩ (by decide +kernel) hH

def canonicalInput31107 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -2, 1, 0], ![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31107 : ExponentCode := normalNode8336

theorem canonicalSound31107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31107.moment H = canonicalOutput31107.moment H :=
  canonical_of_padded canonicalInput31107 canonicalOutput31107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation362⟩ (by decide +kernel) hH

def canonicalInput31108 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-4, 2, -2, 4], ![4, -2, 1, -3]]⟩

def canonicalOutput31108 : ExponentCode := normalNode6285

theorem canonicalSound31108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31108.moment H = canonicalOutput31108.moment H :=
  canonical_of_padded canonicalInput31108 canonicalOutput31108 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31109 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-4, 2, 2, 0], ![4, -2, -3, 1]]⟩

def canonicalOutput31109 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node266⟩

theorem canonicalSound31109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31109.moment H = canonicalOutput31109.moment H :=
  canonical_of_padded canonicalInput31109 canonicalOutput31109 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31110 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-4, 4, -2, 2], ![4, -4, 1, -1]]⟩

def canonicalOutput31110 : ExponentCode := normalNode9521

theorem canonicalSound31110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31110.moment H = canonicalOutput31110.moment H :=
  canonical_of_padded canonicalInput31110 canonicalOutput31110 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31111 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-3, -2, 2, 3], ![3, 2, -3, -2]]⟩

def canonicalOutput31111 : ExponentCode := normalNode7148

theorem canonicalSound31111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31111.moment H = canonicalOutput31111.moment H :=
  canonical_of_padded canonicalInput31111 canonicalOutput31111 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31112 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-3, 2, 2, -1], ![3, -2, -3, 2]]⟩

def canonicalOutput31112 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound31112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31112.moment H = canonicalOutput31112.moment H :=
  canonical_of_padded canonicalInput31112 canonicalOutput31112 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31113 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-3, 4, -2, 1], ![3, -4, 1, 0]]⟩

def canonicalOutput31113 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩

theorem canonicalSound31113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31113.moment H = canonicalOutput31113.moment H :=
  canonical_of_padded canonicalInput31113 canonicalOutput31113 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31114 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-3, 5, -2, 0], ![3, -5, 1, 1]]⟩

def canonicalOutput31114 : ExponentCode := normalNode9524

theorem canonicalSound31114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31114.moment H = canonicalOutput31114.moment H :=
  canonical_of_padded canonicalInput31114 canonicalOutput31114 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31115 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![2, 2, -3, -1]]⟩

def canonicalOutput31115 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound31115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31115.moment H = canonicalOutput31115.moment H :=
  canonical_of_padded canonicalInput31115 canonicalOutput31115 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31116 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-2, -2, 3, 1], ![2, 2, -4, 0]]⟩

def canonicalOutput31116 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩

theorem canonicalSound31116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31116.moment H = canonicalOutput31116.moment H :=
  canonical_of_padded canonicalInput31116 canonicalOutput31116 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31117 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-2, 3, 1, -2], ![2, -3, -2, 3]]⟩

def canonicalOutput31117 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound31117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31117.moment H = canonicalOutput31117.moment H :=
  canonical_of_padded canonicalInput31117 canonicalOutput31117 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31118 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-2, 5, -2, -1], ![2, -5, 1, 2]]⟩

def canonicalOutput31118 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node282⟩

theorem canonicalSound31118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31118.moment H = canonicalOutput31118.moment H :=
  canonical_of_padded canonicalInput31118 canonicalOutput31118 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31119 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![1, 3, -3, -1]]⟩

def canonicalOutput31119 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound31119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31119.moment H = canonicalOutput31119.moment H :=
  canonical_of_padded canonicalInput31119 canonicalOutput31119 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31120 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-1, -3, 4, 0], ![1, 3, -5, 1]]⟩

def canonicalOutput31120 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node239⟩

theorem canonicalSound31120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31120.moment H = canonicalOutput31120.moment H :=
  canonical_of_padded canonicalInput31120 canonicalOutput31120 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31121 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31121 : ExponentCode := normalNode5862

theorem canonicalSound31121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31121.moment H = canonicalOutput31121.moment H :=
  canonical_of_padded canonicalInput31121 canonicalOutput31121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31122 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput31122 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound31122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31122.moment H = canonicalOutput31122.moment H :=
  canonical_of_padded canonicalInput31122 canonicalOutput31122 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31123 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31123 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound31123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31123.moment H = canonicalOutput31123.moment H :=
  canonical_of_padded canonicalInput31123 canonicalOutput31123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31124 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31124 : ExponentCode := normalNode10863

theorem canonicalSound31124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31124.moment H = canonicalOutput31124.moment H :=
  canonical_of_padded canonicalInput31124 canonicalOutput31124 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31125 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -4, 3], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput31125 : ExponentCode := normalNode10707

theorem canonicalSound31125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31125.moment H = canonicalOutput31125.moment H :=
  canonical_of_padded canonicalInput31125 canonicalOutput31125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31126 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput31126 : ExponentCode := normalNode10706

theorem canonicalSound31126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31126.moment H = canonicalOutput31126.moment H :=
  canonical_of_padded canonicalInput31126 canonicalOutput31126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31127 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput31127 : ExponentCode := normalNode10704

theorem canonicalSound31127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31127.moment H = canonicalOutput31127.moment H :=
  canonical_of_padded canonicalInput31127 canonicalOutput31127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31128 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![2, -2, 0, 0], ![-1, 1, 2, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput31128 : ExponentCode := normalNode5950

theorem canonicalSound31128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31128.moment H = canonicalOutput31128.moment H :=
  canonical_of_padded canonicalInput31128 canonicalOutput31128 (by decide) (by decide)
    ⟨false, true, canonicalPermutation384, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31129 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31129 : ExponentCode := normalNode10864

theorem canonicalSound31129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31129.moment H = canonicalOutput31129.moment H :=
  canonical_of_padded canonicalInput31129 canonicalOutput31129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31130 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput31130 : ExponentCode := normalNode7936

theorem canonicalSound31130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31130.moment H = canonicalOutput31130.moment H :=
  canonical_of_padded canonicalInput31130 canonicalOutput31130 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31131 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31131 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound31131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31131.moment H = canonicalOutput31131.moment H :=
  canonical_of_padded canonicalInput31131 canonicalOutput31131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31132 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node763⟩

theorem canonicalSound31132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31132.moment H = canonicalOutput31132.moment H :=
  canonical_of_padded canonicalInput31132 canonicalOutput31132 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31133 : ExponentCode := ⟨5, 4, ![![0, 0, 1, -1], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput31133 : ExponentCode := normalNode9958

theorem canonicalSound31133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31133.moment H = canonicalOutput31133.moment H :=
  canonical_of_padded canonicalInput31133 canonicalOutput31133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31134 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput31134 : ExponentCode := normalNode7463

theorem canonicalSound31134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31134.moment H = canonicalOutput31134.moment H :=
  canonical_of_padded canonicalInput31134 canonicalOutput31134 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31135 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput31135 : ExponentCode := normalNode6494

theorem canonicalSound31135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31135.moment H = canonicalOutput31135.moment H :=
  canonical_of_padded canonicalInput31135 canonicalOutput31135 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31136 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput31136 : ExponentCode := normalNode7386

theorem canonicalSound31136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31136.moment H = canonicalOutput31136.moment H :=
  canonical_of_padded canonicalInput31136 canonicalOutput31136 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31137 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput31137 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node968⟩

theorem canonicalSound31137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31137.moment H = canonicalOutput31137.moment H :=
  canonical_of_padded canonicalInput31137 canonicalOutput31137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31138 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput31138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound31138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31138.moment H = canonicalOutput31138.moment H :=
  canonical_of_padded canonicalInput31138 canonicalOutput31138 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31139 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput31139 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound31139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31139.moment H = canonicalOutput31139.moment H :=
  canonical_of_padded canonicalInput31139 canonicalOutput31139 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31140 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput31140 : ExponentCode := normalNode10951

theorem canonicalSound31140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31140.moment H = canonicalOutput31140.moment H :=
  canonical_of_padded canonicalInput31140 canonicalOutput31140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31141 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput31141 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound31141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31141.moment H = canonicalOutput31141.moment H :=
  canonical_of_padded canonicalInput31141 canonicalOutput31141 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31142 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput31142 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound31142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31142.moment H = canonicalOutput31142.moment H :=
  canonical_of_padded canonicalInput31142 canonicalOutput31142 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31143 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31143 : ExponentCode := normalNode7455

theorem canonicalSound31143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31143.moment H = canonicalOutput31143.moment H :=
  canonical_of_padded canonicalInput31143 canonicalOutput31143 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31144 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput31144 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node250⟩

theorem canonicalSound31144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31144.moment H = canonicalOutput31144.moment H :=
  canonical_of_padded canonicalInput31144 canonicalOutput31144 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31145 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31145 : ExponentCode := normalNode6027

theorem canonicalSound31145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31145.moment H = canonicalOutput31145.moment H :=
  canonical_of_padded canonicalInput31145 canonicalOutput31145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31146 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31146 : ExponentCode := normalNode6065

theorem canonicalSound31146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31146.moment H = canonicalOutput31146.moment H :=
  canonical_of_padded canonicalInput31146 canonicalOutput31146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31147 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31147 : ExponentCode := normalNode1779

theorem canonicalSound31147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31147.moment H = canonicalOutput31147.moment H :=
  canonical_of_padded canonicalInput31147 canonicalOutput31147 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31148 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, 3, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31148 : ExponentCode := normalNode1779

theorem canonicalSound31148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31148.moment H = canonicalOutput31148.moment H :=
  canonical_of_padded canonicalInput31148 canonicalOutput31148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31149 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31149 : ExponentCode := normalNode7680

theorem canonicalSound31149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31149.moment H = canonicalOutput31149.moment H :=
  canonical_of_padded canonicalInput31149 canonicalOutput31149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31150 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31150 : ExponentCode := normalNode504

theorem canonicalSound31150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31150.moment H = canonicalOutput31150.moment H :=
  canonical_of_padded canonicalInput31150 canonicalOutput31150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31151 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, -2, 1, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31151 : ExponentCode := normalNode1659

theorem canonicalSound31151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31151.moment H = canonicalOutput31151.moment H :=
  canonical_of_padded canonicalInput31151 canonicalOutput31151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31152 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput31152 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1458⟩

theorem canonicalSound31152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31152.moment H = canonicalOutput31152.moment H :=
  canonical_of_padded canonicalInput31152 canonicalOutput31152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31153 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput31153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1503⟩

theorem canonicalSound31153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31153.moment H = canonicalOutput31153.moment H :=
  canonical_of_padded canonicalInput31153 canonicalOutput31153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31154 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput31154 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1548⟩

theorem canonicalSound31154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31154.moment H = canonicalOutput31154.moment H :=
  canonical_of_padded canonicalInput31154 canonicalOutput31154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31155 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31155 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩

theorem canonicalSound31155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31155.moment H = canonicalOutput31155.moment H :=
  canonical_of_padded canonicalInput31155 canonicalOutput31155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31156 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 0, -1, 3]]⟩

def canonicalOutput31156 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound31156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31156.moment H = canonicalOutput31156.moment H :=
  canonical_of_padded canonicalInput31156 canonicalOutput31156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31157 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31157 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1558⟩

theorem canonicalSound31157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31157.moment H = canonicalOutput31157.moment H :=
  canonical_of_padded canonicalInput31157 canonicalOutput31157 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31158 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31158 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1469⟩

theorem canonicalSound31158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31158.moment H = canonicalOutput31158.moment H :=
  canonical_of_padded canonicalInput31158 canonicalOutput31158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31159 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, -1, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput31159 : ExponentCode := normalNode2298

theorem canonicalSound31159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31159.moment H = canonicalOutput31159.moment H :=
  canonical_of_padded canonicalInput31159 canonicalOutput31159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31160 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, 1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31160 : ExponentCode := normalNode2298

theorem canonicalSound31160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31160.moment H = canonicalOutput31160.moment H :=
  canonical_of_padded canonicalInput31160 canonicalOutput31160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation386, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31161 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput31161 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1459⟩

theorem canonicalSound31161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31161.moment H = canonicalOutput31161.moment H :=
  canonical_of_padded canonicalInput31161 canonicalOutput31161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31162 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31162 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1507⟩

theorem canonicalSound31162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31162.moment H = canonicalOutput31162.moment H :=
  canonical_of_padded canonicalInput31162 canonicalOutput31162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31163 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput31163 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1506⟩

theorem canonicalSound31163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31163.moment H = canonicalOutput31163.moment H :=
  canonical_of_padded canonicalInput31163 canonicalOutput31163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31164 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput31164 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩

theorem canonicalSound31164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31164.moment H = canonicalOutput31164.moment H :=
  canonical_of_padded canonicalInput31164 canonicalOutput31164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31165 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31165 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2835⟩

theorem canonicalSound31165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31165.moment H = canonicalOutput31165.moment H :=
  canonical_of_padded canonicalInput31165 canonicalOutput31165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation387, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31166 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31166 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound31166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31166.moment H = canonicalOutput31166.moment H :=
  canonical_of_padded canonicalInput31166 canonicalOutput31166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation237, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31167 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 2, -3, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput31167 : ExponentCode := normalNode3471

theorem canonicalSound31167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31167.moment H = canonicalOutput31167.moment H :=
  canonical_of_padded canonicalInput31167 canonicalOutput31167 (by decide) (by decide)
    ⟨false, true, canonicalPermutation348, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
