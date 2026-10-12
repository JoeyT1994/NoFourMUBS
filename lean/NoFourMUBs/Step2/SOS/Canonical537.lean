import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput34368 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34368 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34368.moment H = canonicalOutput34368.moment H :=
  canonical_of_padded canonicalInput34368 canonicalOutput34368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34369 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34369 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34369.moment H = canonicalOutput34369.moment H :=
  canonical_of_padded canonicalInput34369 canonicalOutput34369 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput34370 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34370 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34370.moment H = canonicalOutput34370.moment H :=
  canonical_of_padded canonicalInput34370 canonicalOutput34370 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34371 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34371 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34371.moment H = canonicalOutput34371.moment H :=
  canonical_of_padded canonicalInput34371 canonicalOutput34371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34372 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34372 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34372.moment H = canonicalOutput34372.moment H :=
  canonical_of_padded canonicalInput34372 canonicalOutput34372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34373 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34373 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34373.moment H = canonicalOutput34373.moment H :=
  canonical_of_padded canonicalInput34373 canonicalOutput34373 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput34374 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34374 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34374.moment H = canonicalOutput34374.moment H :=
  canonical_of_padded canonicalInput34374 canonicalOutput34374 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34375 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34375 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34375.moment H = canonicalOutput34375.moment H :=
  canonical_of_padded canonicalInput34375 canonicalOutput34375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34376 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34376 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34376.moment H = canonicalOutput34376.moment H :=
  canonical_of_padded canonicalInput34376 canonicalOutput34376 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34377 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34377 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34377.moment H = canonicalOutput34377.moment H :=
  canonical_of_padded canonicalInput34377 canonicalOutput34377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34378 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34378 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34378.moment H = canonicalOutput34378.moment H :=
  canonical_of_padded canonicalInput34378 canonicalOutput34378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34379 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34379 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34379.moment H = canonicalOutput34379.moment H :=
  canonical_of_padded canonicalInput34379 canonicalOutput34379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34380 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34380 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound34380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34380.moment H = canonicalOutput34380.moment H :=
  canonical_of_padded canonicalInput34380 canonicalOutput34380 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34381 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34381 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound34381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34381.moment H = canonicalOutput34381.moment H :=
  canonical_of_padded canonicalInput34381 canonicalOutput34381 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34382 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34382 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34382.moment H = canonicalOutput34382.moment H :=
  canonical_of_padded canonicalInput34382 canonicalOutput34382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34383 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34383 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34383.moment H = canonicalOutput34383.moment H :=
  canonical_of_padded canonicalInput34383 canonicalOutput34383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34384 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34384 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34384.moment H = canonicalOutput34384.moment H :=
  canonical_of_padded canonicalInput34384 canonicalOutput34384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34385 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34385 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34385.moment H = canonicalOutput34385.moment H :=
  canonical_of_padded canonicalInput34385 canonicalOutput34385 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34386 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34386 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34386.moment H = canonicalOutput34386.moment H :=
  canonical_of_padded canonicalInput34386 canonicalOutput34386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34387 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34387 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34387.moment H = canonicalOutput34387.moment H :=
  canonical_of_padded canonicalInput34387 canonicalOutput34387 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34388 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34388 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34388.moment H = canonicalOutput34388.moment H :=
  canonical_of_padded canonicalInput34388 canonicalOutput34388 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput34389 : ExponentCode := ⟨6, 6, ![![3, -1, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34389 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34389.moment H = canonicalOutput34389.moment H :=
  canonical_of_padded canonicalInput34389 canonicalOutput34389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34390 : ExponentCode := ⟨6, 6, ![![3, -1, -1, -2, 1, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34390 : ExponentCode := normalNode10460

theorem canonicalSound34390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34390.moment H = canonicalOutput34390.moment H :=
  canonical_of_padded canonicalInput34390 canonicalOutput34390 (by decide) (by decide)
    ⟨false, false, canonicalPermutation149, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput34391 : ExponentCode := ⟨6, 6, ![![3, -1, -1, -2, 1, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34391 : ExponentCode := normalNode9164

theorem canonicalSound34391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34391.moment H = canonicalOutput34391.moment H :=
  canonical_of_padded canonicalInput34391 canonicalOutput34391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput34392 : ExponentCode := ⟨6, 6, ![![3, -1, -1, -2, 1, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34392 : ExponentCode := normalNode9164

theorem canonicalSound34392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34392.moment H = canonicalOutput34392.moment H :=
  canonical_of_padded canonicalInput34392 canonicalOutput34392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput34393 : ExponentCode := ⟨6, 6, ![![3, -1, -1, -2, 1, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34393 : ExponentCode := normalNode10460

theorem canonicalSound34393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34393.moment H = canonicalOutput34393.moment H :=
  canonical_of_padded canonicalInput34393 canonicalOutput34393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput34394 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34394 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound34394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34394.moment H = canonicalOutput34394.moment H :=
  canonical_of_padded canonicalInput34394 canonicalOutput34394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34395 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34395 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34395.moment H = canonicalOutput34395.moment H :=
  canonical_of_padded canonicalInput34395 canonicalOutput34395 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34396 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34396 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34396.moment H = canonicalOutput34396.moment H :=
  canonical_of_padded canonicalInput34396 canonicalOutput34396 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34397 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34397 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound34397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34397.moment H = canonicalOutput34397.moment H :=
  canonical_of_padded canonicalInput34397 canonicalOutput34397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34398 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34398 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34398.moment H = canonicalOutput34398.moment H :=
  canonical_of_padded canonicalInput34398 canonicalOutput34398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34399 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34399 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34399.moment H = canonicalOutput34399.moment H :=
  canonical_of_padded canonicalInput34399 canonicalOutput34399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput34400 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34400 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34400.moment H = canonicalOutput34400.moment H :=
  canonical_of_padded canonicalInput34400 canonicalOutput34400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34401 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34401 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34401.moment H = canonicalOutput34401.moment H :=
  canonical_of_padded canonicalInput34401 canonicalOutput34401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34402 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34402 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34402.moment H = canonicalOutput34402.moment H :=
  canonical_of_padded canonicalInput34402 canonicalOutput34402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34403 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34403 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34403.moment H = canonicalOutput34403.moment H :=
  canonical_of_padded canonicalInput34403 canonicalOutput34403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34404 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34404 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34404.moment H = canonicalOutput34404.moment H :=
  canonical_of_padded canonicalInput34404 canonicalOutput34404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput34405 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34405 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34405.moment H = canonicalOutput34405.moment H :=
  canonical_of_padded canonicalInput34405 canonicalOutput34405 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34406 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34406 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound34406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34406.moment H = canonicalOutput34406.moment H :=
  canonical_of_padded canonicalInput34406 canonicalOutput34406 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34407 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34407 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34407.moment H = canonicalOutput34407.moment H :=
  canonical_of_padded canonicalInput34407 canonicalOutput34407 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34408 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34408 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34408.moment H = canonicalOutput34408.moment H :=
  canonical_of_padded canonicalInput34408 canonicalOutput34408 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34409 : ExponentCode := ⟨6, 6, ![![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34409 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound34409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34409.moment H = canonicalOutput34409.moment H :=
  canonical_of_padded canonicalInput34409 canonicalOutput34409 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34410 : ExponentCode := ⟨6, 2, ![![4, -4], ![0, 0], ![0, 0], ![-1, 1], ![-1, 1], ![-2, 2]]⟩

def canonicalOutput34410 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node16⟩

theorem canonicalSound34410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34410.moment H = canonicalOutput34410.moment H :=
  canonical_of_padded canonicalInput34410 canonicalOutput34410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34411 : ExponentCode := ⟨6, 2, ![![4, -4], ![1, -1], ![-2, 2], ![-1, 1], ![-1, 1], ![-1, 1]]⟩

def canonicalOutput34411 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node296⟩

theorem canonicalSound34411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34411.moment H = canonicalOutput34411.moment H :=
  canonical_of_padded canonicalInput34411 canonicalOutput34411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34412 : ExponentCode := ⟨6, 2, ![![4, -4], ![1, -1], ![-1, 1], ![-1, 1], ![-1, 1], ![-2, 2]]⟩

def canonicalOutput34412 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node296⟩

theorem canonicalSound34412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34412.moment H = canonicalOutput34412.moment H :=
  canonical_of_padded canonicalInput34412 canonicalOutput34412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34413 : ExponentCode := ⟨6, 2, ![![4, -4], ![1, -1], ![0, 0], ![-1, 1], ![-2, 2], ![-2, 2]]⟩

def canonicalOutput34413 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node68⟩

theorem canonicalSound34413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34413.moment H = canonicalOutput34413.moment H :=
  canonical_of_padded canonicalInput34413 canonicalOutput34413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation221, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34414 : ExponentCode := ⟨6, 2, ![![4, -4], ![1, -1], ![0, 0], ![-1, 1], ![-1, 1], ![-3, 3]]⟩

def canonicalOutput34414 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node67⟩

theorem canonicalSound34414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34414.moment H = canonicalOutput34414.moment H :=
  canonical_of_padded canonicalInput34414 canonicalOutput34414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation221, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34415 : ExponentCode := ⟨6, 3, ![![4, -3, -1], ![0, 1, -1], ![0, 1, -1], ![-1, 0, 1], ![-1, 0, 1], ![-2, 1, 1]]⟩

def canonicalOutput34415 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1390⟩

theorem canonicalSound34415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34415.moment H = canonicalOutput34415.moment H :=
  canonical_of_padded canonicalInput34415 canonicalOutput34415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34416 : ExponentCode := ⟨6, 3, ![![4, -3, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, 0, 1], ![-1, 0, 1], ![-1, 0, 1]]⟩

def canonicalOutput34416 : ExponentCode := normalNode113

theorem canonicalSound34416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34416.moment H = canonicalOutput34416.moment H :=
  canonical_of_padded canonicalInput34416 canonicalOutput34416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34417 : ExponentCode := ⟨6, 3, ![![4, -3, -1], ![1, 0, -1], ![-1, 2, -1], ![-1, 0, 1], ![-1, 0, 1], ![-2, 1, 1]]⟩

def canonicalOutput34417 : ExponentCode := normalNode114

theorem canonicalSound34417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34417.moment H = canonicalOutput34417.moment H :=
  canonical_of_padded canonicalInput34417 canonicalOutput34417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34418 : ExponentCode := ⟨6, 3, ![![4, -3, -1], ![1, 0, -1], ![0, 1, -1], ![-1, 0, 1], ![-2, 1, 1], ![-2, 1, 1]]⟩

def canonicalOutput34418 : ExponentCode := normalNode116

theorem canonicalSound34418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34418.moment H = canonicalOutput34418.moment H :=
  canonical_of_padded canonicalInput34418 canonicalOutput34418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34419 : ExponentCode := ⟨6, 3, ![![4, -3, -1], ![1, 0, -1], ![0, 1, -1], ![-1, 0, 1], ![-1, 0, 1], ![-3, 2, 1]]⟩

def canonicalOutput34419 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1383⟩

theorem canonicalSound34419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34419.moment H = canonicalOutput34419.moment H :=
  canonical_of_padded canonicalInput34419 canonicalOutput34419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
