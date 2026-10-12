import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput34240 : ExponentCode := ⟨6, 6, ![![2, -1, 0, -2, 1, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34240 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1284⟩

theorem canonicalSound34240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34240.moment H = canonicalOutput34240.moment H :=
  canonical_of_padded canonicalInput34240 canonicalOutput34240 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation237, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput34241 : ExponentCode := ⟨6, 6, ![![2, -1, 0, -2, 1, 0], ![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34241 : ExponentCode := normalNode10459

theorem canonicalSound34241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34241.moment H = canonicalOutput34241.moment H :=
  canonical_of_padded canonicalInput34241 canonicalOutput34241 (by decide) (by decide)
    ⟨false, false, canonicalPermutation149, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput34242 : ExponentCode := ⟨6, 6, ![![2, -1, 0, -2, 1, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34242 : ExponentCode := normalNode10459

theorem canonicalSound34242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34242.moment H = canonicalOutput34242.moment H :=
  canonical_of_padded canonicalInput34242 canonicalOutput34242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput34243 : ExponentCode := ⟨6, 6, ![![2, -1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34243 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1284⟩

theorem canonicalSound34243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34243.moment H = canonicalOutput34243.moment H :=
  canonical_of_padded canonicalInput34243 canonicalOutput34243 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput34244 : ExponentCode := ⟨6, 6, ![![2, -1, 0, -2, 1, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34244 : ExponentCode := normalNode10462

theorem canonicalSound34244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34244.moment H = canonicalOutput34244.moment H :=
  canonical_of_padded canonicalInput34244 canonicalOutput34244 (by decide) (by decide)
    ⟨false, false, canonicalPermutation149, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput34245 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-5, 2, 2, 1], ![3, -1, -3, 1]]⟩

def canonicalOutput34245 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound34245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34245.moment H = canonicalOutput34245.moment H :=
  canonical_of_padded canonicalInput34245 canonicalOutput34245 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34246 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-5, 3, 1, 1], ![3, -2, -2, 1]]⟩

def canonicalOutput34246 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound34246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34246.moment H = canonicalOutput34246.moment H :=
  canonical_of_padded canonicalInput34246 canonicalOutput34246 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34247 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-4, -1, 1, 4], ![2, 2, -2, -2]]⟩

def canonicalOutput34247 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound34247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34247.moment H = canonicalOutput34247.moment H :=
  canonical_of_padded canonicalInput34247 canonicalOutput34247 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34248 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-4, -1, 2, 3], ![2, 2, -3, -1]]⟩

def canonicalOutput34248 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound34248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34248.moment H = canonicalOutput34248.moment H :=
  canonical_of_padded canonicalInput34248 canonicalOutput34248 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34249 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-4, -1, 3, 2], ![2, 2, -4, 0]]⟩

def canonicalOutput34249 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound34249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34249.moment H = canonicalOutput34249.moment H :=
  canonical_of_padded canonicalInput34249 canonicalOutput34249 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34250 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-4, 2, 2, 0], ![2, -1, -3, 2]]⟩

def canonicalOutput34250 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound34250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34250.moment H = canonicalOutput34250.moment H :=
  canonical_of_padded canonicalInput34250 canonicalOutput34250 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34251 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-4, 3, 1, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput34251 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound34251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34251.moment H = canonicalOutput34251.moment H :=
  canonical_of_padded canonicalInput34251 canonicalOutput34251 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34252 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-3, -2, 2, 3], ![1, 3, -3, -1]]⟩

def canonicalOutput34252 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code684

theorem canonicalSound34252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34252.moment H = canonicalOutput34252.moment H :=
  canonical_of_padded canonicalInput34252 canonicalOutput34252 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34253 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-3, -2, 3, 2], ![1, 3, -4, 0]]⟩

def canonicalOutput34253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code685

theorem canonicalSound34253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34253.moment H = canonicalOutput34253.moment H :=
  canonical_of_padded canonicalInput34253 canonicalOutput34253 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34254 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-3, -1, 1, 3], ![1, 2, -2, -1]]⟩

def canonicalOutput34254 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound34254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34254.moment H = canonicalOutput34254.moment H :=
  canonical_of_padded canonicalInput34254 canonicalOutput34254 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34255 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-3, -1, 2, 2], ![1, 2, -3, 0]]⟩

def canonicalOutput34255 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound34255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34255.moment H = canonicalOutput34255.moment H :=
  canonical_of_padded canonicalInput34255 canonicalOutput34255 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput34256 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-3, -1, 3, 1], ![1, 2, -4, 1]]⟩

def canonicalOutput34256 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound34256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34256.moment H = canonicalOutput34256.moment H :=
  canonical_of_padded canonicalInput34256 canonicalOutput34256 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34257 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-3, 3, 1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput34257 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound34257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34257.moment H = canonicalOutput34257.moment H :=
  canonical_of_padded canonicalInput34257 canonicalOutput34257 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34258 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-2, -3, 3, 2], ![0, 4, -4, 0]]⟩

def canonicalOutput34258 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1039

theorem canonicalSound34258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34258.moment H = canonicalOutput34258.moment H :=
  canonical_of_padded canonicalInput34258 canonicalOutput34258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34259 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-2, -2, 2, 2], ![0, 3, -3, 0]]⟩

def canonicalOutput34259 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound34259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34259.moment H = canonicalOutput34259.moment H :=
  canonical_of_padded canonicalInput34259 canonicalOutput34259 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput34260 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-2, -2, 3, 1], ![0, 3, -4, 1]]⟩

def canonicalOutput34260 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound34260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34260.moment H = canonicalOutput34260.moment H :=
  canonical_of_padded canonicalInput34260 canonicalOutput34260 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34261 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![-1, -3, 3, 1], ![-1, 4, -4, 1]]⟩

def canonicalOutput34261 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound34261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34261.moment H = canonicalOutput34261.moment H :=
  canonical_of_padded canonicalInput34261 canonicalOutput34261 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34262 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![1, -1, 1, -1], ![-3, 2, -2, 3]]⟩

def canonicalOutput34262 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node258⟩

theorem canonicalSound34262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34262.moment H = canonicalOutput34262.moment H :=
  canonical_of_padded canonicalInput34262 canonicalOutput34262 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput34263 : ExponentCode := ⟨3, 4, ![![2, -1, 1, -2], ![2, -1, 1, -2], ![-4, 2, -2, 4]]⟩

def canonicalOutput34263 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code225

theorem canonicalSound34263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34263.moment H = canonicalOutput34263.moment H :=
  canonical_of_padded canonicalInput34263 canonicalOutput34263 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34264 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34264 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34264.moment H = canonicalOutput34264.moment H :=
  canonical_of_padded canonicalInput34264 canonicalOutput34264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34265 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34265 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34265.moment H = canonicalOutput34265.moment H :=
  canonical_of_padded canonicalInput34265 canonicalOutput34265 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34266 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34266 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34266.moment H = canonicalOutput34266.moment H :=
  canonical_of_padded canonicalInput34266 canonicalOutput34266 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34267 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34267 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34267.moment H = canonicalOutput34267.moment H :=
  canonical_of_padded canonicalInput34267 canonicalOutput34267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34268 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34268 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34268.moment H = canonicalOutput34268.moment H :=
  canonical_of_padded canonicalInput34268 canonicalOutput34268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34269 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34269 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound34269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34269.moment H = canonicalOutput34269.moment H :=
  canonical_of_padded canonicalInput34269 canonicalOutput34269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34270 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34270 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound34270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34270.moment H = canonicalOutput34270.moment H :=
  canonical_of_padded canonicalInput34270 canonicalOutput34270 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34271 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34271 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound34271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34271.moment H = canonicalOutput34271.moment H :=
  canonical_of_padded canonicalInput34271 canonicalOutput34271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34272 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34272 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34272.moment H = canonicalOutput34272.moment H :=
  canonical_of_padded canonicalInput34272 canonicalOutput34272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34273 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34273 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34273.moment H = canonicalOutput34273.moment H :=
  canonical_of_padded canonicalInput34273 canonicalOutput34273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34274 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34274 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound34274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34274.moment H = canonicalOutput34274.moment H :=
  canonical_of_padded canonicalInput34274 canonicalOutput34274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34275 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34275 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound34275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34275.moment H = canonicalOutput34275.moment H :=
  canonical_of_padded canonicalInput34275 canonicalOutput34275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput34276 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34276 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound34276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34276.moment H = canonicalOutput34276.moment H :=
  canonical_of_padded canonicalInput34276 canonicalOutput34276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34277 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34277 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34277.moment H = canonicalOutput34277.moment H :=
  canonical_of_padded canonicalInput34277 canonicalOutput34277 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34278 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34278 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34278.moment H = canonicalOutput34278.moment H :=
  canonical_of_padded canonicalInput34278 canonicalOutput34278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34279 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34279 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound34279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34279.moment H = canonicalOutput34279.moment H :=
  canonical_of_padded canonicalInput34279 canonicalOutput34279 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34280 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34280 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound34280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34280.moment H = canonicalOutput34280.moment H :=
  canonical_of_padded canonicalInput34280 canonicalOutput34280 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34281 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34281 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound34281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34281.moment H = canonicalOutput34281.moment H :=
  canonical_of_padded canonicalInput34281 canonicalOutput34281 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34282 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34282 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34282.moment H = canonicalOutput34282.moment H :=
  canonical_of_padded canonicalInput34282 canonicalOutput34282 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34283 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34283 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34283.moment H = canonicalOutput34283.moment H :=
  canonical_of_padded canonicalInput34283 canonicalOutput34283 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34284 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34284 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34284.moment H = canonicalOutput34284.moment H :=
  canonical_of_padded canonicalInput34284 canonicalOutput34284 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34285 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34285 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34285.moment H = canonicalOutput34285.moment H :=
  canonical_of_padded canonicalInput34285 canonicalOutput34285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34286 : ExponentCode := ⟨6, 6, ![![2, 0, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34286 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34286.moment H = canonicalOutput34286.moment H :=
  canonical_of_padded canonicalInput34286 canonicalOutput34286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34287 : ExponentCode := ⟨6, 6, ![![2, 0, -1, -2, 1, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34287 : ExponentCode := normalNode10459

theorem canonicalSound34287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34287.moment H = canonicalOutput34287.moment H :=
  canonical_of_padded canonicalInput34287 canonicalOutput34287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation149, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput34288 : ExponentCode := ⟨6, 6, ![![2, 0, -1, -2, 1, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34288 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1284⟩

theorem canonicalSound34288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34288.moment H = canonicalOutput34288.moment H :=
  canonical_of_padded canonicalInput34288 canonicalOutput34288 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput34289 : ExponentCode := ⟨6, 6, ![![2, 0, -1, -2, 1, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34289 : ExponentCode := normalNode10462

theorem canonicalSound34289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34289.moment H = canonicalOutput34289.moment H :=
  canonical_of_padded canonicalInput34289 canonicalOutput34289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput34290 : ExponentCode := ⟨6, 6, ![![2, 0, -1, -2, 1, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34290 : ExponentCode := normalNode10462

theorem canonicalSound34290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34290.moment H = canonicalOutput34290.moment H :=
  canonical_of_padded canonicalInput34290 canonicalOutput34290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation149, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput34291 : ExponentCode := ⟨6, 6, ![![2, 0, -1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1284⟩

theorem canonicalSound34291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34291.moment H = canonicalOutput34291.moment H :=
  canonical_of_padded canonicalInput34291 canonicalOutput34291 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput34292 : ExponentCode := ⟨6, 6, ![![2, 0, -1, -2, 1, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34292 : ExponentCode := normalNode10459

theorem canonicalSound34292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34292.moment H = canonicalOutput34292.moment H :=
  canonical_of_padded canonicalInput34292 canonicalOutput34292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput34293 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![-5, 2, 2, 1], ![3, -2, -2, 1]]⟩

def canonicalOutput34293 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node125⟩

theorem canonicalSound34293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34293.moment H = canonicalOutput34293.moment H :=
  canonical_of_padded canonicalInput34293 canonicalOutput34293 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34294 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![-4, 2, 2, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput34294 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node151⟩

theorem canonicalSound34294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34294.moment H = canonicalOutput34294.moment H :=
  canonical_of_padded canonicalInput34294 canonicalOutput34294 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34295 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![-3, -2, 4, 1], ![1, 2, -4, 1]]⟩

def canonicalOutput34295 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound34295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34295.moment H = canonicalOutput34295.moment H :=
  canonical_of_padded canonicalInput34295 canonicalOutput34295 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34296 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![-2, -2, 4, 0], ![0, 2, -4, 2]]⟩

def canonicalOutput34296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node199⟩

theorem canonicalSound34296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34296.moment H = canonicalOutput34296.moment H :=
  canonical_of_padded canonicalInput34296 canonicalOutput34296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34297 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![-1, -2, 4, -1], ![-1, 2, -4, 3]]⟩

def canonicalOutput34297 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound34297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34297.moment H = canonicalOutput34297.moment H :=
  canonical_of_padded canonicalInput34297 canonicalOutput34297 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34298 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![0, -2, 4, -2], ![-2, 2, -4, 4]]⟩

def canonicalOutput34298 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code235

theorem canonicalSound34298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34298.moment H = canonicalOutput34298.moment H :=
  canonical_of_padded canonicalInput34298 canonicalOutput34298 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34299 : ExponentCode := ⟨3, 4, ![![2, 0, 0, -2], ![2, -2, 2, -2], ![-4, 2, -2, 4]]⟩

def canonicalOutput34299 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code233

theorem canonicalSound34299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34299.moment H = canonicalOutput34299.moment H :=
  canonical_of_padded canonicalInput34299 canonicalOutput34299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34300 : ExponentCode := ⟨3, 5, ![![2, 0, 0, 0, -2], ![-2, -3, 2, 2, 1], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput34300 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1043

theorem canonicalSound34300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34300.moment H = canonicalOutput34300.moment H :=
  canonical_of_padded canonicalInput34300 canonicalOutput34300 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34301 : ExponentCode := ⟨3, 5, ![![2, 0, 0, 0, -2], ![-1, -3, 2, 2, 0], ![-1, 3, -2, -2, 2]]⟩

def canonicalOutput34301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1043

theorem canonicalSound34301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34301.moment H = canonicalOutput34301.moment H :=
  canonical_of_padded canonicalInput34301 canonicalOutput34301 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34302 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-5, 2, 1, 2], ![3, -2, -2, 1]]⟩

def canonicalOutput34302 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound34302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34302.moment H = canonicalOutput34302.moment H :=
  canonical_of_padded canonicalInput34302 canonicalOutput34302 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34303 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-4, 2, 1, 1], ![2, -2, -2, 2]]⟩

def canonicalOutput34303 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound34303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34303.moment H = canonicalOutput34303.moment H :=
  canonical_of_padded canonicalInput34303 canonicalOutput34303 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
