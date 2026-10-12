import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11200 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, -1, 2, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11200 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11200.moment H = canonicalOutput11200.moment H :=
  canonical_of_padded canonicalInput11200 canonicalOutput11200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation352⟩ (by decide +kernel) hH

def canonicalInput11201 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11201 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11201.moment H = canonicalOutput11201.moment H :=
  canonical_of_padded canonicalInput11201 canonicalOutput11201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation352⟩ (by decide +kernel) hH

def canonicalInput11202 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, 2, -1, 0], ![3, 1, -2, -1, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11202 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11202.moment H = canonicalOutput11202.moment H :=
  canonical_of_padded canonicalInput11202 canonicalOutput11202 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11203 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11203 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound11203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11203.moment H = canonicalOutput11203.moment H :=
  canonical_of_padded canonicalInput11203 canonicalOutput11203 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11204 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 3, -1, 0, 0], ![0, 1, -3, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11204 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound11204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11204.moment H = canonicalOutput11204.moment H :=
  canonical_of_padded canonicalInput11204 canonicalOutput11204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11205 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11205 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11205.moment H = canonicalOutput11205.moment H :=
  canonical_of_padded canonicalInput11205 canonicalOutput11205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11206 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11206 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11206.moment H = canonicalOutput11206.moment H :=
  canonical_of_padded canonicalInput11206 canonicalOutput11206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11207 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 3, -1, 0, 0], ![3, 1, -3, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11207 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound11207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11207.moment H = canonicalOutput11207.moment H :=
  canonical_of_padded canonicalInput11207 canonicalOutput11207 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11208 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11208 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound11208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11208.moment H = canonicalOutput11208.moment H :=
  canonical_of_padded canonicalInput11208 canonicalOutput11208 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11209 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11209 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound11209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11209.moment H = canonicalOutput11209.moment H :=
  canonical_of_padded canonicalInput11209 canonicalOutput11209 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput11210 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11210 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11210.moment H = canonicalOutput11210.moment H :=
  canonical_of_padded canonicalInput11210 canonicalOutput11210 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11211 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11211 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11211.moment H = canonicalOutput11211.moment H :=
  canonical_of_padded canonicalInput11211 canonicalOutput11211 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11212 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11212 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound11212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11212.moment H = canonicalOutput11212.moment H :=
  canonical_of_padded canonicalInput11212 canonicalOutput11212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput11213 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11213 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound11213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11213.moment H = canonicalOutput11213.moment H :=
  canonical_of_padded canonicalInput11213 canonicalOutput11213 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11214 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 1, -1, 0, 0], ![0, 0, -2, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11214 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound11214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11214.moment H = canonicalOutput11214.moment H :=
  canonical_of_padded canonicalInput11214 canonicalOutput11214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation306, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11215 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11215 : ExponentCode := normalNode4310

theorem canonicalSound11215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11215.moment H = canonicalOutput11215.moment H :=
  canonical_of_padded canonicalInput11215 canonicalOutput11215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11216 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11216 : ExponentCode := normalNode4310

theorem canonicalSound11216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11216.moment H = canonicalOutput11216.moment H :=
  canonical_of_padded canonicalInput11216 canonicalOutput11216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11217 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 0, 1, -1, 0, 0], ![3, 0, -2, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11217 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound11217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11217.moment H = canonicalOutput11217.moment H :=
  canonical_of_padded canonicalInput11217 canonicalOutput11217 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput11218 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11218 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound11218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11218.moment H = canonicalOutput11218.moment H :=
  canonical_of_padded canonicalInput11218 canonicalOutput11218 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput11219 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11219 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound11219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11219.moment H = canonicalOutput11219.moment H :=
  canonical_of_padded canonicalInput11219 canonicalOutput11219 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11220 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11220 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code827

theorem canonicalSound11220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11220.moment H = canonicalOutput11220.moment H :=
  canonical_of_padded canonicalInput11220 canonicalOutput11220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11221 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 1, 1, 1, 0], ![1, 2, -2, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11221 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11221.moment H = canonicalOutput11221.moment H :=
  canonical_of_padded canonicalInput11221 canonicalOutput11221 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11222 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 1, 1, 1, 0], ![1, 2, -2, 1, -2, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11222 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11222.moment H = canonicalOutput11222.moment H :=
  canonical_of_padded canonicalInput11222 canonicalOutput11222 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11223 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11223 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11223.moment H = canonicalOutput11223.moment H :=
  canonical_of_padded canonicalInput11223 canonicalOutput11223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11224 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11224 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11224.moment H = canonicalOutput11224.moment H :=
  canonical_of_padded canonicalInput11224 canonicalOutput11224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11225 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11225 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code954

theorem canonicalSound11225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11225.moment H = canonicalOutput11225.moment H :=
  canonical_of_padded canonicalInput11225 canonicalOutput11225 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11226 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11226 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound11226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11226.moment H = canonicalOutput11226.moment H :=
  canonical_of_padded canonicalInput11226 canonicalOutput11226 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11227 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11227 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound11227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11227.moment H = canonicalOutput11227.moment H :=
  canonical_of_padded canonicalInput11227 canonicalOutput11227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation11, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11228 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11228 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11228.moment H = canonicalOutput11228.moment H :=
  canonical_of_padded canonicalInput11228 canonicalOutput11228 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11229 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11229 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11229.moment H = canonicalOutput11229.moment H :=
  canonical_of_padded canonicalInput11229 canonicalOutput11229 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11230 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound11230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11230.moment H = canonicalOutput11230.moment H :=
  canonical_of_padded canonicalInput11230 canonicalOutput11230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11231 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, -1, 2, 0], ![1, 0, -2, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11231 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11231.moment H = canonicalOutput11231.moment H :=
  canonical_of_padded canonicalInput11231 canonicalOutput11231 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11232 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11232 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11232.moment H = canonicalOutput11232.moment H :=
  canonical_of_padded canonicalInput11232 canonicalOutput11232 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation397⟩ (by decide +kernel) hH

def canonicalInput11233 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11233 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11233.moment H = canonicalOutput11233.moment H :=
  canonical_of_padded canonicalInput11233 canonicalOutput11233 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation397⟩ (by decide +kernel) hH

def canonicalInput11234 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, -1, 2, 0], ![1, 3, -2, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11234 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11234.moment H = canonicalOutput11234.moment H :=
  canonical_of_padded canonicalInput11234 canonicalOutput11234 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11235 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, 2, -1, 0], ![1, 0, -2, -1, 2, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11235 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11235.moment H = canonicalOutput11235.moment H :=
  canonical_of_padded canonicalInput11235 canonicalOutput11235 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11236 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, -1, 2, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11236 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11236.moment H = canonicalOutput11236.moment H :=
  canonical_of_padded canonicalInput11236 canonicalOutput11236 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation102⟩ (by decide +kernel) hH

def canonicalInput11237 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11237 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11237.moment H = canonicalOutput11237.moment H :=
  canonical_of_padded canonicalInput11237 canonicalOutput11237 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation102⟩ (by decide +kernel) hH

def canonicalInput11238 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 1, 2, -1, 0], ![1, 3, -2, -1, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11238 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11238.moment H = canonicalOutput11238.moment H :=
  canonical_of_padded canonicalInput11238 canonicalOutput11238 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11239 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11239 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound11239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11239.moment H = canonicalOutput11239.moment H :=
  canonical_of_padded canonicalInput11239 canonicalOutput11239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11240 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11240 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound11240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11240.moment H = canonicalOutput11240.moment H :=
  canonical_of_padded canonicalInput11240 canonicalOutput11240 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11241 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11241 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11241.moment H = canonicalOutput11241.moment H :=
  canonical_of_padded canonicalInput11241 canonicalOutput11241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11242 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11242 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11242.moment H = canonicalOutput11242.moment H :=
  canonical_of_padded canonicalInput11242 canonicalOutput11242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11243 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11243 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1025

theorem canonicalSound11243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11243.moment H = canonicalOutput11243.moment H :=
  canonical_of_padded canonicalInput11243 canonicalOutput11243 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11244 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11244 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11244.moment H = canonicalOutput11244.moment H :=
  canonical_of_padded canonicalInput11244 canonicalOutput11244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11245 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11245 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11245.moment H = canonicalOutput11245.moment H :=
  canonical_of_padded canonicalInput11245 canonicalOutput11245 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11246 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11246 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11246.moment H = canonicalOutput11246.moment H :=
  canonical_of_padded canonicalInput11246 canonicalOutput11246 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11247 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11247 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11247.moment H = canonicalOutput11247.moment H :=
  canonical_of_padded canonicalInput11247 canonicalOutput11247 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11248 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11248 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11248.moment H = canonicalOutput11248.moment H :=
  canonical_of_padded canonicalInput11248 canonicalOutput11248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation344⟩ (by decide +kernel) hH

def canonicalInput11249 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11249 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11249.moment H = canonicalOutput11249.moment H :=
  canonical_of_padded canonicalInput11249 canonicalOutput11249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation344⟩ (by decide +kernel) hH

def canonicalInput11250 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11250 : ExponentCode := normalNode4310

theorem canonicalSound11250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11250.moment H = canonicalOutput11250.moment H :=
  canonical_of_padded canonicalInput11250 canonicalOutput11250 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11251 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11251 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11251.moment H = canonicalOutput11251.moment H :=
  canonical_of_padded canonicalInput11251 canonicalOutput11251 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11252 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11252 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11252.moment H = canonicalOutput11252.moment H :=
  canonical_of_padded canonicalInput11252 canonicalOutput11252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation350⟩ (by decide +kernel) hH

def canonicalInput11253 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11253.moment H = canonicalOutput11253.moment H :=
  canonical_of_padded canonicalInput11253 canonicalOutput11253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation350⟩ (by decide +kernel) hH

def canonicalInput11254 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11254 : ExponentCode := normalNode4310

theorem canonicalSound11254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11254.moment H = canonicalOutput11254.moment H :=
  canonical_of_padded canonicalInput11254 canonicalOutput11254 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11255 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11255 : ExponentCode := normalNode3674

theorem canonicalSound11255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11255.moment H = canonicalOutput11255.moment H :=
  canonical_of_padded canonicalInput11255 canonicalOutput11255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11256 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11256 : ExponentCode := normalNode4210

theorem canonicalSound11256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11256.moment H = canonicalOutput11256.moment H :=
  canonical_of_padded canonicalInput11256 canonicalOutput11256 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11257 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -2, 1, 1], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11257 : ExponentCode := normalNode4210

theorem canonicalSound11257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11257.moment H = canonicalOutput11257.moment H :=
  canonical_of_padded canonicalInput11257 canonicalOutput11257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11258 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11258 : ExponentCode := normalNode4257

theorem canonicalSound11258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11258.moment H = canonicalOutput11258.moment H :=
  canonical_of_padded canonicalInput11258 canonicalOutput11258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11259 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11259 : ExponentCode := normalNode3682

theorem canonicalSound11259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11259.moment H = canonicalOutput11259.moment H :=
  canonical_of_padded canonicalInput11259 canonicalOutput11259 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11260 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11260 : ExponentCode := normalNode4257

theorem canonicalSound11260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11260.moment H = canonicalOutput11260.moment H :=
  canonical_of_padded canonicalInput11260 canonicalOutput11260 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11261 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11261 : ExponentCode := normalNode4257

theorem canonicalSound11261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11261.moment H = canonicalOutput11261.moment H :=
  canonical_of_padded canonicalInput11261 canonicalOutput11261 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11262 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11262 : ExponentCode := normalNode3682

theorem canonicalSound11262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11262.moment H = canonicalOutput11262.moment H :=
  canonical_of_padded canonicalInput11262 canonicalOutput11262 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11263 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11263 : ExponentCode := normalNode4257

theorem canonicalSound11263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11263.moment H = canonicalOutput11263.moment H :=
  canonical_of_padded canonicalInput11263 canonicalOutput11263 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation83⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
