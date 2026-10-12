import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput192 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput192 : ExponentCode := normalNode6956

theorem canonicalSound192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput192.moment H = canonicalOutput192.moment H :=
  canonical_of_padded canonicalInput192 canonicalOutput192 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput193 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -2, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput193 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1106

theorem canonicalSound193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput193.moment H = canonicalOutput193.moment H :=
  canonical_of_padded canonicalInput193 canonicalOutput193 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput194 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput194 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node789⟩

theorem canonicalSound194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput194.moment H = canonicalOutput194.moment H :=
  canonical_of_padded canonicalInput194 canonicalOutput194 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput195 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -2, 0], ![1, 0, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput195 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node479⟩

theorem canonicalSound195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput195.moment H = canonicalOutput195.moment H :=
  canonical_of_padded canonicalInput195 canonicalOutput195 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput196 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -2, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput196 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code536

theorem canonicalSound196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput196.moment H = canonicalOutput196.moment H :=
  canonical_of_padded canonicalInput196 canonicalOutput196 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput197 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -2, 0], ![1, 1, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput197 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node479⟩

theorem canonicalSound197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput197.moment H = canonicalOutput197.moment H :=
  canonical_of_padded canonicalInput197 canonicalOutput197 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput198 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -1, -1], ![1, -1, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput198 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1109

theorem canonicalSound198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput198.moment H = canonicalOutput198.moment H :=
  canonical_of_padded canonicalInput198 canonicalOutput198 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput199 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 2, -1, -1], ![1, 0, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput199 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput199.moment H = canonicalOutput199.moment H :=
  canonical_of_padded canonicalInput199 canonicalOutput199 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput200 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 3, -3, 0], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput200 : ExponentCode := normalNode6705

theorem canonicalSound200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput200.moment H = canonicalOutput200.moment H :=
  canonical_of_padded canonicalInput200 canonicalOutput200 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput201 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 3, -3, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput201 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code443

theorem canonicalSound201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput201.moment H = canonicalOutput201.moment H :=
  canonical_of_padded canonicalInput201 canonicalOutput201 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput202 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 3, -2, -1], ![1, -1, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput202 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code475

theorem canonicalSound202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput202.moment H = canonicalOutput202.moment H :=
  canonical_of_padded canonicalInput202 canonicalOutput202 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput203 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![0, 3, -2, -1], ![1, 0, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput203 : ExponentCode := normalNode6781

theorem canonicalSound203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput203.moment H = canonicalOutput203.moment H :=
  canonical_of_padded canonicalInput203 canonicalOutput203 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput204 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![1, -1, 1, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1349

theorem canonicalSound204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput204.moment H = canonicalOutput204.moment H :=
  canonical_of_padded canonicalInput204 canonicalOutput204 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput205 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![1, -1, 1, -1], ![1, 2, -2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput205 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1349

theorem canonicalSound205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput205.moment H = canonicalOutput205.moment H :=
  canonical_of_padded canonicalInput205 canonicalOutput205 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput206 : ExponentCode := ⟨4, 4, ![![-3, -2, 2, 3], ![1, 0, 0, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput206 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node930⟩

theorem canonicalSound206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput206.moment H = canonicalOutput206.moment H :=
  canonical_of_padded canonicalInput206 canonicalOutput206 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput207 : ExponentCode := ⟨4, 4, ![![-3, -2, 3, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput207 : ExponentCode := normalNode6958

theorem canonicalSound207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput207.moment H = canonicalOutput207.moment H :=
  canonical_of_padded canonicalInput207 canonicalOutput207 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput208 : ExponentCode := ⟨2, 4, ![![-3, -2, 4, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput208 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node15⟩

theorem canonicalSound208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput208.moment H = canonicalOutput208.moment H :=
  canonical_of_padded canonicalInput208 canonicalOutput208 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput209 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 0, 0], ![0, 1, -1], ![3, 1, -4]]⟩

def canonicalOutput209 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput209.moment H = canonicalOutput209.moment H :=
  canonical_of_padded canonicalInput209 canonicalOutput209 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput210 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 0, 0], ![1, 0, -1], ![2, 2, -4]]⟩

def canonicalOutput210 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩

theorem canonicalSound210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput210.moment H = canonicalOutput210.moment H :=
  canonical_of_padded canonicalInput210 canonicalOutput210 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput211 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 0, 0], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput211 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩

theorem canonicalSound211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput211.moment H = canonicalOutput211.moment H :=
  canonical_of_padded canonicalInput211 canonicalOutput211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput212 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 1, -1], ![0, 0, 0], ![3, 1, -4]]⟩

def canonicalOutput212 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput212.moment H = canonicalOutput212.moment H :=
  canonical_of_padded canonicalInput212 canonicalOutput212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput213 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 1, -1], ![0, 1, -1], ![3, 0, -3]]⟩

def canonicalOutput213 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node129⟩

theorem canonicalSound213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput213.moment H = canonicalOutput213.moment H :=
  canonical_of_padded canonicalInput213 canonicalOutput213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput214 : ExponentCode := ⟨5, 3, ![![-3, -2, 5], ![0, 1, -1], ![0, 2, -2], ![0, 1, -1], ![3, -2, -1]]⟩

def canonicalOutput214 : ExponentCode := normalNode55

theorem canonicalSound214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput214.moment H = canonicalOutput214.moment H :=
  canonical_of_padded canonicalInput214 canonicalOutput214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput215 : ExponentCode := ⟨5, 3, ![![-3, -2, 5], ![0, 1, -1], ![1, 0, -1], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput215 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node301⟩

theorem canonicalSound215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput215.moment H = canonicalOutput215.moment H :=
  canonical_of_padded canonicalInput215 canonicalOutput215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput216 : ExponentCode := ⟨3, 3, ![![-3, -2, 5], ![0, 1, -1], ![3, 1, -4]]⟩

def canonicalOutput216 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput216.moment H = canonicalOutput216.moment H :=
  canonical_of_padded canonicalInput216 canonicalOutput216 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput217 : ExponentCode := ⟨5, 3, ![![-3, -2, 5], ![0, 2, -2], ![0, 1, -1], ![0, 1, -1], ![3, -2, -1]]⟩

def canonicalOutput217 : ExponentCode := normalNode55

theorem canonicalSound217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput217.moment H = canonicalOutput217.moment H :=
  canonical_of_padded canonicalInput217 canonicalOutput217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput218 : ExponentCode := ⟨5, 3, ![![-3, -2, 5], ![0, 2, -2], ![0, 1, -1], ![1, 1, -2], ![2, -2, 0]]⟩

def canonicalOutput218 : ExponentCode := normalNode59

theorem canonicalSound218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput218.moment H = canonicalOutput218.moment H :=
  canonical_of_padded canonicalInput218 canonicalOutput218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput219 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 2, -2], ![0, 1, -1], ![3, -1, -2]]⟩

def canonicalOutput219 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput219.moment H = canonicalOutput219.moment H :=
  canonical_of_padded canonicalInput219 canonicalOutput219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput220 : ExponentCode := ⟨5, 3, ![![-3, -2, 5], ![0, 2, -2], ![1, 0, -1], ![1, -1, 0], ![1, 1, -2]]⟩

def canonicalOutput220 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node303⟩

theorem canonicalSound220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput220.moment H = canonicalOutput220.moment H :=
  canonical_of_padded canonicalInput220 canonicalOutput220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput221 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 2, -2], ![2, -2, 0], ![1, 2, -3]]⟩

def canonicalOutput221 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code24

theorem canonicalSound221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput221.moment H = canonicalOutput221.moment H :=
  canonical_of_padded canonicalInput221 canonicalOutput221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput222 : ExponentCode := ⟨5, 3, ![![-3, -2, 5], ![0, 3, -3], ![1, 0, -1], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput222 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node304⟩

theorem canonicalSound222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput222.moment H = canonicalOutput222.moment H :=
  canonical_of_padded canonicalInput222 canonicalOutput222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput223 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 3, -3], ![2, -2, 0], ![1, 1, -2]]⟩

def canonicalOutput223 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code25

theorem canonicalSound223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput223.moment H = canonicalOutput223.moment H :=
  canonical_of_padded canonicalInput223 canonicalOutput223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput224 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![0, 4, -4], ![2, -2, 0], ![1, 0, -1]]⟩

def canonicalOutput224 : ExponentCode := normalNode70

theorem canonicalSound224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput224.moment H = canonicalOutput224.moment H :=
  canonical_of_padded canonicalInput224 canonicalOutput224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput225 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![1, 0, -1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput225 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node77⟩

theorem canonicalSound225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput225.moment H = canonicalOutput225.moment H :=
  canonical_of_padded canonicalInput225 canonicalOutput225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput226 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![1, 1, -2], ![0, 2, -2], ![2, -1, -1]]⟩

def canonicalOutput226 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput226.moment H = canonicalOutput226.moment H :=
  canonical_of_padded canonicalInput226 canonicalOutput226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput227 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![1, 1, -2], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput227 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput227.moment H = canonicalOutput227.moment H :=
  canonical_of_padded canonicalInput227 canonicalOutput227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput228 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![1, 2, -3], ![1, -1, 0], ![1, 1, -2]]⟩

def canonicalOutput228 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput228.moment H = canonicalOutput228.moment H :=
  canonical_of_padded canonicalInput228 canonicalOutput228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput229 : ExponentCode := ⟨4, 3, ![![-3, -2, 5], ![1, 3, -4], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput229 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node77⟩

theorem canonicalSound229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput229.moment H = canonicalOutput229.moment H :=
  canonical_of_padded canonicalInput229 canonicalOutput229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput230 : ExponentCode := ⟨3, 3, ![![-3, -2, 5], ![1, 4, -5], ![2, -2, 0]]⟩

def canonicalOutput230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code245

theorem canonicalSound230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput230.moment H = canonicalOutput230.moment H :=
  canonical_of_padded canonicalInput230 canonicalOutput230 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput231 : ExponentCode := ⟨3, 3, ![![-3, -2, 5], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput231 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code245

theorem canonicalSound231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput231.moment H = canonicalOutput231.moment H :=
  canonical_of_padded canonicalInput231 canonicalOutput231 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput232 : ExponentCode := ⟨3, 5, ![![-3, -1, 0, 2, 2], ![1, -1, 2, -1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput232 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1038

theorem canonicalSound232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput232.moment H = canonicalOutput232.moment H :=
  canonical_of_padded canonicalInput232 canonicalOutput232 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput233 : ExponentCode := ⟨3, 5, ![![-3, -1, 0, 2, 2], ![1, 2, -2, 0, -1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput233 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1036

theorem canonicalSound233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput233.moment H = canonicalOutput233.moment H :=
  canonical_of_padded canonicalInput233 canonicalOutput233 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput234 : ExponentCode := ⟨3, 5, ![![-3, -1, 1, 1, 2], ![0, 2, -2, 1, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput234 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput234.moment H = canonicalOutput234.moment H :=
  canonical_of_padded canonicalInput234 canonicalOutput234 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput235 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![-2, 2, 1, -1], ![5, -1, -2, -2]]⟩

def canonicalOutput235 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput235.moment H = canonicalOutput235.moment H :=
  canonical_of_padded canonicalInput235 canonicalOutput235 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput236 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![-1, 2, -2, 1], ![4, -1, 1, -4]]⟩

def canonicalOutput236 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput236.moment H = canonicalOutput236.moment H :=
  canonical_of_padded canonicalInput236 canonicalOutput236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput237 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![-1, 2, 2, -3], ![4, -1, -3, 0]]⟩

def canonicalOutput237 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code7

theorem canonicalSound237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput237.moment H = canonicalOutput237.moment H :=
  canonical_of_padded canonicalInput237 canonicalOutput237 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput238 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -2, 2, 0], ![0, 2, -1, -1], ![3, 1, -2, -2]]⟩

def canonicalOutput238 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1130

theorem canonicalSound238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput238.moment H = canonicalOutput238.moment H :=
  canonical_of_padded canonicalInput238 canonicalOutput238 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput239 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -2, 2, 0], ![0, 3, -2, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput239 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1070

theorem canonicalSound239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput239.moment H = canonicalOutput239.moment H :=
  canonical_of_padded canonicalInput239 canonicalOutput239 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput240 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -2, 2, 0], ![1, 3, -2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput240 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code780

theorem canonicalSound240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput240.moment H = canonicalOutput240.moment H :=
  canonical_of_padded canonicalInput240 canonicalOutput240 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput241 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 2, -1, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput241.moment H = canonicalOutput241.moment H :=
  canonical_of_padded canonicalInput241 canonicalOutput241 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput242 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput242 : ExponentCode := normalNode9815

theorem canonicalSound242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput242.moment H = canonicalOutput242.moment H :=
  canonical_of_padded canonicalInput242 canonicalOutput242 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput243 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, -1, 0, -2]]⟩

def canonicalOutput243 : ExponentCode := normalNode6023

theorem canonicalSound243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput243.moment H = canonicalOutput243.moment H :=
  canonical_of_padded canonicalInput243 canonicalOutput243 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput244 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, 0, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput244 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2284⟩

theorem canonicalSound244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput244.moment H = canonicalOutput244.moment H :=
  canonical_of_padded canonicalInput244 canonicalOutput244 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput245 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -1, 1, 0], ![0, 2, -1, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput245 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput245.moment H = canonicalOutput245.moment H :=
  canonical_of_padded canonicalInput245 canonicalOutput245 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput246 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput246 : ExponentCode := normalNode1747

theorem canonicalSound246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput246.moment H = canonicalOutput246.moment H :=
  canonical_of_padded canonicalInput246 canonicalOutput246 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput247 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput247 : ExponentCode := normalNode6040

theorem canonicalSound247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput247.moment H = canonicalOutput247.moment H :=
  canonical_of_padded canonicalInput247 canonicalOutput247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput248 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput248 : ExponentCode := normalNode3742

theorem canonicalSound248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput248.moment H = canonicalOutput248.moment H :=
  canonical_of_padded canonicalInput248 canonicalOutput248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput249 : ExponentCode := ⟨5, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput249 : ExponentCode := normalNode4190

theorem canonicalSound249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput249.moment H = canonicalOutput249.moment H :=
  canonical_of_padded canonicalInput249 canonicalOutput249 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput250 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![3, 0, -2, -1]]⟩

def canonicalOutput250 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput250.moment H = canonicalOutput250.moment H :=
  canonical_of_padded canonicalInput250 canonicalOutput250 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput251 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 3, -3, 0], ![3, -1, 0, -2]]⟩

def canonicalOutput251 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1068

theorem canonicalSound251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput251.moment H = canonicalOutput251.moment H :=
  canonical_of_padded canonicalInput251 canonicalOutput251 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput252 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput252 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1234

theorem canonicalSound252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput252.moment H = canonicalOutput252.moment H :=
  canonical_of_padded canonicalInput252 canonicalOutput252 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput253 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![1, 2, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput253.moment H = canonicalOutput253.moment H :=
  canonical_of_padded canonicalInput253 canonicalOutput253 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput254 : ExponentCode := ⟨4, 4, ![![-3, -1, 1, 3], ![0, -1, 2, -1], ![1, 3, -3, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput254 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code766

theorem canonicalSound254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput254.moment H = canonicalOutput254.moment H :=
  canonical_of_padded canonicalInput254 canonicalOutput254 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput255 : ExponentCode := ⟨3, 4, ![![-3, -1, 1, 3], ![0, -1, 3, -2], ![3, 2, -4, -1]]⟩

def canonicalOutput255 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code41

theorem canonicalSound255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput255.moment H = canonicalOutput255.moment H :=
  canonical_of_padded canonicalInput255 canonicalOutput255 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
