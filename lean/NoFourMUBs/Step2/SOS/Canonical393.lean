import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25152 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![0, -1, 1, -1, 1], ![2, 0, 0, -1, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput25152 : ExponentCode := normalNode1148

theorem canonicalSound25152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25152.moment H = canonicalOutput25152.moment H :=
  canonical_of_padded canonicalInput25152 canonicalOutput25152 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25153 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput25153 : ExponentCode := normalNode1550

theorem canonicalSound25153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25153.moment H = canonicalOutput25153.moment H :=
  canonical_of_padded canonicalInput25153 canonicalOutput25153 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25154 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput25154 : ExponentCode := normalNode1547

theorem canonicalSound25154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25154.moment H = canonicalOutput25154.moment H :=
  canonical_of_padded canonicalInput25154 canonicalOutput25154 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25155 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-2, -1, 1, 1, 1], ![0, 2, 0, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25155 : ExponentCode := normalNode1473

theorem canonicalSound25155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25155.moment H = canonicalOutput25155.moment H :=
  canonical_of_padded canonicalInput25155 canonicalOutput25155 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25156 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-2, -1, 1, 1, 1], ![0, 2, 0, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput25156 : ExponentCode := normalNode1626

theorem canonicalSound25156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25156.moment H = canonicalOutput25156.moment H :=
  canonical_of_padded canonicalInput25156 canonicalOutput25156 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25157 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-2, 0, 1, 1, 0], ![2, -1, 0, 0, -1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput25157 : ExponentCode := normalNode1573

theorem canonicalSound25157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25157.moment H = canonicalOutput25157.moment H :=
  canonical_of_padded canonicalInput25157 canonicalOutput25157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput25158 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-2, 1, 0, 1, 0], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput25158 : ExponentCode := normalNode1515

theorem canonicalSound25158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25158.moment H = canonicalOutput25158.moment H :=
  canonical_of_padded canonicalInput25158 canonicalOutput25158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput25159 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-2, 1, 0, 1, 0], ![2, -1, 0, 0, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25159 : ExponentCode := normalNode1563

theorem canonicalSound25159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25159.moment H = canonicalOutput25159.moment H :=
  canonical_of_padded canonicalInput25159 canonicalOutput25159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput25160 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-2, 2, 0, 0, 0], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput25160 : ExponentCode := normalNode2178

theorem canonicalSound25160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25160.moment H = canonicalOutput25160.moment H :=
  canonical_of_padded canonicalInput25160 canonicalOutput25160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25161 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![-1, 2, 0, -2, 1], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25161 : ExponentCode := normalNode1483

theorem canonicalSound25161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25161.moment H = canonicalOutput25161.moment H :=
  canonical_of_padded canonicalInput25161 canonicalOutput25161 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25162 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![-1, 2, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput25162 : ExponentCode := normalNode1571

theorem canonicalSound25162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25162.moment H = canonicalOutput25162.moment H :=
  canonical_of_padded canonicalInput25162 canonicalOutput25162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput25163 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput25163 : ExponentCode := normalNode8291

theorem canonicalSound25163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25163.moment H = canonicalOutput25163.moment H :=
  canonical_of_padded canonicalInput25163 canonicalOutput25163 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25164 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput25164 : ExponentCode := normalNode8286

theorem canonicalSound25164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25164.moment H = canonicalOutput25164.moment H :=
  canonical_of_padded canonicalInput25164 canonicalOutput25164 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25165 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![2, 0, 0, 0, -2], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput25165 : ExponentCode := normalNode1592

theorem canonicalSound25165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25165.moment H = canonicalOutput25165.moment H :=
  canonical_of_padded canonicalInput25165 canonicalOutput25165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation336, OAI.MUB6.Certificate.PairSemantics.permutation186⟩ (by decide +kernel) hH

def canonicalInput25166 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 2, -1, 1], ![2, 0, 0, -1, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput25166 : ExponentCode := normalNode1520

theorem canonicalSound25166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25166.moment H = canonicalOutput25166.moment H :=
  canonical_of_padded canonicalInput25166 canonicalOutput25166 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25167 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, -2, 2], ![-1, 2, 0, 1, -2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput25167 : ExponentCode := normalNode1528

theorem canonicalSound25167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25167.moment H = canonicalOutput25167.moment H :=
  canonical_of_padded canonicalInput25167 canonicalOutput25167 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25168 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, -2, 2], ![2, -1, 0, 0, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput25168 : ExponentCode := normalNode1143

theorem canonicalSound25168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25168.moment H = canonicalOutput25168.moment H :=
  canonical_of_padded canonicalInput25168 canonicalOutput25168 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25169 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![1, -1, 0, 0, 0], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput25169 : ExponentCode := normalNode8554

theorem canonicalSound25169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25169.moment H = canonicalOutput25169.moment H :=
  canonical_of_padded canonicalInput25169 canonicalOutput25169 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25170 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![2, -1, 0, -1, 0], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25170 : ExponentCode := normalNode2173

theorem canonicalSound25170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25170.moment H = canonicalOutput25170.moment H :=
  canonical_of_padded canonicalInput25170 canonicalOutput25170 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput25171 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![2, -1, 0, 0, -1], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput25171 : ExponentCode := normalNode1556

theorem canonicalSound25171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25171.moment H = canonicalOutput25171.moment H :=
  canonical_of_padded canonicalInput25171 canonicalOutput25171 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput25172 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput25172 : ExponentCode := normalNode1526

theorem canonicalSound25172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25172.moment H = canonicalOutput25172.moment H :=
  canonical_of_padded canonicalInput25172 canonicalOutput25172 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25173 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput25173 : ExponentCode := normalNode6559

theorem canonicalSound25173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25173.moment H = canonicalOutput25173.moment H :=
  canonical_of_padded canonicalInput25173 canonicalOutput25173 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25174 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![1, -1, 0, 0, 0], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25174 : ExponentCode := normalNode8553

theorem canonicalSound25174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25174.moment H = canonicalOutput25174.moment H :=
  canonical_of_padded canonicalInput25174 canonicalOutput25174 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25175 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, 0, 0, -2], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput25175 : ExponentCode := normalNode8354

theorem canonicalSound25175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25175.moment H = canonicalOutput25175.moment H :=
  canonical_of_padded canonicalInput25175 canonicalOutput25175 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25176 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, -1, 0, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput25176 : ExponentCode := normalNode2175

theorem canonicalSound25176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25176.moment H = canonicalOutput25176.moment H :=
  canonical_of_padded canonicalInput25176 canonicalOutput25176 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation376, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput25177 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, -1, 0, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25177 : ExponentCode := normalNode1557

theorem canonicalSound25177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25177.moment H = canonicalOutput25177.moment H :=
  canonical_of_padded canonicalInput25177 canonicalOutput25177 (by decide) (by decide)
    ⟨false, true, canonicalPermutation301, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput25178 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25178 : ExponentCode := normalNode2209

theorem canonicalSound25178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25178.moment H = canonicalOutput25178.moment H :=
  canonical_of_padded canonicalInput25178 canonicalOutput25178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25179 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![0, -1, 1, -2, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput25179 : ExponentCode := normalNode7506

theorem canonicalSound25179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25179.moment H = canonicalOutput25179.moment H :=
  canonical_of_padded canonicalInput25179 canonicalOutput25179 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25180 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, 1, -2, 1], ![0, 0, 1, 1, -2]]⟩

def canonicalOutput25180 : ExponentCode := normalNode9503

theorem canonicalSound25180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25180.moment H = canonicalOutput25180.moment H :=
  canonical_of_padded canonicalInput25180 canonicalOutput25180 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25181 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 1, 1, -1], ![1, 0, 0, 0, -1], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput25181 : ExponentCode := normalNode6590

theorem canonicalSound25181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25181.moment H = canonicalOutput25181.moment H :=
  canonical_of_padded canonicalInput25181 canonicalOutput25181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25182 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 1, 1, -1], ![2, 0, 0, 0, -2], ![-2, 2, 1, -2, 1]]⟩

def canonicalOutput25182 : ExponentCode := normalNode486

theorem canonicalSound25182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25182.moment H = canonicalOutput25182.moment H :=
  canonical_of_padded canonicalInput25182 canonicalOutput25182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25183 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![1, 0, 0, -1, 0], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput25183 : ExponentCode := normalNode6562

theorem canonicalSound25183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25183.moment H = canonicalOutput25183.moment H :=
  canonical_of_padded canonicalInput25183 canonicalOutput25183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25184 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-2, 2, 0, 1, -1]]⟩

def canonicalOutput25184 : ExponentCode := normalNode1512

theorem canonicalSound25184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25184.moment H = canonicalOutput25184.moment H :=
  canonical_of_padded canonicalInput25184 canonicalOutput25184 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput25185 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![-2, 2, 0, 1, -1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput25185 : ExponentCode := normalNode1567

theorem canonicalSound25185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25185.moment H = canonicalOutput25185.moment H :=
  canonical_of_padded canonicalInput25185 canonicalOutput25185 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25186 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![-1, 2, 0, 1, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput25186 : ExponentCode := normalNode8573

theorem canonicalSound25186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25186.moment H = canonicalOutput25186.moment H :=
  canonical_of_padded canonicalInput25186 canonicalOutput25186 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25187 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![1, -1, 0, 0, 0], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput25187 : ExponentCode := normalNode10748

theorem canonicalSound25187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25187.moment H = canonicalOutput25187.moment H :=
  canonical_of_padded canonicalInput25187 canonicalOutput25187 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25188 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-2, 2, 1, 1, -2]]⟩

def canonicalOutput25188 : ExponentCode := normalNode1157

theorem canonicalSound25188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25188.moment H = canonicalOutput25188.moment H :=
  canonical_of_padded canonicalInput25188 canonicalOutput25188 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25189 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![1, -1, 0, -1, 1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25189 : ExponentCode := normalNode9510

theorem canonicalSound25189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25189.moment H = canonicalOutput25189.moment H :=
  canonical_of_padded canonicalInput25189 canonicalOutput25189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25190 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput25190 : ExponentCode := normalNode6588

theorem canonicalSound25190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25190.moment H = canonicalOutput25190.moment H :=
  canonical_of_padded canonicalInput25190 canonicalOutput25190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25191 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, -1, 0], ![-2, 2, 1, -1, 0]]⟩

def canonicalOutput25191 : ExponentCode := normalNode1561

theorem canonicalSound25191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25191.moment H = canonicalOutput25191.moment H :=
  canonical_of_padded canonicalInput25191 canonicalOutput25191 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput25192 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, 0, -1], ![-2, 2, 1, -2, 1]]⟩

def canonicalOutput25192 : ExponentCode := normalNode487

theorem canonicalSound25192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25192.moment H = canonicalOutput25192.moment H :=
  canonical_of_padded canonicalInput25192 canonicalOutput25192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25193 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![1, -1, 0, 0, 0], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput25193 : ExponentCode := normalNode6560

theorem canonicalSound25193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25193.moment H = canonicalOutput25193.moment H :=
  canonical_of_padded canonicalInput25193 canonicalOutput25193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25194 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-2, 2, 0, 1, -1]]⟩

def canonicalOutput25194 : ExponentCode := normalNode1513

theorem canonicalSound25194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25194.moment H = canonicalOutput25194.moment H :=
  canonical_of_padded canonicalInput25194 canonicalOutput25194 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput25195 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, -1, 0, -1, 1], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput25195 : ExponentCode := normalNode9511

theorem canonicalSound25195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25195.moment H = canonicalOutput25195.moment H :=
  canonical_of_padded canonicalInput25195 canonicalOutput25195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25196 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25196 : ExponentCode := normalNode6589

theorem canonicalSound25196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25196.moment H = canonicalOutput25196.moment H :=
  canonical_of_padded canonicalInput25196 canonicalOutput25196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput25197 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, -1, 0], ![-2, 1, 2, -1, 0]]⟩

def canonicalOutput25197 : ExponentCode := normalNode1562

theorem canonicalSound25197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25197.moment H = canonicalOutput25197.moment H :=
  canonical_of_padded canonicalInput25197 canonicalOutput25197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation301, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput25198 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, 0, -1], ![-2, 1, 2, -2, 1]]⟩

def canonicalOutput25198 : ExponentCode := normalNode488

theorem canonicalSound25198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25198.moment H = canonicalOutput25198.moment H :=
  canonical_of_padded canonicalInput25198 canonicalOutput25198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25199 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25199 : ExponentCode := normalNode6820

theorem canonicalSound25199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25199.moment H = canonicalOutput25199.moment H :=
  canonical_of_padded canonicalInput25199 canonicalOutput25199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25200 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1], ![-2, 1, 1, 1, -1]]⟩

def canonicalOutput25200 : ExponentCode := normalNode2195

theorem canonicalSound25200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25200.moment H = canonicalOutput25200.moment H :=
  canonical_of_padded canonicalInput25200 canonicalOutput25200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25201 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-2, -1, 0, 2, 1], ![0, 2, -1, 0, -1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput25201 : ExponentCode := normalNode1493

theorem canonicalSound25201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25201.moment H = canonicalOutput25201.moment H :=
  canonical_of_padded canonicalInput25201 canonicalOutput25201 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25202 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-2, -1, 1, 1, 1], ![0, 1, 0, 1, -2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput25202 : ExponentCode := normalNode2152

theorem canonicalSound25202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25202.moment H = canonicalOutput25202.moment H :=
  canonical_of_padded canonicalInput25202 canonicalOutput25202 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25203 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-2, 0, -1, 2, 1], ![2, -1, 0, 0, -1], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput25203 : ExponentCode := normalNode1501

theorem canonicalSound25203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25203.moment H = canonicalOutput25203.moment H :=
  canonical_of_padded canonicalInput25203 canonicalOutput25203 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25204 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-2, 0, 0, 2, 0], ![1, -1, -1, 0, 1], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput25204 : ExponentCode := normalNode1134

theorem canonicalSound25204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25204.moment H = canonicalOutput25204.moment H :=
  canonical_of_padded canonicalInput25204 canonicalOutput25204 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25205 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-2, 1, 1, -1, 1], ![0, 1, 0, 1, -2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput25205 : ExponentCode := normalNode2154

theorem canonicalSound25205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25205.moment H = canonicalOutput25205.moment H :=
  canonical_of_padded canonicalInput25205 canonicalOutput25205 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25206 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-2, 1, 1, -1, 1], ![1, 1, 0, 0, -2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput25206 : ExponentCode := normalNode2155

theorem canonicalSound25206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25206.moment H = canonicalOutput25206.moment H :=
  canonical_of_padded canonicalInput25206 canonicalOutput25206 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25207 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, -1, 1, 2], ![2, 0, 0, -1, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput25207 : ExponentCode := normalNode1135

theorem canonicalSound25207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25207.moment H = canonicalOutput25207.moment H :=
  canonical_of_padded canonicalInput25207 canonicalOutput25207 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25208 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![-1, 2, -1, 0, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput25208 : ExponentCode := normalNode1496

theorem canonicalSound25208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25208.moment H = canonicalOutput25208.moment H :=
  canonical_of_padded canonicalInput25208 canonicalOutput25208 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25209 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput25209 : ExponentCode := normalNode8145

theorem canonicalSound25209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25209.moment H = canonicalOutput25209.moment H :=
  canonical_of_padded canonicalInput25209 canonicalOutput25209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25210 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![2, 0, -1, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25210 : ExponentCode := normalNode1543

theorem canonicalSound25210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25210.moment H = canonicalOutput25210.moment H :=
  canonical_of_padded canonicalInput25210 canonicalOutput25210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25211 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![2, 0, -1, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25211 : ExponentCode := normalNode2187

theorem canonicalSound25211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25211.moment H = canonicalOutput25211.moment H :=
  canonical_of_padded canonicalInput25211 canonicalOutput25211 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput25212 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 1, 1, 0], ![-1, 1, 0, 1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput25212 : ExponentCode := normalNode2210

theorem canonicalSound25212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25212.moment H = canonicalOutput25212.moment H :=
  canonical_of_padded canonicalInput25212 canonicalOutput25212 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25213 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput25213 : ExponentCode := normalNode8539

theorem canonicalSound25213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25213.moment H = canonicalOutput25213.moment H :=
  canonical_of_padded canonicalInput25213 canonicalOutput25213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25214 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, -1, 2, 0], ![1, -1, 0, 0, 0], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput25214 : ExponentCode := normalNode8150

theorem canonicalSound25214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25214.moment H = canonicalOutput25214.moment H :=
  canonical_of_padded canonicalInput25214 canonicalOutput25214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25215 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, -1, 2, 0], ![2, -1, 0, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25215 : ExponentCode := normalNode1538

theorem canonicalSound25215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25215.moment H = canonicalOutput25215.moment H :=
  canonical_of_padded canonicalInput25215 canonicalOutput25215 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
