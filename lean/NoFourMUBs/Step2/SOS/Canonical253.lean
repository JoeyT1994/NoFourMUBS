import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16192 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, 2, -1], ![0, 1, -1, -1, 1], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput16192 : ExponentCode := normalNode2809

theorem canonicalSound16192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16192.moment H = canonicalOutput16192.moment H :=
  canonical_of_padded canonicalInput16192 canonicalOutput16192 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16193 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![1, -1, 0, 0, 0], ![1, 0, 0, 0, -1], ![-1, 2, 0, 0, -1], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput16193 : ExponentCode := normalNode3638

theorem canonicalSound16193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16193.moment H = canonicalOutput16193.moment H :=
  canonical_of_padded canonicalInput16193 canonicalOutput16193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput16194 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput16194 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound16194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16194.moment H = canonicalOutput16194.moment H :=
  canonical_of_padded canonicalInput16194 canonicalOutput16194 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16195 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, 1, 1, -2], ![0, 0, -2, 1, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput16195 : ExponentCode := normalNode2575

theorem canonicalSound16195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16195.moment H = canonicalOutput16195.moment H :=
  canonical_of_padded canonicalInput16195 canonicalOutput16195 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16196 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, 1, 1, -2], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput16196 : ExponentCode := normalNode3994

theorem canonicalSound16196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16196.moment H = canonicalOutput16196.moment H :=
  canonical_of_padded canonicalInput16196 canonicalOutput16196 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16197 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, 1, 2, -3], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1]]⟩

def canonicalOutput16197 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1950⟩

theorem canonicalSound16197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16197.moment H = canonicalOutput16197.moment H :=
  canonical_of_padded canonicalInput16197 canonicalOutput16197 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16198 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, 0, -1, 1, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput16198 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound16198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16198.moment H = canonicalOutput16198.moment H :=
  canonical_of_padded canonicalInput16198 canonicalOutput16198 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput16199 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, 0, -1, 2, -2], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput16199 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound16199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16199.moment H = canonicalOutput16199.moment H :=
  canonical_of_padded canonicalInput16199 canonicalOutput16199 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16200 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, 0, 0, -2, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16200 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound16200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16200.moment H = canonicalOutput16200.moment H :=
  canonical_of_padded canonicalInput16200 canonicalOutput16200 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16201 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, 0, 0, 1, -2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16201 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound16201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16201.moment H = canonicalOutput16201.moment H :=
  canonical_of_padded canonicalInput16201 canonicalOutput16201 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16202 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 2, 0], ![0, 0, -1, -2, 0, 3], ![0, 0, 0, 2, 0, -2], ![0, 1, 0, 0, -1, 0], ![1, 0, 1, 0, -1, -1]]⟩

def canonicalOutput16202 : ExponentCode := normalNode9138

theorem canonicalSound16202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16202.moment H = canonicalOutput16202.moment H :=
  canonical_of_padded canonicalInput16202 canonicalOutput16202 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation304, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput16203 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 2, 0], ![0, 0, -1, -2, 0, 3], ![0, 0, 0, 2, 0, -2], ![0, 1, 1, 0, -1, -1], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput16203 : ExponentCode := normalNode9138

theorem canonicalSound16203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16203.moment H = canonicalOutput16203.moment H :=
  canonical_of_padded canonicalInput16203 canonicalOutput16203 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation306, canonicalPermutation46⟩ (by decide +kernel) hH

def canonicalInput16204 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 2, 0], ![0, 0, -1, -2, 0, 3], ![0, 0, 1, 2, 0, -3], ![0, 1, 0, 0, -1, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput16204 : ExponentCode := normalNode9556

theorem canonicalSound16204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16204.moment H = canonicalOutput16204.moment H :=
  canonical_of_padded canonicalInput16204 canonicalOutput16204 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput16205 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 2, 0], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, 2, 0, -2], ![0, 1, 0, 0, -1, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput16205 : ExponentCode := normalNode8295

theorem canonicalSound16205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16205.moment H = canonicalOutput16205.moment H :=
  canonical_of_padded canonicalInput16205 canonicalOutput16205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation126⟩ (by decide +kernel) hH

def canonicalInput16206 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 1, -2, 3], ![0, 0, 0, 0, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput16206 : ExponentCode := normalNode10366

theorem canonicalSound16206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16206.moment H = canonicalOutput16206.moment H :=
  canonical_of_padded canonicalInput16206 canonicalOutput16206 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation392, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput16207 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 1, -1, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, 1, 0, -1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput16207 : ExponentCode := normalNode8379

theorem canonicalSound16207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16207.moment H = canonicalOutput16207.moment H :=
  canonical_of_padded canonicalInput16207 canonicalOutput16207 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation408, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput16208 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 1, -1, 2], ![0, 0, 0, 0, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput16208 : ExponentCode := normalNode10452

theorem canonicalSound16208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16208.moment H = canonicalOutput16208.moment H :=
  canonical_of_padded canonicalInput16208 canonicalOutput16208 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput16209 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-3, 1, 1, 1, 0], ![1, 1, -2, -1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput16209 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1282

theorem canonicalSound16209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16209.moment H = canonicalOutput16209.moment H :=
  canonical_of_padded canonicalInput16209 canonicalOutput16209 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16210 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-3, 1, 1, 1, 0], ![2, -1, -2, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput16210 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1286

theorem canonicalSound16210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16210.moment H = canonicalOutput16210.moment H :=
  canonical_of_padded canonicalInput16210 canonicalOutput16210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16211 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-3, 2, 1, 0, 0], ![2, -1, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput16211 : ExponentCode := normalNode6189

theorem canonicalSound16211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16211.moment H = canonicalOutput16211.moment H :=
  canonical_of_padded canonicalInput16211 canonicalOutput16211 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16212 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-3, 2, 1, 0, 0], ![2, -1, 1, -2, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16212 : ExponentCode := normalNode6191

theorem canonicalSound16212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16212.moment H = canonicalOutput16212.moment H :=
  canonical_of_padded canonicalInput16212 canonicalOutput16212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16213 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, -1, 1, 1, 1], ![0, 2, -2, 0, 0], ![3, 0, 1, -2, -2]]⟩

def canonicalOutput16213 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code959

theorem canonicalSound16213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16213.moment H = canonicalOutput16213.moment H :=
  canonical_of_padded canonicalInput16213 canonicalOutput16213 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16214 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, -1, 3, 0, 0], ![0, 2, -2, 1, -1], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput16214 : ExponentCode := normalNode6645

theorem canonicalSound16214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16214.moment H = canonicalOutput16214.moment H :=
  canonical_of_padded canonicalInput16214 canonicalOutput16214 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16215 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput16215 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound16215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16215.moment H = canonicalOutput16215.moment H :=
  canonical_of_padded canonicalInput16215 canonicalOutput16215 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16216 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 0, 3, -2, 1], ![0, 2, -2, 1, -1], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput16216 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1375

theorem canonicalSound16216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16216.moment H = canonicalOutput16216.moment H :=
  canonical_of_padded canonicalInput16216 canonicalOutput16216 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16217 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, -1, 1, 1], ![1, -1, 2, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput16217 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1306

theorem canonicalSound16217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16217.moment H = canonicalOutput16217.moment H :=
  canonical_of_padded canonicalInput16217 canonicalOutput16217 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16218 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, 0, 1, 0], ![1, 1, -2, -1, 1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput16218 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code574

theorem canonicalSound16218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16218.moment H = canonicalOutput16218.moment H :=
  canonical_of_padded canonicalInput16218 canonicalOutput16218 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16219 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, 0, 1, 0], ![1, 1, -2, 0, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput16219 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩

theorem canonicalSound16219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16219.moment H = canonicalOutput16219.moment H :=
  canonical_of_padded canonicalInput16219 canonicalOutput16219 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16220 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, 0, 1, 0], ![2, -1, -2, 0, 1], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput16220 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code672

theorem canonicalSound16220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16220.moment H = canonicalOutput16220.moment H :=
  canonical_of_padded canonicalInput16220 canonicalOutput16220 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16221 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, 1, -1, 1], ![0, 1, -2, 1, 0], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput16221 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code960

theorem canonicalSound16221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16221.moment H = canonicalOutput16221.moment H :=
  canonical_of_padded canonicalInput16221 canonicalOutput16221 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16222 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, 1, 0, 0], ![0, 1, -2, 1, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput16222 : ExponentCode := normalNode2130

theorem canonicalSound16222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16222.moment H = canonicalOutput16222.moment H :=
  canonical_of_padded canonicalInput16222 canonicalOutput16222 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16223 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 1, 1, 0, 0], ![1, 1, -2, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput16223 : ExponentCode := normalNode2826

theorem canonicalSound16223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16223.moment H = canonicalOutput16223.moment H :=
  canonical_of_padded canonicalInput16223 canonicalOutput16223 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16224 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, -2, 1, 1], ![3, -1, 2, -2, -2]]⟩

def canonicalOutput16224 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1320

theorem canonicalSound16224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16224.moment H = canonicalOutput16224.moment H :=
  canonical_of_padded canonicalInput16224 canonicalOutput16224 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16225 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 0, 0, 0], ![0, 0, 2, -2, 0], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput16225 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1693⟩

theorem canonicalSound16225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16225.moment H = canonicalOutput16225.moment H :=
  canonical_of_padded canonicalInput16225 canonicalOutput16225 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16226 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 0, 0, 0], ![1, -1, 2, -2, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16226 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound16226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16226.moment H = canonicalOutput16226.moment H :=
  canonical_of_padded canonicalInput16226 canonicalOutput16226 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16227 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 0, 0, 0], ![1, 0, -2, 1, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput16227 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1757⟩

theorem canonicalSound16227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16227.moment H = canonicalOutput16227.moment H :=
  canonical_of_padded canonicalInput16227 canonicalOutput16227 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16228 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 0, 0, 0], ![1, 0, 2, -2, -1], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16228 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1808⟩

theorem canonicalSound16228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16228.moment H = canonicalOutput16228.moment H :=
  canonical_of_padded canonicalInput16228 canonicalOutput16228 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16229 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 1, 0, -1], ![1, -1, -2, 1, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput16229 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1314

theorem canonicalSound16229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16229.moment H = canonicalOutput16229.moment H :=
  canonical_of_padded canonicalInput16229 canonicalOutput16229 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16230 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 1, 0, -1], ![1, -1, 1, -2, 1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1315

theorem canonicalSound16230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16230.moment H = canonicalOutput16230.moment H :=
  canonical_of_padded canonicalInput16230 canonicalOutput16230 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16231 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 1, 0, -1], ![2, -1, -2, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16231 : ExponentCode := normalNode5432

theorem canonicalSound16231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16231.moment H = canonicalOutput16231.moment H :=
  canonical_of_padded canonicalInput16231 canonicalOutput16231 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16232 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-2, 2, 1, 0, -1], ![2, -1, 1, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16232 : ExponentCode := normalNode4305

theorem canonicalSound16232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16232.moment H = canonicalOutput16232.moment H :=
  canonical_of_padded canonicalInput16232 canonicalOutput16232 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16233 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -2, 2, 0, 1], ![0, 2, 0, -2, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput16233 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1160

theorem canonicalSound16233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16233.moment H = canonicalOutput16233.moment H :=
  canonical_of_padded canonicalInput16233 canonicalOutput16233 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16234 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -2, 2, 0, 1], ![0, 3, -1, -2, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput16234 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1300

theorem canonicalSound16234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16234.moment H = canonicalOutput16234.moment H :=
  canonical_of_padded canonicalInput16234 canonicalOutput16234 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16235 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 0, 1], ![-1, 2, 1, -2, 0], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput16235 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1334

theorem canonicalSound16235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16235.moment H = canonicalOutput16235.moment H :=
  canonical_of_padded canonicalInput16235 canonicalOutput16235 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16236 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![-1, 2, -2, 0, 1], ![3, 0, 1, -2, -2]]⟩

def canonicalOutput16236 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1334

theorem canonicalSound16236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16236.moment H = canonicalOutput16236.moment H :=
  canonical_of_padded canonicalInput16236 canonicalOutput16236 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16237 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![-1, 2, 1, -2, 0], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput16237 : ExponentCode := normalNode7667

theorem canonicalSound16237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16237.moment H = canonicalOutput16237.moment H :=
  canonical_of_padded canonicalInput16237 canonicalOutput16237 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16238 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput16238 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code972

theorem canonicalSound16238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16238.moment H = canonicalOutput16238.moment H :=
  canonical_of_padded canonicalInput16238 canonicalOutput16238 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16239 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![0, 1, 1, -1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput16239 : ExponentCode := normalNode8786

theorem canonicalSound16239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16239.moment H = canonicalOutput16239.moment H :=
  canonical_of_padded canonicalInput16239 canonicalOutput16239 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16240 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![0, 1, 1, 0, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput16240 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code972

theorem canonicalSound16240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16240.moment H = canonicalOutput16240.moment H :=
  canonical_of_padded canonicalInput16240 canonicalOutput16240 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16241 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![0, 2, -2, 0, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput16241 : ExponentCode := normalNode4299

theorem canonicalSound16241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16241.moment H = canonicalOutput16241.moment H :=
  canonical_of_padded canonicalInput16241 canonicalOutput16241 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16242 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![0, 3, -2, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput16242 : ExponentCode := normalNode7666

theorem canonicalSound16242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16242.moment H = canonicalOutput16242.moment H :=
  canonical_of_padded canonicalInput16242 canonicalOutput16242 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16243 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![1, 0, 1, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput16243 : ExponentCode := normalNode5625

theorem canonicalSound16243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16243.moment H = canonicalOutput16243.moment H :=
  canonical_of_padded canonicalInput16243 canonicalOutput16243 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16244 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![1, 1, -2, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput16244 : ExponentCode := normalNode4560

theorem canonicalSound16244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16244.moment H = canonicalOutput16244.moment H :=
  canonical_of_padded canonicalInput16244 canonicalOutput16244 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16245 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 1, 1, 0], ![1, 1, -2, 1, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput16245 : ExponentCode := normalNode7719

theorem canonicalSound16245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16245.moment H = canonicalOutput16245.moment H :=
  canonical_of_padded canonicalInput16245 canonicalOutput16245 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16246 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![-1, 2, -2, 1, 0], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput16246 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1335

theorem canonicalSound16246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16246.moment H = canonicalOutput16246.moment H :=
  canonical_of_padded canonicalInput16246 canonicalOutput16246 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16247 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![-1, 3, -1, -1, 0], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput16247 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1338

theorem canonicalSound16247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16247.moment H = canonicalOutput16247.moment H :=
  canonical_of_padded canonicalInput16247 canonicalOutput16247 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16248 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 1, -2, 1, 0], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput16248 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound16248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16248.moment H = canonicalOutput16248.moment H :=
  canonical_of_padded canonicalInput16248 canonicalOutput16248 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16249 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 1, -1, 1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput16249 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound16249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16249.moment H = canonicalOutput16249.moment H :=
  canonical_of_padded canonicalInput16249 canonicalOutput16249 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16250 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 1, 0, 1, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput16250 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound16250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16250.moment H = canonicalOutput16250.moment H :=
  canonical_of_padded canonicalInput16250 canonicalOutput16250 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16251 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 1, 1, 1, -3], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput16251 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1360

theorem canonicalSound16251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16251.moment H = canonicalOutput16251.moment H :=
  canonical_of_padded canonicalInput16251 canonicalOutput16251 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16252 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 2, -1, -1, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput16252 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound16252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16252.moment H = canonicalOutput16252.moment H :=
  canonical_of_padded canonicalInput16252 canonicalOutput16252 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16253 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 2, 0, -1, -1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound16253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16253.moment H = canonicalOutput16253.moment H :=
  canonical_of_padded canonicalInput16253 canonicalOutput16253 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16254 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 2, 1, -1, -2], ![2, 0, -3, 1, 0]]⟩

def canonicalOutput16254 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1363

theorem canonicalSound16254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16254.moment H = canonicalOutput16254.moment H :=
  canonical_of_padded canonicalInput16254 canonicalOutput16254 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16255 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![1, 0, -1, 1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput16255 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound16255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16255.moment H = canonicalOutput16255.moment H :=
  canonical_of_padded canonicalInput16255 canonicalOutput16255 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
