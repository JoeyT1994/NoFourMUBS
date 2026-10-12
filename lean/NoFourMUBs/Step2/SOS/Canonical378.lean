import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24192 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, -2, 0], ![-1, 1, -2, 1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput24192 : ExponentCode := normalNode2931

theorem canonicalSound24192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24192.moment H = canonicalOutput24192.moment H :=
  canonical_of_padded canonicalInput24192 canonicalOutput24192 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24193 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![-2, 1, -2, 1, 2], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput24193 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code844

theorem canonicalSound24193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24193.moment H = canonicalOutput24193.moment H :=
  canonical_of_padded canonicalInput24193 canonicalOutput24193 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24194 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![-2, 3, -1, -1, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput24194 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code754

theorem canonicalSound24194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24194.moment H = canonicalOutput24194.moment H :=
  canonical_of_padded canonicalInput24194 canonicalOutput24194 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24195 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![-1, 1, -2, 1, 1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput24195 : ExponentCode := normalNode3356

theorem canonicalSound24195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24195.moment H = canonicalOutput24195.moment H :=
  canonical_of_padded canonicalInput24195 canonicalOutput24195 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24196 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![-1, 1, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24196 : ExponentCode := normalNode10456

theorem canonicalSound24196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24196.moment H = canonicalOutput24196.moment H :=
  canonical_of_padded canonicalInput24196 canonicalOutput24196 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation74⟩ (by decide +kernel) hH

def canonicalInput24197 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![-1, 1, -1, -1, 2], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24197 : ExponentCode := normalNode10458

theorem canonicalSound24197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24197.moment H = canonicalOutput24197.moment H :=
  canonical_of_padded canonicalInput24197 canonicalOutput24197 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation74⟩ (by decide +kernel) hH

def canonicalInput24198 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![-1, 3, -1, -1, 0], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput24198 : ExponentCode := normalNode3356

theorem canonicalSound24198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24198.moment H = canonicalOutput24198.moment H :=
  canonical_of_padded canonicalInput24198 canonicalOutput24198 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24199 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![-1, 1, -1, 0, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24199 : ExponentCode := normalNode8142

theorem canonicalSound24199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24199.moment H = canonicalOutput24199.moment H :=
  canonical_of_padded canonicalInput24199 canonicalOutput24199 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput24200 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![-1, 1, 0, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24200 : ExponentCode := normalNode8142

theorem canonicalSound24200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24200.moment H = canonicalOutput24200.moment H :=
  canonical_of_padded canonicalInput24200 canonicalOutput24200 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput24201 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![0, 1, -1, 0, 0], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24201 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound24201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24201.moment H = canonicalOutput24201.moment H :=
  canonical_of_padded canonicalInput24201 canonicalOutput24201 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24202 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![0, 1, 0, -1, 0], ![0, 0, -1, 0, 1]]⟩

def canonicalOutput24202 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩

theorem canonicalSound24202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24202.moment H = canonicalOutput24202.moment H :=
  canonical_of_padded canonicalInput24202 canonicalOutput24202 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24203 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![1, 0, -1, -1, 1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput24203 : ExponentCode := normalNode3753

theorem canonicalSound24203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24203.moment H = canonicalOutput24203.moment H :=
  canonical_of_padded canonicalInput24203 canonicalOutput24203 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24204 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![2, 0, -1, -1, 0], ![-2, 2, -1, -1, 2]]⟩

def canonicalOutput24204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code838

theorem canonicalSound24204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24204.moment H = canonicalOutput24204.moment H :=
  canonical_of_padded canonicalInput24204 canonicalOutput24204 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24205 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 1, -1, 1, -1], ![-2, 1, 2, -1, 0], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput24205 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound24205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24205.moment H = canonicalOutput24205.moment H :=
  canonical_of_padded canonicalInput24205 canonicalOutput24205 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24206 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 1, -1, 1, -1], ![-1, 1, 2, -1, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput24206 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1782⟩

theorem canonicalSound24206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24206.moment H = canonicalOutput24206.moment H :=
  canonical_of_padded canonicalInput24206 canonicalOutput24206 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24207 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 1, 1, -1, -1], ![-3, 1, 1, -1, 2], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput24207 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1162

theorem canonicalSound24207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24207.moment H = canonicalOutput24207.moment H :=
  canonical_of_padded canonicalInput24207 canonicalOutput24207 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24208 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 1, 1, -1, -1], ![-2, 1, 1, -1, 1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput24208 : ExponentCode := normalNode3753

theorem canonicalSound24208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24208.moment H = canonicalOutput24208.moment H :=
  canonical_of_padded canonicalInput24208 canonicalOutput24208 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24209 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 2, 0, -1, -1], ![-3, 0, 2, -1, 2], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput24209 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1178

theorem canonicalSound24209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24209.moment H = canonicalOutput24209.moment H :=
  canonical_of_padded canonicalInput24209 canonicalOutput24209 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24210 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 2, 0, -1, -1], ![-2, 0, 2, -1, 1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput24210 : ExponentCode := normalNode3751

theorem canonicalSound24210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24210.moment H = canonicalOutput24210.moment H :=
  canonical_of_padded canonicalInput24210 canonicalOutput24210 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24211 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 2, 0, -1, -1], ![-2, 1, 2, -1, 0], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput24211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2273⟩

theorem canonicalSound24211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24211.moment H = canonicalOutput24211.moment H :=
  canonical_of_padded canonicalInput24211 canonicalOutput24211 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24212 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![0, 2, 0, -1, -1], ![-1, 1, 2, -1, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput24212 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound24212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24212.moment H = canonicalOutput24212.moment H :=
  canonical_of_padded canonicalInput24212 canonicalOutput24212 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24213 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![1, 0, 1, 0, -2], ![-2, 1, 2, -2, 1], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput24213 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code875

theorem canonicalSound24213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24213.moment H = canonicalOutput24213.moment H :=
  canonical_of_padded canonicalInput24213 canonicalOutput24213 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24214 : ExponentCode := ⟨4, 5, ![![0, -2, 0, 2, 0], ![1, 0, 1, 0, -2], ![-1, 1, 2, -2, 0], ![0, 1, -3, 0, 2]]⟩

def canonicalOutput24214 : ExponentCode := normalNode3789

theorem canonicalSound24214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24214.moment H = canonicalOutput24214.moment H :=
  canonical_of_padded canonicalInput24214 canonicalOutput24214 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24215 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 3, -1], ![-1, 0, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 2, 0, -3, 1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput24215 : ExponentCode := normalNode9560

theorem canonicalSound24215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24215.moment H = canonicalOutput24215.moment H :=
  canonical_of_padded canonicalInput24215 canonicalOutput24215 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput24216 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 3, -1], ![0, 0, 1, 0, -1], ![-1, 0, 1, 0, 0], ![0, 2, 0, -3, 1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput24216 : ExponentCode := normalNode9560

theorem canonicalSound24216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24216.moment H = canonicalOutput24216.moment H :=
  canonical_of_padded canonicalInput24216 canonicalOutput24216 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput24217 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 3, -1], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![-1, 2, 0, -3, 2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput24217 : ExponentCode := normalNode9190

theorem canonicalSound24217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24217.moment H = canonicalOutput24217.moment H :=
  canonical_of_padded canonicalInput24217 canonicalOutput24217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput24218 : ExponentCode := ⟨5, 5, ![![0, -2, 0, 3, -1], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, 0, -3, 1], ![0, 0, -2, 0, 2]]⟩

def canonicalOutput24218 : ExponentCode := normalNode3364

theorem canonicalSound24218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24218.moment H = canonicalOutput24218.moment H :=
  canonical_of_padded canonicalInput24218 canonicalOutput24218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24219 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24219 : ExponentCode := normalNode8542

theorem canonicalSound24219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24219.moment H = canonicalOutput24219.moment H :=
  canonical_of_padded canonicalInput24219 canonicalOutput24219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24220 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![-1, 0, 0, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24220 : ExponentCode := normalNode10013

theorem canonicalSound24220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24220.moment H = canonicalOutput24220.moment H :=
  canonical_of_padded canonicalInput24220 canonicalOutput24220 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput24221 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![-1, 0, 0, 2, -1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24221 : ExponentCode := normalNode10759

theorem canonicalSound24221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24221.moment H = canonicalOutput24221.moment H :=
  canonical_of_padded canonicalInput24221 canonicalOutput24221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24222 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![-1, 0, 0, 3, -2], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput24222 : ExponentCode := normalNode10770

theorem canonicalSound24222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24222.moment H = canonicalOutput24222.moment H :=
  canonical_of_padded canonicalInput24222 canonicalOutput24222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24223 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 0, 1], ![-1, 1, -2, 1, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24223 : ExponentCode := normalNode4211

theorem canonicalSound24223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24223.moment H = canonicalOutput24223.moment H :=
  canonical_of_padded canonicalInput24223 canonicalOutput24223 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24224 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 1, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24224 : ExponentCode := normalNode7497

theorem canonicalSound24224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24224.moment H = canonicalOutput24224.moment H :=
  canonical_of_padded canonicalInput24224 canonicalOutput24224 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation175⟩ (by decide +kernel) hH

def canonicalInput24225 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 1, 1, 2, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24225 : ExponentCode := normalNode8589

theorem canonicalSound24225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24225.moment H = canonicalOutput24225.moment H :=
  canonical_of_padded canonicalInput24225 canonicalOutput24225 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput24226 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24226 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound24226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24226.moment H = canonicalOutput24226.moment H :=
  canonical_of_padded canonicalInput24226 canonicalOutput24226 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24227 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, -1, 1], ![-1, 1, -2, 1, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24227 : ExponentCode := normalNode8614

theorem canonicalSound24227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24227.moment H = canonicalOutput24227.moment H :=
  canonical_of_padded canonicalInput24227 canonicalOutput24227 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation175⟩ (by decide +kernel) hH

def canonicalInput24228 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![-1, 1, 1, 2, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24228 : ExponentCode := normalNode8241

theorem canonicalSound24228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24228.moment H = canonicalOutput24228.moment H :=
  canonical_of_padded canonicalInput24228 canonicalOutput24228 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation175⟩ (by decide +kernel) hH

def canonicalInput24229 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![0, 0, 0, 0, 0]]⟩

def canonicalOutput24229 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound24229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24229.moment H = canonicalOutput24229.moment H :=
  canonical_of_padded canonicalInput24229 canonicalOutput24229 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24230 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![-1, 1, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24230 : ExponentCode := normalNode6837

theorem canonicalSound24230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24230.moment H = canonicalOutput24230.moment H :=
  canonical_of_padded canonicalInput24230 canonicalOutput24230 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24231 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -2, 0, 1], ![-1, 1, 1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24231 : ExponentCode := normalNode10767

theorem canonicalSound24231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24231.moment H = canonicalOutput24231.moment H :=
  canonical_of_padded canonicalInput24231 canonicalOutput24231 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24232 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24232 : ExponentCode := normalNode10529

theorem canonicalSound24232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24232.moment H = canonicalOutput24232.moment H :=
  canonical_of_padded canonicalInput24232 canonicalOutput24232 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24233 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![-1, 1, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput24233 : ExponentCode := normalNode6839

theorem canonicalSound24233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24233.moment H = canonicalOutput24233.moment H :=
  canonical_of_padded canonicalInput24233 canonicalOutput24233 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24234 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 0, 1], ![-1, 1, 1, 1, -2], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput24234 : ExponentCode := normalNode10771

theorem canonicalSound24234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24234.moment H = canonicalOutput24234.moment H :=
  canonical_of_padded canonicalInput24234 canonicalOutput24234 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24235 : ExponentCode := ⟨5, 5, ![![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![0, 0, 0, -2, 2]]⟩

def canonicalOutput24235 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound24235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24235.moment H = canonicalOutput24235.moment H :=
  canonical_of_padded canonicalInput24235 canonicalOutput24235 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24236 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![-1, 1, 1, 2, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24236 : ExponentCode := normalNode3768

theorem canonicalSound24236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24236.moment H = canonicalOutput24236.moment H :=
  canonical_of_padded canonicalInput24236 canonicalOutput24236 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24237 : ExponentCode := ⟨4, 5, ![![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24237 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound24237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24237.moment H = canonicalOutput24237.moment H :=
  canonical_of_padded canonicalInput24237 canonicalOutput24237 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24238 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, -1, -1, 3], ![0, 3, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput24238 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound24238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24238.moment H = canonicalOutput24238.moment H :=
  canonical_of_padded canonicalInput24238 canonicalOutput24238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24239 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, -1, -1, 3], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput24239 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound24239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24239.moment H = canonicalOutput24239.moment H :=
  canonical_of_padded canonicalInput24239 canonicalOutput24239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24240 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, -1, 0, 2], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput24240 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1278⟩

theorem canonicalSound24240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24240.moment H = canonicalOutput24240.moment H :=
  canonical_of_padded canonicalInput24240 canonicalOutput24240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24241 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput24241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound24241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24241.moment H = canonicalOutput24241.moment H :=
  canonical_of_padded canonicalInput24241 canonicalOutput24241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24242 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, -1, 2, 0], ![0, 2, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput24242 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound24242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24242.moment H = canonicalOutput24242.moment H :=
  canonical_of_padded canonicalInput24242 canonicalOutput24242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24243 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput24243 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound24243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24243.moment H = canonicalOutput24243.moment H :=
  canonical_of_padded canonicalInput24243 canonicalOutput24243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24244 : ExponentCode := ⟨5, 4, ![![0, -2, 1, 1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput24244 : ExponentCode := normalNode10227

theorem canonicalSound24244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24244.moment H = canonicalOutput24244.moment H :=
  canonical_of_padded canonicalInput24244 canonicalOutput24244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24245 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput24245 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound24245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24245.moment H = canonicalOutput24245.moment H :=
  canonical_of_padded canonicalInput24245 canonicalOutput24245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24246 : ExponentCode := ⟨5, 4, ![![0, -2, 1, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24246 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound24246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24246.moment H = canonicalOutput24246.moment H :=
  canonical_of_padded canonicalInput24246 canonicalOutput24246 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24247 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 0, 1, 0], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24247 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound24247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24247.moment H = canonicalOutput24247.moment H :=
  canonical_of_padded canonicalInput24247 canonicalOutput24247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput24248 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 0, 1, 0], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput24248 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound24248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24248.moment H = canonicalOutput24248.moment H :=
  canonical_of_padded canonicalInput24248 canonicalOutput24248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24249 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 0, 2, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput24249 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound24249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24249.moment H = canonicalOutput24249.moment H :=
  canonical_of_padded canonicalInput24249 canonicalOutput24249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24250 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24250 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound24250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24250.moment H = canonicalOutput24250.moment H :=
  canonical_of_padded canonicalInput24250 canonicalOutput24250 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24251 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -3, 3], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput24251 : ExponentCode := normalNode10564

theorem canonicalSound24251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24251.moment H = canonicalOutput24251.moment H :=
  canonical_of_padded canonicalInput24251 canonicalOutput24251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24252 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput24252 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound24252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24252.moment H = canonicalOutput24252.moment H :=
  canonical_of_padded canonicalInput24252 canonicalOutput24252 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24253 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24253 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound24253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24253.moment H = canonicalOutput24253.moment H :=
  canonical_of_padded canonicalInput24253 canonicalOutput24253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24254 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -2, 2], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput24254 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1283⟩

theorem canonicalSound24254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24254.moment H = canonicalOutput24254.moment H :=
  canonical_of_padded canonicalInput24254 canonicalOutput24254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24255 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -2, 2], ![0, 2, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput24255 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node849⟩

theorem canonicalSound24255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24255.moment H = canonicalOutput24255.moment H :=
  canonical_of_padded canonicalInput24255 canonicalOutput24255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
