import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16064 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16064 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2598⟩

theorem canonicalSound16064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16064.moment H = canonicalOutput16064.moment H :=
  canonical_of_padded canonicalInput16064 canonicalOutput16064 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16065 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16065 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound16065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16065.moment H = canonicalOutput16065.moment H :=
  canonical_of_padded canonicalInput16065 canonicalOutput16065 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput16066 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16066 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound16066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16066.moment H = canonicalOutput16066.moment H :=
  canonical_of_padded canonicalInput16066 canonicalOutput16066 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16067 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16067 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2454⟩

theorem canonicalSound16067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16067.moment H = canonicalOutput16067.moment H :=
  canonical_of_padded canonicalInput16067 canonicalOutput16067 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16068 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16068 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2582⟩

theorem canonicalSound16068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16068.moment H = canonicalOutput16068.moment H :=
  canonical_of_padded canonicalInput16068 canonicalOutput16068 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16069 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 2, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16069 : ExponentCode := normalNode10074

theorem canonicalSound16069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16069.moment H = canonicalOutput16069.moment H :=
  canonical_of_padded canonicalInput16069 canonicalOutput16069 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput16070 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 2, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16070 : ExponentCode := normalNode8970

theorem canonicalSound16070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16070.moment H = canonicalOutput16070.moment H :=
  canonical_of_padded canonicalInput16070 canonicalOutput16070 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16071 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16071 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound16071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16071.moment H = canonicalOutput16071.moment H :=
  canonical_of_padded canonicalInput16071 canonicalOutput16071 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16072 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16072 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1048⟩

theorem canonicalSound16072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16072.moment H = canonicalOutput16072.moment H :=
  canonical_of_padded canonicalInput16072 canonicalOutput16072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput16073 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16073 : ExponentCode := normalNode10128

theorem canonicalSound16073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16073.moment H = canonicalOutput16073.moment H :=
  canonical_of_padded canonicalInput16073 canonicalOutput16073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16074 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16074 : ExponentCode := normalNode10403

theorem canonicalSound16074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16074.moment H = canonicalOutput16074.moment H :=
  canonical_of_padded canonicalInput16074 canonicalOutput16074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16075 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16075 : ExponentCode := normalNode8424

theorem canonicalSound16075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16075.moment H = canonicalOutput16075.moment H :=
  canonical_of_padded canonicalInput16075 canonicalOutput16075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16076 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16076 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2725⟩

theorem canonicalSound16076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16076.moment H = canonicalOutput16076.moment H :=
  canonical_of_padded canonicalInput16076 canonicalOutput16076 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16077 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2769⟩

theorem canonicalSound16077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16077.moment H = canonicalOutput16077.moment H :=
  canonical_of_padded canonicalInput16077 canonicalOutput16077 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16078 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16078 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2769⟩

theorem canonicalSound16078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16078.moment H = canonicalOutput16078.moment H :=
  canonical_of_padded canonicalInput16078 canonicalOutput16078 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16079 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16079 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2725⟩

theorem canonicalSound16079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16079.moment H = canonicalOutput16079.moment H :=
  canonical_of_padded canonicalInput16079 canonicalOutput16079 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16080 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16080 : ExponentCode := normalNode8353

theorem canonicalSound16080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16080.moment H = canonicalOutput16080.moment H :=
  canonical_of_padded canonicalInput16080 canonicalOutput16080 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput16081 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput16081 : ExponentCode := normalNode9147

theorem canonicalSound16081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16081.moment H = canonicalOutput16081.moment H :=
  canonical_of_padded canonicalInput16081 canonicalOutput16081 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16082 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16082 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound16082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16082.moment H = canonicalOutput16082.moment H :=
  canonical_of_padded canonicalInput16082 canonicalOutput16082 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16083 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16083 : ExponentCode := normalNode8252

theorem canonicalSound16083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16083.moment H = canonicalOutput16083.moment H :=
  canonical_of_padded canonicalInput16083 canonicalOutput16083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput16084 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16084 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound16084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16084.moment H = canonicalOutput16084.moment H :=
  canonical_of_padded canonicalInput16084 canonicalOutput16084 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16085 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16085 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound16085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16085.moment H = canonicalOutput16085.moment H :=
  canonical_of_padded canonicalInput16085 canonicalOutput16085 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16086 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16086 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound16086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16086.moment H = canonicalOutput16086.moment H :=
  canonical_of_padded canonicalInput16086 canonicalOutput16086 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16087 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16087 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound16087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16087.moment H = canonicalOutput16087.moment H :=
  canonical_of_padded canonicalInput16087 canonicalOutput16087 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16088 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16088 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound16088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16088.moment H = canonicalOutput16088.moment H :=
  canonical_of_padded canonicalInput16088 canonicalOutput16088 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16089 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16089 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound16089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16089.moment H = canonicalOutput16089.moment H :=
  canonical_of_padded canonicalInput16089 canonicalOutput16089 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16090 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16090 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2448⟩

theorem canonicalSound16090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16090.moment H = canonicalOutput16090.moment H :=
  canonical_of_padded canonicalInput16090 canonicalOutput16090 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16091 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16091 : ExponentCode := normalNode8371

theorem canonicalSound16091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16091.moment H = canonicalOutput16091.moment H :=
  canonical_of_padded canonicalInput16091 canonicalOutput16091 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput16092 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16092 : ExponentCode := normalNode8442

theorem canonicalSound16092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16092.moment H = canonicalOutput16092.moment H :=
  canonical_of_padded canonicalInput16092 canonicalOutput16092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16093 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2759⟩

theorem canonicalSound16093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16093.moment H = canonicalOutput16093.moment H :=
  canonical_of_padded canonicalInput16093 canonicalOutput16093 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16094 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16094 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound16094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16094.moment H = canonicalOutput16094.moment H :=
  canonical_of_padded canonicalInput16094 canonicalOutput16094 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16095 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16095 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound16095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16095.moment H = canonicalOutput16095.moment H :=
  canonical_of_padded canonicalInput16095 canonicalOutput16095 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16096 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16096 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2759⟩

theorem canonicalSound16096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16096.moment H = canonicalOutput16096.moment H :=
  canonical_of_padded canonicalInput16096 canonicalOutput16096 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16097 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16097 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound16097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16097.moment H = canonicalOutput16097.moment H :=
  canonical_of_padded canonicalInput16097 canonicalOutput16097 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16098 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16098 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound16098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16098.moment H = canonicalOutput16098.moment H :=
  canonical_of_padded canonicalInput16098 canonicalOutput16098 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16099 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 1, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16099 : ExponentCode := normalNode5842

theorem canonicalSound16099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16099.moment H = canonicalOutput16099.moment H :=
  canonical_of_padded canonicalInput16099 canonicalOutput16099 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16100 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16100 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound16100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16100.moment H = canonicalOutput16100.moment H :=
  canonical_of_padded canonicalInput16100 canonicalOutput16100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16101 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![1, 0, -2, 1, 0], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput16101 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound16101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16101.moment H = canonicalOutput16101.moment H :=
  canonical_of_padded canonicalInput16101 canonicalOutput16101 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16102 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 0, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16102 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1704⟩

theorem canonicalSound16102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16102.moment H = canonicalOutput16102.moment H :=
  canonical_of_padded canonicalInput16102 canonicalOutput16102 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16103 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 1, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput16103 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩

theorem canonicalSound16103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16103.moment H = canonicalOutput16103.moment H :=
  canonical_of_padded canonicalInput16103 canonicalOutput16103 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16104 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2740⟩

theorem canonicalSound16104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16104.moment H = canonicalOutput16104.moment H :=
  canonical_of_padded canonicalInput16104 canonicalOutput16104 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16105 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16105 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2740⟩

theorem canonicalSound16105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16105.moment H = canonicalOutput16105.moment H :=
  canonical_of_padded canonicalInput16105 canonicalOutput16105 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16106 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, 1, -3, 1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16106 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩

theorem canonicalSound16106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16106.moment H = canonicalOutput16106.moment H :=
  canonical_of_padded canonicalInput16106 canonicalOutput16106 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16107 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 2, -2, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16107 : ExponentCode := normalNode3520

theorem canonicalSound16107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16107.moment H = canonicalOutput16107.moment H :=
  canonical_of_padded canonicalInput16107 canonicalOutput16107 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16108 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16108 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound16108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16108.moment H = canonicalOutput16108.moment H :=
  canonical_of_padded canonicalInput16108 canonicalOutput16108 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16109 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, 2, -3], ![1, 0, -2, 1, 0], ![0, 1, 1, -3, 1]]⟩

def canonicalOutput16109 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩

theorem canonicalSound16109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16109.moment H = canonicalOutput16109.moment H :=
  canonical_of_padded canonicalInput16109 canonicalOutput16109 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16110 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -3, 1], ![0, 1, 0, 2, -3], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16110 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩

theorem canonicalSound16110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16110.moment H = canonicalOutput16110.moment H :=
  canonical_of_padded canonicalInput16110 canonicalOutput16110 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16111 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -3, 1], ![0, 2, -1, 2, -3], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16111 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1945⟩

theorem canonicalSound16111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16111.moment H = canonicalOutput16111.moment H :=
  canonical_of_padded canonicalInput16111 canonicalOutput16111 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16112 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16112 : ExponentCode := normalNode8295

theorem canonicalSound16112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16112.moment H = canonicalOutput16112.moment H :=
  canonical_of_padded canonicalInput16112 canonicalOutput16112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16113 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16113 : ExponentCode := normalNode8288

theorem canonicalSound16113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16113.moment H = canonicalOutput16113.moment H :=
  canonical_of_padded canonicalInput16113 canonicalOutput16113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16114 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 0, -1, 2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16114 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound16114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16114.moment H = canonicalOutput16114.moment H :=
  canonical_of_padded canonicalInput16114 canonicalOutput16114 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16115 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -3, 1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16115 : ExponentCode := normalNode3390

theorem canonicalSound16115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16115.moment H = canonicalOutput16115.moment H :=
  canonical_of_padded canonicalInput16115 canonicalOutput16115 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16116 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 0, 0, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16116 : ExponentCode := normalNode8294

theorem canonicalSound16116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16116.moment H = canonicalOutput16116.moment H :=
  canonical_of_padded canonicalInput16116 canonicalOutput16116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput16117 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16117 : ExponentCode := normalNode8300

theorem canonicalSound16117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16117.moment H = canonicalOutput16117.moment H :=
  canonical_of_padded canonicalInput16117 canonicalOutput16117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16118 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 0, 0, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16118 : ExponentCode := normalNode8293

theorem canonicalSound16118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16118.moment H = canonicalOutput16118.moment H :=
  canonical_of_padded canonicalInput16118 canonicalOutput16118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16119 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput16119 : ExponentCode := normalNode8752

theorem canonicalSound16119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16119.moment H = canonicalOutput16119.moment H :=
  canonical_of_padded canonicalInput16119 canonicalOutput16119 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput16120 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16120 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound16120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16120.moment H = canonicalOutput16120.moment H :=
  canonical_of_padded canonicalInput16120 canonicalOutput16120 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16121 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16121 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound16121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16121.moment H = canonicalOutput16121.moment H :=
  canonical_of_padded canonicalInput16121 canonicalOutput16121 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16122 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput16122 : ExponentCode := normalNode3873

theorem canonicalSound16122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16122.moment H = canonicalOutput16122.moment H :=
  canonical_of_padded canonicalInput16122 canonicalOutput16122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16123 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput16123 : ExponentCode := normalNode3751

theorem canonicalSound16123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16123.moment H = canonicalOutput16123.moment H :=
  canonical_of_padded canonicalInput16123 canonicalOutput16123 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16124 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16124 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound16124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16124.moment H = canonicalOutput16124.moment H :=
  canonical_of_padded canonicalInput16124 canonicalOutput16124 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16125 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16125 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound16125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16125.moment H = canonicalOutput16125.moment H :=
  canonical_of_padded canonicalInput16125 canonicalOutput16125 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16126 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 2, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16126 : ExponentCode := normalNode8992

theorem canonicalSound16126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16126.moment H = canonicalOutput16126.moment H :=
  canonical_of_padded canonicalInput16126 canonicalOutput16126 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16127 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16127 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound16127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16127.moment H = canonicalOutput16127.moment H :=
  canonical_of_padded canonicalInput16127 canonicalOutput16127 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
