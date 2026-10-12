import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13120 : ExponentCode := ⟨5, 6, ![![-1, -2, 0, 0, 0, 3], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![1, 2, 0, 0, 0, -3]]⟩

def canonicalOutput13120 : ExponentCode := normalNode5644

theorem canonicalSound13120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13120.moment H = canonicalOutput13120.moment H :=
  canonical_of_padded canonicalInput13120 canonicalOutput13120 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput13121 : ExponentCode := ⟨5, 6, ![![-1, -2, 0, 0, 0, 3], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![1, 0, 2, -1, -1, -1], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput13121 : ExponentCode := normalNode3639

theorem canonicalSound13121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13121.moment H = canonicalOutput13121.moment H :=
  canonical_of_padded canonicalInput13121 canonicalOutput13121 (by decide) (by decide)
    ⟨true, false, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput13122 : ExponentCode := ⟨5, 6, ![![-1, -2, 0, 0, 0, 3], ![0, 0, -1, -1, 2, 0], ![1, 0, -1, 2, -1, -1], ![0, 0, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput13122 : ExponentCode := normalNode3639

theorem canonicalSound13122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13122.moment H = canonicalOutput13122.moment H :=
  canonical_of_padded canonicalInput13122 canonicalOutput13122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation384, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13123 : ExponentCode := ⟨5, 6, ![![-1, -2, 0, 0, 0, 3], ![1, 0, -1, -1, 2, -1], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput13123 : ExponentCode := normalNode3639

theorem canonicalSound13123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13123.moment H = canonicalOutput13123.moment H :=
  canonical_of_padded canonicalInput13123 canonicalOutput13123 (by decide) (by decide)
    ⟨true, false, canonicalPermutation112, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput13124 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput13124 : ExponentCode := normalNode5522

theorem canonicalSound13124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13124.moment H = canonicalOutput13124.moment H :=
  canonical_of_padded canonicalInput13124 canonicalOutput13124 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13125 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13125 : ExponentCode := normalNode5494

theorem canonicalSound13125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13125.moment H = canonicalOutput13125.moment H :=
  canonical_of_padded canonicalInput13125 canonicalOutput13125 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13126 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput13126 : ExponentCode := normalNode5425

theorem canonicalSound13126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13126.moment H = canonicalOutput13126.moment H :=
  canonical_of_padded canonicalInput13126 canonicalOutput13126 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13127 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput13127 : ExponentCode := normalNode3607

theorem canonicalSound13127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13127.moment H = canonicalOutput13127.moment H :=
  canonical_of_padded canonicalInput13127 canonicalOutput13127 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13128 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 2, -2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13128 : ExponentCode := normalNode3375

theorem canonicalSound13128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13128.moment H = canonicalOutput13128.moment H :=
  canonical_of_padded canonicalInput13128 canonicalOutput13128 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13129 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 2, -1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13129 : ExponentCode := normalNode4010

theorem canonicalSound13129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13129.moment H = canonicalOutput13129.moment H :=
  canonical_of_padded canonicalInput13129 canonicalOutput13129 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13130 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 0, 0, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput13130 : ExponentCode := normalNode3354

theorem canonicalSound13130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13130.moment H = canonicalOutput13130.moment H :=
  canonical_of_padded canonicalInput13130 canonicalOutput13130 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13131 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 1, -2, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13131 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1963⟩

theorem canonicalSound13131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13131.moment H = canonicalOutput13131.moment H :=
  canonical_of_padded canonicalInput13131 canonicalOutput13131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13132 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 1, -1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13132 : ExponentCode := normalNode5396

theorem canonicalSound13132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13132.moment H = canonicalOutput13132.moment H :=
  canonical_of_padded canonicalInput13132 canonicalOutput13132 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13133 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![1, 0, 2, -2, -1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput13133 : ExponentCode := normalNode3354

theorem canonicalSound13133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13133.moment H = canonicalOutput13133.moment H :=
  canonical_of_padded canonicalInput13133 canonicalOutput13133 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13134 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![1, 1, 1, -2, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13134 : ExponentCode := normalNode3607

theorem canonicalSound13134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13134.moment H = canonicalOutput13134.moment H :=
  canonical_of_padded canonicalInput13134 canonicalOutput13134 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13135 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![1, 1, 1, -1, -2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput13135 : ExponentCode := normalNode5425

theorem canonicalSound13135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13135.moment H = canonicalOutput13135.moment H :=
  canonical_of_padded canonicalInput13135 canonicalOutput13135 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13136 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13136 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2803⟩

theorem canonicalSound13136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13136.moment H = canonicalOutput13136.moment H :=
  canonical_of_padded canonicalInput13136 canonicalOutput13136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13137 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13137 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound13137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13137.moment H = canonicalOutput13137.moment H :=
  canonical_of_padded canonicalInput13137 canonicalOutput13137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13138 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 2, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13138 : ExponentCode := normalNode10816

theorem canonicalSound13138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13138.moment H = canonicalOutput13138.moment H :=
  canonical_of_padded canonicalInput13138 canonicalOutput13138 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13139 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput13139 : ExponentCode := normalNode8275

theorem canonicalSound13139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13139.moment H = canonicalOutput13139.moment H :=
  canonical_of_padded canonicalInput13139 canonicalOutput13139 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput13140 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13140 : ExponentCode := normalNode7522

theorem canonicalSound13140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13140.moment H = canonicalOutput13140.moment H :=
  canonical_of_padded canonicalInput13140 canonicalOutput13140 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput13141 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13141 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩

theorem canonicalSound13141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13141.moment H = canonicalOutput13141.moment H :=
  canonical_of_padded canonicalInput13141 canonicalOutput13141 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13142 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13142 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound13142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13142.moment H = canonicalOutput13142.moment H :=
  canonical_of_padded canonicalInput13142 canonicalOutput13142 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13143 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput13143 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound13143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13143.moment H = canonicalOutput13143.moment H :=
  canonical_of_padded canonicalInput13143 canonicalOutput13143 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13144 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 2, 0, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13144 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound13144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13144.moment H = canonicalOutput13144.moment H :=
  canonical_of_padded canonicalInput13144 canonicalOutput13144 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13145 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, -1, 2, -1], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound13145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13145.moment H = canonicalOutput13145.moment H :=
  canonical_of_padded canonicalInput13145 canonicalOutput13145 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13146 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13146 : ExponentCode := normalNode9762

theorem canonicalSound13146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13146.moment H = canonicalOutput13146.moment H :=
  canonical_of_padded canonicalInput13146 canonicalOutput13146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13147 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 0, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13147 : ExponentCode := normalNode8274

theorem canonicalSound13147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13147.moment H = canonicalOutput13147.moment H :=
  canonical_of_padded canonicalInput13147 canonicalOutput13147 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput13148 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, 1, -2, 1], ![0, 2, -1, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13148 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2196⟩

theorem canonicalSound13148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13148.moment H = canonicalOutput13148.moment H :=
  canonical_of_padded canonicalInput13148 canonicalOutput13148 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13149 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13149 : ExponentCode := normalNode9760

theorem canonicalSound13149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13149.moment H = canonicalOutput13149.moment H :=
  canonical_of_padded canonicalInput13149 canonicalOutput13149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13150 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13150 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound13150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13150.moment H = canonicalOutput13150.moment H :=
  canonical_of_padded canonicalInput13150 canonicalOutput13150 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13151 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, -2, 1, 0], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13151 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩

theorem canonicalSound13151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13151.moment H = canonicalOutput13151.moment H :=
  canonical_of_padded canonicalInput13151 canonicalOutput13151 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13152 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13152 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound13152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13152.moment H = canonicalOutput13152.moment H :=
  canonical_of_padded canonicalInput13152 canonicalOutput13152 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13153 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound13153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13153.moment H = canonicalOutput13153.moment H :=
  canonical_of_padded canonicalInput13153 canonicalOutput13153 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13154 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, -2, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13154 : ExponentCode := normalNode7667

theorem canonicalSound13154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13154.moment H = canonicalOutput13154.moment H :=
  canonical_of_padded canonicalInput13154 canonicalOutput13154 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13155 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, -2, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13155 : ExponentCode := normalNode3372

theorem canonicalSound13155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13155.moment H = canonicalOutput13155.moment H :=
  canonical_of_padded canonicalInput13155 canonicalOutput13155 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13156 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13156 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2580⟩

theorem canonicalSound13156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13156.moment H = canonicalOutput13156.moment H :=
  canonical_of_padded canonicalInput13156 canonicalOutput13156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13157 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, 1, -2, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13157 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound13157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13157.moment H = canonicalOutput13157.moment H :=
  canonical_of_padded canonicalInput13157 canonicalOutput13157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13158 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 2, -1]]⟩

def canonicalOutput13158 : ExponentCode := normalNode3360

theorem canonicalSound13158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13158.moment H = canonicalOutput13158.moment H :=
  canonical_of_padded canonicalInput13158 canonicalOutput13158 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13159 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![1, 0, -2, 1, 0], ![0, 0, 2, -1, -1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput13159 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound13159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13159.moment H = canonicalOutput13159.moment H :=
  canonical_of_padded canonicalInput13159 canonicalOutput13159 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13160 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![1, 0, -2, 1, 0], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13160 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1636⟩

theorem canonicalSound13160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13160.moment H = canonicalOutput13160.moment H :=
  canonical_of_padded canonicalInput13160 canonicalOutput13160 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13161 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![1, 0, -2, 2, -1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13161 : ExponentCode := normalNode3360

theorem canonicalSound13161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13161.moment H = canonicalOutput13161.moment H :=
  canonical_of_padded canonicalInput13161 canonicalOutput13161 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13162 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 0, 3], ![1, 0, -2, 2, -1], ![0, 1, 1, -1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput13162 : ExponentCode := normalNode7661

theorem canonicalSound13162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13162.moment H = canonicalOutput13162.moment H :=
  canonical_of_padded canonicalInput13162 canonicalOutput13162 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13163 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, 1, 0, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13163 : ExponentCode := normalNode9260

theorem canonicalSound13163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13163.moment H = canonicalOutput13163.moment H :=
  canonical_of_padded canonicalInput13163 canonicalOutput13163 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput13164 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13164 : ExponentCode := normalNode5504

theorem canonicalSound13164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13164.moment H = canonicalOutput13164.moment H :=
  canonical_of_padded canonicalInput13164 canonicalOutput13164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13165 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -2, 1, 1], ![0, 1, 2, -2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13165 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2040⟩

theorem canonicalSound13165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13165.moment H = canonicalOutput13165.moment H :=
  canonical_of_padded canonicalInput13165 canonicalOutput13165 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13166 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -2, 1, 1], ![1, 1, 1, -2, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13166 : ExponentCode := normalNode5237

theorem canonicalSound13166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13166.moment H = canonicalOutput13166.moment H :=
  canonical_of_padded canonicalInput13166 canonicalOutput13166 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13167 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13167 : ExponentCode := normalNode8706

theorem canonicalSound13167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13167.moment H = canonicalOutput13167.moment H :=
  canonical_of_padded canonicalInput13167 canonicalOutput13167 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation80⟩ (by decide +kernel) hH

def canonicalInput13168 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13168 : ExponentCode := normalNode10409

theorem canonicalSound13168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13168.moment H = canonicalOutput13168.moment H :=
  canonical_of_padded canonicalInput13168 canonicalOutput13168 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput13169 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13169 : ExponentCode := normalNode10134

theorem canonicalSound13169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13169.moment H = canonicalOutput13169.moment H :=
  canonical_of_padded canonicalInput13169 canonicalOutput13169 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput13170 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13170 : ExponentCode := normalNode9148

theorem canonicalSound13170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13170.moment H = canonicalOutput13170.moment H :=
  canonical_of_padded canonicalInput13170 canonicalOutput13170 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13171 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13171 : ExponentCode := normalNode10037

theorem canonicalSound13171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13171.moment H = canonicalOutput13171.moment H :=
  canonical_of_padded canonicalInput13171 canonicalOutput13171 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13172 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13172 : ExponentCode := normalNode10040

theorem canonicalSound13172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13172.moment H = canonicalOutput13172.moment H :=
  canonical_of_padded canonicalInput13172 canonicalOutput13172 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13173 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13173 : ExponentCode := normalNode9150

theorem canonicalSound13173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13173.moment H = canonicalOutput13173.moment H :=
  canonical_of_padded canonicalInput13173 canonicalOutput13173 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13174 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13174 : ExponentCode := normalNode10105

theorem canonicalSound13174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13174.moment H = canonicalOutput13174.moment H :=
  canonical_of_padded canonicalInput13174 canonicalOutput13174 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput13175 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13175 : ExponentCode := normalNode10362

theorem canonicalSound13175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13175.moment H = canonicalOutput13175.moment H :=
  canonical_of_padded canonicalInput13175 canonicalOutput13175 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput13176 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput13176 : ExponentCode := normalNode9153

theorem canonicalSound13176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13176.moment H = canonicalOutput13176.moment H :=
  canonical_of_padded canonicalInput13176 canonicalOutput13176 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13177 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13177 : ExponentCode := normalNode8383

theorem canonicalSound13177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13177.moment H = canonicalOutput13177.moment H :=
  canonical_of_padded canonicalInput13177 canonicalOutput13177 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput13178 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13178 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound13178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13178.moment H = canonicalOutput13178.moment H :=
  canonical_of_padded canonicalInput13178 canonicalOutput13178 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13179 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 0, 0, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13179 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2598⟩

theorem canonicalSound13179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13179.moment H = canonicalOutput13179.moment H :=
  canonical_of_padded canonicalInput13179 canonicalOutput13179 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput13180 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 0, 0, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13180 : ExponentCode := normalNode9073

theorem canonicalSound13180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13180.moment H = canonicalOutput13180.moment H :=
  canonical_of_padded canonicalInput13180 canonicalOutput13180 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput13181 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13181 : ExponentCode := normalNode8430

theorem canonicalSound13181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13181.moment H = canonicalOutput13181.moment H :=
  canonical_of_padded canonicalInput13181 canonicalOutput13181 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput13182 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13182 : ExponentCode := normalNode9223

theorem canonicalSound13182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13182.moment H = canonicalOutput13182.moment H :=
  canonical_of_padded canonicalInput13182 canonicalOutput13182 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput13183 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13183 : ExponentCode := normalNode9179

theorem canonicalSound13183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13183.moment H = canonicalOutput13183.moment H :=
  canonical_of_padded canonicalInput13183 canonicalOutput13183 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
