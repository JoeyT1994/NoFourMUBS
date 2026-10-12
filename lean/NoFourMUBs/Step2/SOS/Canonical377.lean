import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24128 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24128 : ExponentCode := normalNode9553

theorem canonicalSound24128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24128.moment H = canonicalOutput24128.moment H :=
  canonical_of_padded canonicalInput24128 canonicalOutput24128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24129 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24129 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound24129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24129.moment H = canonicalOutput24129.moment H :=
  canonical_of_padded canonicalInput24129 canonicalOutput24129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24130 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput24130 : ExponentCode := normalNode502

theorem canonicalSound24130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24130.moment H = canonicalOutput24130.moment H :=
  canonical_of_padded canonicalInput24130 canonicalOutput24130 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24131 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -1, 0, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput24131 : ExponentCode := normalNode4506

theorem canonicalSound24131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24131.moment H = canonicalOutput24131.moment H :=
  canonical_of_padded canonicalInput24131 canonicalOutput24131 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24132 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput24132 : ExponentCode := normalNode1218

theorem canonicalSound24132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24132.moment H = canonicalOutput24132.moment H :=
  canonical_of_padded canonicalInput24132 canonicalOutput24132 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24133 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput24133 : ExponentCode := normalNode2924

theorem canonicalSound24133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24133.moment H = canonicalOutput24133.moment H :=
  canonical_of_padded canonicalInput24133 canonicalOutput24133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24134 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput24134 : ExponentCode := normalNode2879

theorem canonicalSound24134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24134.moment H = canonicalOutput24134.moment H :=
  canonical_of_padded canonicalInput24134 canonicalOutput24134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24135 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput24135 : ExponentCode := normalNode3346

theorem canonicalSound24135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24135.moment H = canonicalOutput24135.moment H :=
  canonical_of_padded canonicalInput24135 canonicalOutput24135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24136 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput24136 : ExponentCode := normalNode3348

theorem canonicalSound24136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24136.moment H = canonicalOutput24136.moment H :=
  canonical_of_padded canonicalInput24136 canonicalOutput24136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24137 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24137 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound24137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24137.moment H = canonicalOutput24137.moment H :=
  canonical_of_padded canonicalInput24137 canonicalOutput24137 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24138 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24138 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2432⟩

theorem canonicalSound24138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24138.moment H = canonicalOutput24138.moment H :=
  canonical_of_padded canonicalInput24138 canonicalOutput24138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24139 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24139 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound24139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24139.moment H = canonicalOutput24139.moment H :=
  canonical_of_padded canonicalInput24139 canonicalOutput24139 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24140 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput24140 : ExponentCode := normalNode10925

theorem canonicalSound24140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24140.moment H = canonicalOutput24140.moment H :=
  canonical_of_padded canonicalInput24140 canonicalOutput24140 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24141 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput24141 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound24141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24141.moment H = canonicalOutput24141.moment H :=
  canonical_of_padded canonicalInput24141 canonicalOutput24141 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24142 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput24142 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node655⟩

theorem canonicalSound24142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24142.moment H = canonicalOutput24142.moment H :=
  canonical_of_padded canonicalInput24142 canonicalOutput24142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24143 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24143 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound24143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24143.moment H = canonicalOutput24143.moment H :=
  canonical_of_padded canonicalInput24143 canonicalOutput24143 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24144 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24144 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound24144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24144.moment H = canonicalOutput24144.moment H :=
  canonical_of_padded canonicalInput24144 canonicalOutput24144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24145 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound24145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24145.moment H = canonicalOutput24145.moment H :=
  canonical_of_padded canonicalInput24145 canonicalOutput24145 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24146 : ExponentCode := ⟨5, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput24146 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound24146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24146.moment H = canonicalOutput24146.moment H :=
  canonical_of_padded canonicalInput24146 canonicalOutput24146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24147 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, 0, -2, 2]]⟩

def canonicalOutput24147 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound24147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24147.moment H = canonicalOutput24147.moment H :=
  canonical_of_padded canonicalInput24147 canonicalOutput24147 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24148 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput24148 : ExponentCode := normalNode4176

theorem canonicalSound24148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24148.moment H = canonicalOutput24148.moment H :=
  canonical_of_padded canonicalInput24148 canonicalOutput24148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24149 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput24149 : ExponentCode := normalNode5608

theorem canonicalSound24149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24149.moment H = canonicalOutput24149.moment H :=
  canonical_of_padded canonicalInput24149 canonicalOutput24149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24150 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput24150 : ExponentCode := normalNode6192

theorem canonicalSound24150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24150.moment H = canonicalOutput24150.moment H :=
  canonical_of_padded canonicalInput24150 canonicalOutput24150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24151 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![-1, 2, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput24151 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound24151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24151.moment H = canonicalOutput24151.moment H :=
  canonical_of_padded canonicalInput24151 canonicalOutput24151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24152 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput24152 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound24152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24152.moment H = canonicalOutput24152.moment H :=
  canonical_of_padded canonicalInput24152 canonicalOutput24152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24153 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![-1, 2, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24153 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound24153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24153.moment H = canonicalOutput24153.moment H :=
  canonical_of_padded canonicalInput24153 canonicalOutput24153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24154 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![-1, 2, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24154 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1322⟩

theorem canonicalSound24154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24154.moment H = canonicalOutput24154.moment H :=
  canonical_of_padded canonicalInput24154 canonicalOutput24154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24155 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 1, -3, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput24155 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound24155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24155.moment H = canonicalOutput24155.moment H :=
  canonical_of_padded canonicalInput24155 canonicalOutput24155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24156 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 2, -2, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput24156 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound24156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24156.moment H = canonicalOutput24156.moment H :=
  canonical_of_padded canonicalInput24156 canonicalOutput24156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24157 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput24157 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound24157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24157.moment H = canonicalOutput24157.moment H :=
  canonical_of_padded canonicalInput24157 canonicalOutput24157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24158 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![0, 0, -2, 2]]⟩

def canonicalOutput24158 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node197⟩

theorem canonicalSound24158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24158.moment H = canonicalOutput24158.moment H :=
  canonical_of_padded canonicalInput24158 canonicalOutput24158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24159 : ExponentCode := ⟨3, 4, ![![0, -2, 0, 2], ![0, 0, 4, -4], ![0, 2, -4, 2]]⟩

def canonicalOutput24159 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node33⟩

theorem canonicalSound24159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24159.moment H = canonicalOutput24159.moment H :=
  canonical_of_padded canonicalInput24159 canonicalOutput24159 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24160 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput24160 : ExponentCode := normalNode2225

theorem canonicalSound24160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24160.moment H = canonicalOutput24160.moment H :=
  canonical_of_padded canonicalInput24160 canonicalOutput24160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24161 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput24161 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound24161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24161.moment H = canonicalOutput24161.moment H :=
  canonical_of_padded canonicalInput24161 canonicalOutput24161 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24162 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, 0, -2, 2]]⟩

def canonicalOutput24162 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound24162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24162.moment H = canonicalOutput24162.moment H :=
  canonical_of_padded canonicalInput24162 canonicalOutput24162 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24163 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput24163 : ExponentCode := normalNode6207

theorem canonicalSound24163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24163.moment H = canonicalOutput24163.moment H :=
  canonical_of_padded canonicalInput24163 canonicalOutput24163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24164 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24164 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound24164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24164.moment H = canonicalOutput24164.moment H :=
  canonical_of_padded canonicalInput24164 canonicalOutput24164 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24165 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 1, 1, -2], ![-1, 1, 2, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound24165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24165.moment H = canonicalOutput24165.moment H :=
  canonical_of_padded canonicalInput24165 canonicalOutput24165 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24166 : ExponentCode := ⟨4, 4, ![![0, -2, 0, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, 0, -2, 2]]⟩

def canonicalOutput24166 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound24166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24166.moment H = canonicalOutput24166.moment H :=
  canonical_of_padded canonicalInput24166 canonicalOutput24166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24167 : ExponentCode := ⟨6, 4, ![![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput24167 : ExponentCode := normalNode8888

theorem canonicalSound24167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24167.moment H = canonicalOutput24167.moment H :=
  canonical_of_padded canonicalInput24167 canonicalOutput24167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24168 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-3, 0, 2, -1, 2], ![3, 2, -2, -1, -2]]⟩

def canonicalOutput24168 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1043

theorem canonicalSound24168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24168.moment H = canonicalOutput24168.moment H :=
  canonical_of_padded canonicalInput24168 canonicalOutput24168 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24169 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-3, 1, 2, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput24169 : ExponentCode := normalNode5592

theorem canonicalSound24169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24169.moment H = canonicalOutput24169.moment H :=
  canonical_of_padded canonicalInput24169 canonicalOutput24169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24170 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-2, 0, 2, -2, 2], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput24170 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1048

theorem canonicalSound24170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24170.moment H = canonicalOutput24170.moment H :=
  canonical_of_padded canonicalInput24170 canonicalOutput24170 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24171 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-2, 0, 2, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput24171 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound24171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24171.moment H = canonicalOutput24171.moment H :=
  canonical_of_padded canonicalInput24171 canonicalOutput24171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24172 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-2, 1, 2, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput24172 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound24172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24172.moment H = canonicalOutput24172.moment H :=
  canonical_of_padded canonicalInput24172 canonicalOutput24172 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24173 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-2, 1, 3, -1, -1], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput24173 : ExponentCode := normalNode5592

theorem canonicalSound24173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24173.moment H = canonicalOutput24173.moment H :=
  canonical_of_padded canonicalInput24173 canonicalOutput24173 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24174 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, -2, 1], ![-1, 1, -2, 1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput24174 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code552

theorem canonicalSound24174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24174.moment H = canonicalOutput24174.moment H :=
  canonical_of_padded canonicalInput24174 canonicalOutput24174 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24175 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput24175 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node656⟩

theorem canonicalSound24175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24175.moment H = canonicalOutput24175.moment H :=
  canonical_of_padded canonicalInput24175 canonicalOutput24175 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24176 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, 0, -1], ![-1, 1, -2, 1, 1], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput24176 : ExponentCode := normalNode3367

theorem canonicalSound24176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24176.moment H = canonicalOutput24176.moment H :=
  canonical_of_padded canonicalInput24176 canonicalOutput24176 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24177 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, 0, -1], ![-1, 3, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput24177 : ExponentCode := normalNode3453

theorem canonicalSound24177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24177.moment H = canonicalOutput24177.moment H :=
  canonical_of_padded canonicalInput24177 canonicalOutput24177 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24178 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24178 : ExponentCode := normalNode8293

theorem canonicalSound24178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24178.moment H = canonicalOutput24178.moment H :=
  canonical_of_padded canonicalInput24178 canonicalOutput24178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation31⟩ (by decide +kernel) hH

def canonicalInput24179 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, -1, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24179 : ExponentCode := normalNode8288

theorem canonicalSound24179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24179.moment H = canonicalOutput24179.moment H :=
  canonical_of_padded canonicalInput24179 canonicalOutput24179 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation31⟩ (by decide +kernel) hH

def canonicalInput24180 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 0, 2, 0, -1], ![2, 0, -1, -1, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput24180 : ExponentCode := normalNode3873

theorem canonicalSound24180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24180.moment H = canonicalOutput24180.moment H :=
  canonical_of_padded canonicalInput24180 canonicalOutput24180 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24181 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 1, -1, 1, 0], ![-1, 1, 2, -1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput24181 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1782⟩

theorem canonicalSound24181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24181.moment H = canonicalOutput24181.moment H :=
  canonical_of_padded canonicalInput24181 canonicalOutput24181 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24182 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 1, 1, -1, 0], ![-2, 1, 1, -1, 1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput24182 : ExponentCode := normalNode5425

theorem canonicalSound24182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24182.moment H = canonicalOutput24182.moment H :=
  canonical_of_padded canonicalInput24182 canonicalOutput24182 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24183 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-1, 1, 2, 0, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput24183 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound24183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24183.moment H = canonicalOutput24183.moment H :=
  canonical_of_padded canonicalInput24183 canonicalOutput24183 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24184 : ExponentCode := ⟨3, 5, ![![0, -2, 0, 2, 0], ![-1, 1, 3, -1, -2], ![1, 1, -3, -1, 2]]⟩

def canonicalOutput24184 : ExponentCode := normalNode5592

theorem canonicalSound24184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24184.moment H = canonicalOutput24184.moment H :=
  canonical_of_padded canonicalInput24184 canonicalOutput24184 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24185 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 2, 0, -1, 0], ![-2, 0, 2, -1, 1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput24185 : ExponentCode := normalNode5522

theorem canonicalSound24185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24185.moment H = canonicalOutput24185.moment H :=
  canonical_of_padded canonicalInput24185 canonicalOutput24185 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24186 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![-1, 2, 0, -1, 0], ![-1, 1, 2, -1, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput24186 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound24186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24186.moment H = canonicalOutput24186.moment H :=
  canonical_of_padded canonicalInput24186 canonicalOutput24186 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24187 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24187 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node606⟩

theorem canonicalSound24187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24187.moment H = canonicalOutput24187.moment H :=
  canonical_of_padded canonicalInput24187 canonicalOutput24187 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput24188 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput24188 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node608⟩

theorem canonicalSound24188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24188.moment H = canonicalOutput24188.moment H :=
  canonical_of_padded canonicalInput24188 canonicalOutput24188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24189 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound24189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24189.moment H = canonicalOutput24189.moment H :=
  canonical_of_padded canonicalInput24189 canonicalOutput24189 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput24190 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 1, 0, -1], ![-1, 1, 2, -2, 0], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput24190 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound24190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24190.moment H = canonicalOutput24190.moment H :=
  canonical_of_padded canonicalInput24190 canonicalOutput24190 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24191 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, -2, 0], ![-2, 1, -2, 1, 2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput24191 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code898

theorem canonicalSound24191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24191.moment H = canonicalOutput24191.moment H :=
  canonical_of_padded canonicalInput24191 canonicalOutput24191 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
