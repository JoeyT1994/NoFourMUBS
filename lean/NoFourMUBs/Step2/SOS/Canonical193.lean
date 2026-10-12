import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12352 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput12352 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound12352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12352.moment H = canonicalOutput12352.moment H :=
  canonical_of_padded canonicalInput12352 canonicalOutput12352 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12353 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12353 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node468⟩

theorem canonicalSound12353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12353.moment H = canonicalOutput12353.moment H :=
  canonical_of_padded canonicalInput12353 canonicalOutput12353 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12354 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12354 : ExponentCode := normalNode9631

theorem canonicalSound12354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12354.moment H = canonicalOutput12354.moment H :=
  canonical_of_padded canonicalInput12354 canonicalOutput12354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12355 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2570⟩

theorem canonicalSound12355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12355.moment H = canonicalOutput12355.moment H :=
  canonical_of_padded canonicalInput12355 canonicalOutput12355 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12356 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12356 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound12356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12356.moment H = canonicalOutput12356.moment H :=
  canonical_of_padded canonicalInput12356 canonicalOutput12356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12357 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![-1, 2, 2, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12357 : ExponentCode := normalNode4861

theorem canonicalSound12357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12357.moment H = canonicalOutput12357.moment H :=
  canonical_of_padded canonicalInput12357 canonicalOutput12357 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12358 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12358 : ExponentCode := normalNode3034

theorem canonicalSound12358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12358.moment H = canonicalOutput12358.moment H :=
  canonical_of_padded canonicalInput12358 canonicalOutput12358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12359 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12359 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2563⟩

theorem canonicalSound12359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12359.moment H = canonicalOutput12359.moment H :=
  canonical_of_padded canonicalInput12359 canonicalOutput12359 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12360 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12360 : ExponentCode := normalNode6005

theorem canonicalSound12360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12360.moment H = canonicalOutput12360.moment H :=
  canonical_of_padded canonicalInput12360 canonicalOutput12360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12361 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12361 : ExponentCode := normalNode5661

theorem canonicalSound12361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12361.moment H = canonicalOutput12361.moment H :=
  canonical_of_padded canonicalInput12361 canonicalOutput12361 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12362 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12362 : ExponentCode := normalNode9702

theorem canonicalSound12362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12362.moment H = canonicalOutput12362.moment H :=
  canonical_of_padded canonicalInput12362 canonicalOutput12362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12363 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12363 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2692⟩

theorem canonicalSound12363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12363.moment H = canonicalOutput12363.moment H :=
  canonical_of_padded canonicalInput12363 canonicalOutput12363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12364 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12364 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2682⟩

theorem canonicalSound12364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12364.moment H = canonicalOutput12364.moment H :=
  canonical_of_padded canonicalInput12364 canonicalOutput12364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12365 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12365 : ExponentCode := normalNode9721

theorem canonicalSound12365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12365.moment H = canonicalOutput12365.moment H :=
  canonical_of_padded canonicalInput12365 canonicalOutput12365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12366 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![0, 2, -1, -1]]⟩

def canonicalOutput12366 : ExponentCode := normalNode9711

theorem canonicalSound12366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12366.moment H = canonicalOutput12366.moment H :=
  canonical_of_padded canonicalInput12366 canonicalOutput12366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12367 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12367 : ExponentCode := normalNode6008

theorem canonicalSound12367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12367.moment H = canonicalOutput12367.moment H :=
  canonical_of_padded canonicalInput12367 canonicalOutput12367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12368 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput12368 : ExponentCode := normalNode8955

theorem canonicalSound12368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12368.moment H = canonicalOutput12368.moment H :=
  canonical_of_padded canonicalInput12368 canonicalOutput12368 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12369 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12369 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound12369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12369.moment H = canonicalOutput12369.moment H :=
  canonical_of_padded canonicalInput12369 canonicalOutput12369 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12370 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node780⟩

theorem canonicalSound12370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12370.moment H = canonicalOutput12370.moment H :=
  canonical_of_padded canonicalInput12370 canonicalOutput12370 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12371 : ExponentCode := ⟨5, 4, ![![-1, -3, 0, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput12371 : ExponentCode := normalNode6008

theorem canonicalSound12371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12371.moment H = canonicalOutput12371.moment H :=
  canonical_of_padded canonicalInput12371 canonicalOutput12371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12372 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1169⟩

theorem canonicalSound12372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12372.moment H = canonicalOutput12372.moment H :=
  canonical_of_padded canonicalInput12372 canonicalOutput12372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12373 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12373 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node768⟩

theorem canonicalSound12373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12373.moment H = canonicalOutput12373.moment H :=
  canonical_of_padded canonicalInput12373 canonicalOutput12373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12374 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12374 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1173⟩

theorem canonicalSound12374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12374.moment H = canonicalOutput12374.moment H :=
  canonical_of_padded canonicalInput12374 canonicalOutput12374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12375 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12375 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node781⟩

theorem canonicalSound12375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12375.moment H = canonicalOutput12375.moment H :=
  canonical_of_padded canonicalInput12375 canonicalOutput12375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12376 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 0, 2, -2], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12376 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1175⟩

theorem canonicalSound12376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12376.moment H = canonicalOutput12376.moment H :=
  canonical_of_padded canonicalInput12376 canonicalOutput12376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12377 : ExponentCode := ⟨3, 4, ![![-1, -3, 0, 4], ![0, 0, 3, -3], ![1, 3, -3, -1]]⟩

def canonicalOutput12377 : ExponentCode := normalNode133

theorem canonicalSound12377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12377.moment H = canonicalOutput12377.moment H :=
  canonical_of_padded canonicalInput12377 canonicalOutput12377 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12378 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput12378 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node961⟩

theorem canonicalSound12378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12378.moment H = canonicalOutput12378.moment H :=
  canonical_of_padded canonicalInput12378 canonicalOutput12378 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12379 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput12379 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound12379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12379.moment H = canonicalOutput12379.moment H :=
  canonical_of_padded canonicalInput12379 canonicalOutput12379 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12380 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12380 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound12380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12380.moment H = canonicalOutput12380.moment H :=
  canonical_of_padded canonicalInput12380 canonicalOutput12380 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12381 : ExponentCode := ⟨3, 4, ![![-1, -3, 0, 4], ![0, 1, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput12381 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound12381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12381.moment H = canonicalOutput12381.moment H :=
  canonical_of_padded canonicalInput12381 canonicalOutput12381 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12382 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![0, 1, 3, -4], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12382 : ExponentCode := normalNode6799

theorem canonicalSound12382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12382.moment H = canonicalOutput12382.moment H :=
  canonical_of_padded canonicalInput12382 canonicalOutput12382 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12383 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput12383 : ExponentCode := normalNode7360

theorem canonicalSound12383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12383.moment H = canonicalOutput12383.moment H :=
  canonical_of_padded canonicalInput12383 canonicalOutput12383 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12384 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput12384 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2565⟩

theorem canonicalSound12384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12384.moment H = canonicalOutput12384.moment H :=
  canonical_of_padded canonicalInput12384 canonicalOutput12384 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12385 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput12385 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2521⟩

theorem canonicalSound12385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12385.moment H = canonicalOutput12385.moment H :=
  canonical_of_padded canonicalInput12385 canonicalOutput12385 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12386 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 0, 1], ![0, 2, -1, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12386 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2569⟩

theorem canonicalSound12386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12386.moment H = canonicalOutput12386.moment H :=
  canonical_of_padded canonicalInput12386 canonicalOutput12386 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12387 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12387 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1280

theorem canonicalSound12387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12387.moment H = canonicalOutput12387.moment H :=
  canonical_of_padded canonicalInput12387 canonicalOutput12387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12388 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput12388 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1263

theorem canonicalSound12388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12388.moment H = canonicalOutput12388.moment H :=
  canonical_of_padded canonicalInput12388 canonicalOutput12388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12389 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12389 : ExponentCode := normalNode6038

theorem canonicalSound12389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12389.moment H = canonicalOutput12389.moment H :=
  canonical_of_padded canonicalInput12389 canonicalOutput12389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12390 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput12390 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node594⟩

theorem canonicalSound12390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12390.moment H = canonicalOutput12390.moment H :=
  canonical_of_padded canonicalInput12390 canonicalOutput12390 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12391 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12391 : ExponentCode := normalNode6041

theorem canonicalSound12391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12391.moment H = canonicalOutput12391.moment H :=
  canonical_of_padded canonicalInput12391 canonicalOutput12391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12392 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput12392 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound12392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12392.moment H = canonicalOutput12392.moment H :=
  canonical_of_padded canonicalInput12392 canonicalOutput12392 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12393 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12393 : ExponentCode := normalNode6042

theorem canonicalSound12393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12393.moment H = canonicalOutput12393.moment H :=
  canonical_of_padded canonicalInput12393 canonicalOutput12393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12394 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput12394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code421

theorem canonicalSound12394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12394.moment H = canonicalOutput12394.moment H :=
  canonical_of_padded canonicalInput12394 canonicalOutput12394 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12395 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput12395 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound12395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12395.moment H = canonicalOutput12395.moment H :=
  canonical_of_padded canonicalInput12395 canonicalOutput12395 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12396 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput12396 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1183

theorem canonicalSound12396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12396.moment H = canonicalOutput12396.moment H :=
  canonical_of_padded canonicalInput12396 canonicalOutput12396 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12397 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput12397 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1269

theorem canonicalSound12397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12397.moment H = canonicalOutput12397.moment H :=
  canonical_of_padded canonicalInput12397 canonicalOutput12397 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12398 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput12398 : ExponentCode := normalNode11113

theorem canonicalSound12398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12398.moment H = canonicalOutput12398.moment H :=
  canonical_of_padded canonicalInput12398 canonicalOutput12398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12399 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput12399 : ExponentCode := normalNode7980

theorem canonicalSound12399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12399.moment H = canonicalOutput12399.moment H :=
  canonical_of_padded canonicalInput12399 canonicalOutput12399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12400 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12400 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1260

theorem canonicalSound12400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12400.moment H = canonicalOutput12400.moment H :=
  canonical_of_padded canonicalInput12400 canonicalOutput12400 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12401 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12401 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1237

theorem canonicalSound12401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12401.moment H = canonicalOutput12401.moment H :=
  canonical_of_padded canonicalInput12401 canonicalOutput12401 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12402 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput12402 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node494⟩

theorem canonicalSound12402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12402.moment H = canonicalOutput12402.moment H :=
  canonical_of_padded canonicalInput12402 canonicalOutput12402 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12403 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 2, -2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12403 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1237

theorem canonicalSound12403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12403.moment H = canonicalOutput12403.moment H :=
  canonical_of_padded canonicalInput12403 canonicalOutput12403 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12404 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 2, -1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12404 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1260

theorem canonicalSound12404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12404.moment H = canonicalOutput12404.moment H :=
  canonical_of_padded canonicalInput12404 canonicalOutput12404 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12405 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 3, -3, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12405 : ExponentCode := normalNode7980

theorem canonicalSound12405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12405.moment H = canonicalOutput12405.moment H :=
  canonical_of_padded canonicalInput12405 canonicalOutput12405 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12406 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 0, 2, -1], ![1, 3, -2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12406 : ExponentCode := normalNode11113

theorem canonicalSound12406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12406.moment H = canonicalOutput12406.moment H :=
  canonical_of_padded canonicalInput12406 canonicalOutput12406 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12407 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12407 : ExponentCode := normalNode7795

theorem canonicalSound12407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12407.moment H = canonicalOutput12407.moment H :=
  canonical_of_padded canonicalInput12407 canonicalOutput12407 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12408 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 0, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12408 : ExponentCode := normalNode10498

theorem canonicalSound12408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12408.moment H = canonicalOutput12408.moment H :=
  canonical_of_padded canonicalInput12408 canonicalOutput12408 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12409 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12409 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2571⟩

theorem canonicalSound12409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12409.moment H = canonicalOutput12409.moment H :=
  canonical_of_padded canonicalInput12409 canonicalOutput12409 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12410 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12410 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2254⟩

theorem canonicalSound12410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12410.moment H = canonicalOutput12410.moment H :=
  canonical_of_padded canonicalInput12410 canonicalOutput12410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12411 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12411 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound12411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12411.moment H = canonicalOutput12411.moment H :=
  canonical_of_padded canonicalInput12411 canonicalOutput12411 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput12412 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12412 : ExponentCode := normalNode10484

theorem canonicalSound12412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12412.moment H = canonicalOutput12412.moment H :=
  canonical_of_padded canonicalInput12412 canonicalOutput12412 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12413 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12413 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound12413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12413.moment H = canonicalOutput12413.moment H :=
  canonical_of_padded canonicalInput12413 canonicalOutput12413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12414 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12414 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩

theorem canonicalSound12414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12414.moment H = canonicalOutput12414.moment H :=
  canonical_of_padded canonicalInput12414 canonicalOutput12414 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12415 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12415 : ExponentCode := normalNode6059

theorem canonicalSound12415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12415.moment H = canonicalOutput12415.moment H :=
  canonical_of_padded canonicalInput12415 canonicalOutput12415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
