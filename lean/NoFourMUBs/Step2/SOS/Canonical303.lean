import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19392 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19392 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2452⟩

theorem canonicalSound19392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19392.moment H = canonicalOutput19392.moment H :=
  canonical_of_padded canonicalInput19392 canonicalOutput19392 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19393 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 2, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19393 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2451⟩

theorem canonicalSound19393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19393.moment H = canonicalOutput19393.moment H :=
  canonical_of_padded canonicalInput19393 canonicalOutput19393 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19394 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19394 : ExponentCode := normalNode10636

theorem canonicalSound19394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19394.moment H = canonicalOutput19394.moment H :=
  canonical_of_padded canonicalInput19394 canonicalOutput19394 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19395 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19395 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound19395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19395.moment H = canonicalOutput19395.moment H :=
  canonical_of_padded canonicalInput19395 canonicalOutput19395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19396 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19396 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound19396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19396.moment H = canonicalOutput19396.moment H :=
  canonical_of_padded canonicalInput19396 canonicalOutput19396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19397 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput19397 : ExponentCode := normalNode4459

theorem canonicalSound19397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19397.moment H = canonicalOutput19397.moment H :=
  canonical_of_padded canonicalInput19397 canonicalOutput19397 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19398 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 1, 1, -3], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19398 : ExponentCode := normalNode4374

theorem canonicalSound19398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19398.moment H = canonicalOutput19398.moment H :=
  canonical_of_padded canonicalInput19398 canonicalOutput19398 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19399 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -1, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19399 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound19399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19399.moment H = canonicalOutput19399.moment H :=
  canonical_of_padded canonicalInput19399 canonicalOutput19399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19400 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -1, 1], ![0, 1, 1, -1, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput19400 : ExponentCode := normalNode9463

theorem canonicalSound19400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19400.moment H = canonicalOutput19400.moment H :=
  canonical_of_padded canonicalInput19400 canonicalOutput19400 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19401 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -1, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19401 : ExponentCode := normalNode10646

theorem canonicalSound19401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19401.moment H = canonicalOutput19401.moment H :=
  canonical_of_padded canonicalInput19401 canonicalOutput19401 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19402 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, -1, 1], ![0, 1, 1, 1, -3], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19402 : ExponentCode := normalNode9422

theorem canonicalSound19402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19402.moment H = canonicalOutput19402.moment H :=
  canonical_of_padded canonicalInput19402 canonicalOutput19402 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19403 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound19403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19403.moment H = canonicalOutput19403.moment H :=
  canonical_of_padded canonicalInput19403 canonicalOutput19403 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19404 : ExponentCode := ⟨5, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19404 : ExponentCode := normalNode8432

theorem canonicalSound19404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19404.moment H = canonicalOutput19404.moment H :=
  canonical_of_padded canonicalInput19404 canonicalOutput19404 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput19405 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19405 : ExponentCode := normalNode9100

theorem canonicalSound19405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19405.moment H = canonicalOutput19405.moment H :=
  canonical_of_padded canonicalInput19405 canonicalOutput19405 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19406 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput19406 : ExponentCode := normalNode7033

theorem canonicalSound19406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19406.moment H = canonicalOutput19406.moment H :=
  canonical_of_padded canonicalInput19406 canonicalOutput19406 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19407 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound19407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19407.moment H = canonicalOutput19407.moment H :=
  canonical_of_padded canonicalInput19407 canonicalOutput19407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19408 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound19408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19408.moment H = canonicalOutput19408.moment H :=
  canonical_of_padded canonicalInput19408 canonicalOutput19408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19409 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -1, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput19409 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1787⟩

theorem canonicalSound19409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19409.moment H = canonicalOutput19409.moment H :=
  canonical_of_padded canonicalInput19409 canonicalOutput19409 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19410 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19410 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound19410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19410.moment H = canonicalOutput19410.moment H :=
  canonical_of_padded canonicalInput19410 canonicalOutput19410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19411 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19411 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound19411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19411.moment H = canonicalOutput19411.moment H :=
  canonical_of_padded canonicalInput19411 canonicalOutput19411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19412 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput19412 : ExponentCode := normalNode10652

theorem canonicalSound19412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19412.moment H = canonicalOutput19412.moment H :=
  canonical_of_padded canonicalInput19412 canonicalOutput19412 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19413 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19413 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound19413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19413.moment H = canonicalOutput19413.moment H :=
  canonical_of_padded canonicalInput19413 canonicalOutput19413 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19414 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput19414 : ExponentCode := normalNode2706

theorem canonicalSound19414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19414.moment H = canonicalOutput19414.moment H :=
  canonical_of_padded canonicalInput19414 canonicalOutput19414 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19415 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19415 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound19415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19415.moment H = canonicalOutput19415.moment H :=
  canonical_of_padded canonicalInput19415 canonicalOutput19415 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19416 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19416 : ExponentCode := normalNode10530

theorem canonicalSound19416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19416.moment H = canonicalOutput19416.moment H :=
  canonical_of_padded canonicalInput19416 canonicalOutput19416 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19417 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19417 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound19417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19417.moment H = canonicalOutput19417.moment H :=
  canonical_of_padded canonicalInput19417 canonicalOutput19417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19418 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19418 : ExponentCode := normalNode8966

theorem canonicalSound19418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19418.moment H = canonicalOutput19418.moment H :=
  canonical_of_padded canonicalInput19418 canonicalOutput19418 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19419 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19419 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound19419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19419.moment H = canonicalOutput19419.moment H :=
  canonical_of_padded canonicalInput19419 canonicalOutput19419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19420 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound19420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19420.moment H = canonicalOutput19420.moment H :=
  canonical_of_padded canonicalInput19420 canonicalOutput19420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19421 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19421 : ExponentCode := normalNode2507

theorem canonicalSound19421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19421.moment H = canonicalOutput19421.moment H :=
  canonical_of_padded canonicalInput19421 canonicalOutput19421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19422 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19422 : ExponentCode := normalNode9454

theorem canonicalSound19422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19422.moment H = canonicalOutput19422.moment H :=
  canonical_of_padded canonicalInput19422 canonicalOutput19422 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19423 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput19423 : ExponentCode := normalNode7031

theorem canonicalSound19423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19423.moment H = canonicalOutput19423.moment H :=
  canonical_of_padded canonicalInput19423 canonicalOutput19423 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19424 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19424 : ExponentCode := normalNode10569

theorem canonicalSound19424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19424.moment H = canonicalOutput19424.moment H :=
  canonical_of_padded canonicalInput19424 canonicalOutput19424 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19425 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19425 : ExponentCode := normalNode10659

theorem canonicalSound19425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19425.moment H = canonicalOutput19425.moment H :=
  canonical_of_padded canonicalInput19425 canonicalOutput19425 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19426 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19426 : ExponentCode := normalNode10569

theorem canonicalSound19426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19426.moment H = canonicalOutput19426.moment H :=
  canonical_of_padded canonicalInput19426 canonicalOutput19426 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19427 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 1, 2], ![1, -1, 1, 0, -1], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19427 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound19427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19427.moment H = canonicalOutput19427.moment H :=
  canonical_of_padded canonicalInput19427 canonicalOutput19427 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19428 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 2, 1], ![0, -1, 1, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19428 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2451⟩

theorem canonicalSound19428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19428.moment H = canonicalOutput19428.moment H :=
  canonical_of_padded canonicalInput19428 canonicalOutput19428 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19429 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 2, 1], ![0, -1, 1, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19429 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2452⟩

theorem canonicalSound19429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19429.moment H = canonicalOutput19429.moment H :=
  canonical_of_padded canonicalInput19429 canonicalOutput19429 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19430 : ExponentCode := ⟨4, 5, ![![-1, 0, -2, 2, 1], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19430 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound19430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19430.moment H = canonicalOutput19430.moment H :=
  canonical_of_padded canonicalInput19430 canonicalOutput19430 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19431 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput19431 : ExponentCode := normalNode9368

theorem canonicalSound19431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19431.moment H = canonicalOutput19431.moment H :=
  canonical_of_padded canonicalInput19431 canonicalOutput19431 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19432 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput19432 : ExponentCode := normalNode9366

theorem canonicalSound19432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19432.moment H = canonicalOutput19432.moment H :=
  canonical_of_padded canonicalInput19432 canonicalOutput19432 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19433 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput19433 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound19433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19433.moment H = canonicalOutput19433.moment H :=
  canonical_of_padded canonicalInput19433 canonicalOutput19433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19434 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput19434 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound19434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19434.moment H = canonicalOutput19434.moment H :=
  canonical_of_padded canonicalInput19434 canonicalOutput19434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19435 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput19435 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound19435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19435.moment H = canonicalOutput19435.moment H :=
  canonical_of_padded canonicalInput19435 canonicalOutput19435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19436 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 1, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput19436 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1019⟩

theorem canonicalSound19436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19436.moment H = canonicalOutput19436.moment H :=
  canonical_of_padded canonicalInput19436 canonicalOutput19436 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19437 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput19437 : ExponentCode := normalNode9026

theorem canonicalSound19437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19437.moment H = canonicalOutput19437.moment H :=
  canonical_of_padded canonicalInput19437 canonicalOutput19437 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19438 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19438 : ExponentCode := normalNode9027

theorem canonicalSound19438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19438.moment H = canonicalOutput19438.moment H :=
  canonical_of_padded canonicalInput19438 canonicalOutput19438 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19439 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 2, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput19439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound19439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19439.moment H = canonicalOutput19439.moment H :=
  canonical_of_padded canonicalInput19439 canonicalOutput19439 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19440 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 2, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput19440 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1012⟩

theorem canonicalSound19440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19440.moment H = canonicalOutput19440.moment H :=
  canonical_of_padded canonicalInput19440 canonicalOutput19440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19441 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2519⟩

theorem canonicalSound19441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19441.moment H = canonicalOutput19441.moment H :=
  canonical_of_padded canonicalInput19441 canonicalOutput19441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19442 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19442 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2544⟩

theorem canonicalSound19442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19442.moment H = canonicalOutput19442.moment H :=
  canonical_of_padded canonicalInput19442 canonicalOutput19442 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19443 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput19443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2517⟩

theorem canonicalSound19443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19443.moment H = canonicalOutput19443.moment H :=
  canonical_of_padded canonicalInput19443 canonicalOutput19443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19444 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2545⟩

theorem canonicalSound19444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19444.moment H = canonicalOutput19444.moment H :=
  canonical_of_padded canonicalInput19444 canonicalOutput19444 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19445 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19445 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound19445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19445.moment H = canonicalOutput19445.moment H :=
  canonical_of_padded canonicalInput19445 canonicalOutput19445 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19446 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19446 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2020⟩

theorem canonicalSound19446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19446.moment H = canonicalOutput19446.moment H :=
  canonical_of_padded canonicalInput19446 canonicalOutput19446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19447 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound19447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19447.moment H = canonicalOutput19447.moment H :=
  canonical_of_padded canonicalInput19447 canonicalOutput19447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19448 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput19448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node949⟩

theorem canonicalSound19448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19448.moment H = canonicalOutput19448.moment H :=
  canonical_of_padded canonicalInput19448 canonicalOutput19448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19449 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![-1, -1, 3, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput19449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound19449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19449.moment H = canonicalOutput19449.moment H :=
  canonical_of_padded canonicalInput19449 canonicalOutput19449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19450 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput19450 : ExponentCode := normalNode10546

theorem canonicalSound19450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19450.moment H = canonicalOutput19450.moment H :=
  canonical_of_padded canonicalInput19450 canonicalOutput19450 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19451 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19451 : ExponentCode := normalNode10623

theorem canonicalSound19451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19451.moment H = canonicalOutput19451.moment H :=
  canonical_of_padded canonicalInput19451 canonicalOutput19451 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19452 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19452 : ExponentCode := normalNode10623

theorem canonicalSound19452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19452.moment H = canonicalOutput19452.moment H :=
  canonical_of_padded canonicalInput19452 canonicalOutput19452 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19453 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, -1, 2], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19453 : ExponentCode := normalNode9673

theorem canonicalSound19453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19453.moment H = canonicalOutput19453.moment H :=
  canonical_of_padded canonicalInput19453 canonicalOutput19453 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19454 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19454 : ExponentCode := normalNode4135

theorem canonicalSound19454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19454.moment H = canonicalOutput19454.moment H :=
  canonical_of_padded canonicalInput19454 canonicalOutput19454 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19455 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19455 : ExponentCode := normalNode10847

theorem canonicalSound19455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19455.moment H = canonicalOutput19455.moment H :=
  canonical_of_padded canonicalInput19455 canonicalOutput19455 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
