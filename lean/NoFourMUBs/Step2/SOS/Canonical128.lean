import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical103
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8192 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput8192 : ExponentCode := normalNode5475

theorem canonicalSound8192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8192.moment H = canonicalOutput8192.moment H :=
  canonical_of_padded canonicalInput8192 canonicalOutput8192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8193 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput8193 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2198⟩

theorem canonicalSound8193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8193.moment H = canonicalOutput8193.moment H :=
  canonical_of_padded canonicalInput8193 canonicalOutput8193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8194 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8194 : ExponentCode := normalNode3758

theorem canonicalSound8194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8194.moment H = canonicalOutput8194.moment H :=
  canonical_of_padded canonicalInput8194 canonicalOutput8194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8195 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8195 : ExponentCode := normalNode3759

theorem canonicalSound8195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8195.moment H = canonicalOutput8195.moment H :=
  canonical_of_padded canonicalInput8195 canonicalOutput8195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8196 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8196 : ExponentCode := normalNode3760

theorem canonicalSound8196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8196.moment H = canonicalOutput8196.moment H :=
  canonical_of_padded canonicalInput8196 canonicalOutput8196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8197 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8197 : ExponentCode := normalNode2385

theorem canonicalSound8197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8197.moment H = canonicalOutput8197.moment H :=
  canonical_of_padded canonicalInput8197 canonicalOutput8197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8198 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput8198 : ExponentCode := normalNode1789

theorem canonicalSound8198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8198.moment H = canonicalOutput8198.moment H :=
  canonical_of_padded canonicalInput8198 canonicalOutput8198 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8199 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8199 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound8199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8199.moment H = canonicalOutput8199.moment H :=
  canonical_of_padded canonicalInput8199 canonicalOutput8199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8200 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput8200 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1992⟩

theorem canonicalSound8200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8200.moment H = canonicalOutput8200.moment H :=
  canonical_of_padded canonicalInput8200 canonicalOutput8200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8201 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput8201 : ExponentCode := normalNode3783

theorem canonicalSound8201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8201.moment H = canonicalOutput8201.moment H :=
  canonical_of_padded canonicalInput8201 canonicalOutput8201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8202 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput8202 : ExponentCode := normalNode3790

theorem canonicalSound8202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8202.moment H = canonicalOutput8202.moment H :=
  canonical_of_padded canonicalInput8202 canonicalOutput8202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8203 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput8203 : ExponentCode := normalNode5379

theorem canonicalSound8203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8203.moment H = canonicalOutput8203.moment H :=
  canonical_of_padded canonicalInput8203 canonicalOutput8203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8204 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput8204 : ExponentCode := normalNode5380

theorem canonicalSound8204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8204.moment H = canonicalOutput8204.moment H :=
  canonical_of_padded canonicalInput8204 canonicalOutput8204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8205 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8205 : ExponentCode := normalNode10855

theorem canonicalSound8205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8205.moment H = canonicalOutput8205.moment H :=
  canonical_of_padded canonicalInput8205 canonicalOutput8205 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8206 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput8206 : ExponentCode := normalNode3784

theorem canonicalSound8206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8206.moment H = canonicalOutput8206.moment H :=
  canonical_of_padded canonicalInput8206 canonicalOutput8206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8207 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput8207 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound8207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8207.moment H = canonicalOutput8207.moment H :=
  canonical_of_padded canonicalInput8207 canonicalOutput8207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8208 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput8208 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound8208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8208.moment H = canonicalOutput8208.moment H :=
  canonical_of_padded canonicalInput8208 canonicalOutput8208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8209 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput8209 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2225⟩

theorem canonicalSound8209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8209.moment H = canonicalOutput8209.moment H :=
  canonical_of_padded canonicalInput8209 canonicalOutput8209 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8210 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8210 : ExponentCode := normalNode3768

theorem canonicalSound8210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8210.moment H = canonicalOutput8210.moment H :=
  canonical_of_padded canonicalInput8210 canonicalOutput8210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8211 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound8211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8211.moment H = canonicalOutput8211.moment H :=
  canonical_of_padded canonicalInput8211 canonicalOutput8211 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8212 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput8212 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound8212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8212.moment H = canonicalOutput8212.moment H :=
  canonical_of_padded canonicalInput8212 canonicalOutput8212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8213 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8213 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2241⟩

theorem canonicalSound8213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8213.moment H = canonicalOutput8213.moment H :=
  canonical_of_padded canonicalInput8213 canonicalOutput8213 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8214 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8214 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound8214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8214.moment H = canonicalOutput8214.moment H :=
  canonical_of_padded canonicalInput8214 canonicalOutput8214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8215 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput8215 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound8215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8215.moment H = canonicalOutput8215.moment H :=
  canonical_of_padded canonicalInput8215 canonicalOutput8215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8216 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput8216 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code854

theorem canonicalSound8216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8216.moment H = canonicalOutput8216.moment H :=
  canonical_of_padded canonicalInput8216 canonicalOutput8216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8217 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput8217 : ExponentCode := normalNode3777

theorem canonicalSound8217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8217.moment H = canonicalOutput8217.moment H :=
  canonical_of_padded canonicalInput8217 canonicalOutput8217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8218 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8218 : ExponentCode := normalNode3780

theorem canonicalSound8218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8218.moment H = canonicalOutput8218.moment H :=
  canonical_of_padded canonicalInput8218 canonicalOutput8218 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8219 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput8219 : ExponentCode := normalNode3780

theorem canonicalSound8219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8219.moment H = canonicalOutput8219.moment H :=
  canonical_of_padded canonicalInput8219 canonicalOutput8219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8220 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8220 : ExponentCode := normalNode3773

theorem canonicalSound8220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8220.moment H = canonicalOutput8220.moment H :=
  canonical_of_padded canonicalInput8220 canonicalOutput8220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8221 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8221 : ExponentCode := normalNode10900

theorem canonicalSound8221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8221.moment H = canonicalOutput8221.moment H :=
  canonical_of_padded canonicalInput8221 canonicalOutput8221 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8222 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput8222 : ExponentCode := normalNode5476

theorem canonicalSound8222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8222.moment H = canonicalOutput8222.moment H :=
  canonical_of_padded canonicalInput8222 canonicalOutput8222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8223 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8223 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound8223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8223.moment H = canonicalOutput8223.moment H :=
  canonical_of_padded canonicalInput8223 canonicalOutput8223 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8224 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, 2, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput8224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩

theorem canonicalSound8224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8224.moment H = canonicalOutput8224.moment H :=
  canonical_of_padded canonicalInput8224 canonicalOutput8224 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8225 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -3, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput8225 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code439

theorem canonicalSound8225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8225.moment H = canonicalOutput8225.moment H :=
  canonical_of_padded canonicalInput8225 canonicalOutput8225 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8226 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8226 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1962⟩

theorem canonicalSound8226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8226.moment H = canonicalOutput8226.moment H :=
  canonical_of_padded canonicalInput8226 canonicalOutput8226 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8227 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8227 : ExponentCode := normalNode4185

theorem canonicalSound8227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8227.moment H = canonicalOutput8227.moment H :=
  canonical_of_padded canonicalInput8227 canonicalOutput8227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8228 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput8228 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound8228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8228.moment H = canonicalOutput8228.moment H :=
  canonical_of_padded canonicalInput8228 canonicalOutput8228 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8229 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput8229 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound8229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8229.moment H = canonicalOutput8229.moment H :=
  canonical_of_padded canonicalInput8229 canonicalOutput8229 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8230 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, -1, 2, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput8230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound8230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8230.moment H = canonicalOutput8230.moment H :=
  canonical_of_padded canonicalInput8230 canonicalOutput8230 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8231 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput8231 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node449⟩

theorem canonicalSound8231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8231.moment H = canonicalOutput8231.moment H :=
  canonical_of_padded canonicalInput8231 canonicalOutput8231 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8232 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput8232 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound8232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8232.moment H = canonicalOutput8232.moment H :=
  canonical_of_padded canonicalInput8232 canonicalOutput8232 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8233 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput8233 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code438

theorem canonicalSound8233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8233.moment H = canonicalOutput8233.moment H :=
  canonical_of_padded canonicalInput8233 canonicalOutput8233 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8234 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput8234 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound8234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8234.moment H = canonicalOutput8234.moment H :=
  canonical_of_padded canonicalInput8234 canonicalOutput8234 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8235 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3670step0⟩

def canonicalOutput8235 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound8235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8235.moment H = canonicalOutput8235.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3670step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3670step0 = OAI.MUB6.Certificate.PairSemantics.raw3670.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3670).trans (OAI.MUB6.Certificate.PairSemantics.canonical3670 hH)

def canonicalInput8236 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 1, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput8236 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound8236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8236.moment H = canonicalOutput8236.moment H :=
  canonical_of_padded canonicalInput8236 canonicalOutput8236 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8237 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 3, -3, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput8237 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound8237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8237.moment H = canonicalOutput8237.moment H :=
  canonical_of_padded canonicalInput8237 canonicalOutput8237 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8238 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput8238 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2249⟩

theorem canonicalSound8238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8238.moment H = canonicalOutput8238.moment H :=
  canonical_of_padded canonicalInput8238 canonicalOutput8238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8239 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput8239 : ExponentCode := normalNode1266

theorem canonicalSound8239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8239.moment H = canonicalOutput8239.moment H :=
  canonical_of_padded canonicalInput8239 canonicalOutput8239 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8240 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8240 : ExponentCode := normalNode2373

theorem canonicalSound8240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8240.moment H = canonicalOutput8240.moment H :=
  canonical_of_padded canonicalInput8240 canonicalOutput8240 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3319step0⟩

def canonicalOutput8241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound8241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8241.moment H = canonicalOutput8241.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3319step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3319step0 = OAI.MUB6.Certificate.PairSemantics.raw3319.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3319).trans (OAI.MUB6.Certificate.PairSemantics.canonical3319 hH)

def canonicalInput8242 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3320step0⟩

def canonicalOutput8242 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8242.moment H = canonicalOutput8242.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3320step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3320step0 = OAI.MUB6.Certificate.PairSemantics.raw3320.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3320).trans (OAI.MUB6.Certificate.PairSemantics.canonical3320 hH)

def canonicalInput8243 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput8243 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound8243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8243.moment H = canonicalOutput8243.moment H :=
  canonical_of_padded canonicalInput8243 canonicalOutput8243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8244 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput8244 : ExponentCode := normalNode3873

theorem canonicalSound8244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8244.moment H = canonicalOutput8244.moment H :=
  canonical_of_padded canonicalInput8244 canonicalOutput8244 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8245 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput8245 : ExponentCode := normalNode3877

theorem canonicalSound8245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8245.moment H = canonicalOutput8245.moment H :=
  canonical_of_padded canonicalInput8245 canonicalOutput8245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput8246 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput8246 : ExponentCode := normalNode2541

theorem canonicalSound8246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8246.moment H = canonicalOutput8246.moment H :=
  canonical_of_padded canonicalInput8246 canonicalOutput8246 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8247 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8247 : ExponentCode := normalNode5405

theorem canonicalSound8247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8247.moment H = canonicalOutput8247.moment H :=
  canonical_of_padded canonicalInput8247 canonicalOutput8247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8248 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8248 : ExponentCode := normalNode4211

theorem canonicalSound8248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8248.moment H = canonicalOutput8248.moment H :=
  canonical_of_padded canonicalInput8248 canonicalOutput8248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8249 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput8249 : ExponentCode := normalNode4212

theorem canonicalSound8249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8249.moment H = canonicalOutput8249.moment H :=
  canonical_of_padded canonicalInput8249 canonicalOutput8249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8250 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput8250 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound8250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8250.moment H = canonicalOutput8250.moment H :=
  canonical_of_padded canonicalInput8250 canonicalOutput8250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8251 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput8251 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound8251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8251.moment H = canonicalOutput8251.moment H :=
  canonical_of_padded canonicalInput8251 canonicalOutput8251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8252 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput8252 : ExponentCode := normalNode3453

theorem canonicalSound8252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8252.moment H = canonicalOutput8252.moment H :=
  canonical_of_padded canonicalInput8252 canonicalOutput8252 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8253 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput8253 : ExponentCode := normalNode5405

theorem canonicalSound8253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8253.moment H = canonicalOutput8253.moment H :=
  canonical_of_padded canonicalInput8253 canonicalOutput8253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8254 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8254 : ExponentCode := normalNode4212

theorem canonicalSound8254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8254.moment H = canonicalOutput8254.moment H :=
  canonical_of_padded canonicalInput8254 canonicalOutput8254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8255 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8255 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound8255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8255.moment H = canonicalOutput8255.moment H :=
  canonical_of_padded canonicalInput8255 canonicalOutput8255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
