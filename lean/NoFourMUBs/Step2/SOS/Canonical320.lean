import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20480 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20480 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound20480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20480.moment H = canonicalOutput20480.moment H :=
  canonical_of_padded canonicalInput20480 canonicalOutput20480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20481 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20481 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound20481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20481.moment H = canonicalOutput20481.moment H :=
  canonical_of_padded canonicalInput20481 canonicalOutput20481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20482 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 3, -1], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20482 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound20482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20482.moment H = canonicalOutput20482.moment H :=
  canonical_of_padded canonicalInput20482 canonicalOutput20482 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20483 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 3, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20483 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound20483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20483.moment H = canonicalOutput20483.moment H :=
  canonical_of_padded canonicalInput20483 canonicalOutput20483 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20484 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20484 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1244⟩

theorem canonicalSound20484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20484.moment H = canonicalOutput20484.moment H :=
  canonical_of_padded canonicalInput20484 canonicalOutput20484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20485 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20485 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound20485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20485.moment H = canonicalOutput20485.moment H :=
  canonical_of_padded canonicalInput20485 canonicalOutput20485 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20486 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -1, 3, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20486 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound20486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20486.moment H = canonicalOutput20486.moment H :=
  canonical_of_padded canonicalInput20486 canonicalOutput20486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput20487 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, -1, 1], ![0, 0, 0, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20487 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound20487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20487.moment H = canonicalOutput20487.moment H :=
  canonical_of_padded canonicalInput20487 canonicalOutput20487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20488 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, -1, 1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20488 : ExponentCode := normalNode8361

theorem canonicalSound20488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20488.moment H = canonicalOutput20488.moment H :=
  canonical_of_padded canonicalInput20488 canonicalOutput20488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20489 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20489 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound20489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20489.moment H = canonicalOutput20489.moment H :=
  canonical_of_padded canonicalInput20489 canonicalOutput20489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20490 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20490 : ExponentCode := normalNode10414

theorem canonicalSound20490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20490.moment H = canonicalOutput20490.moment H :=
  canonical_of_padded canonicalInput20490 canonicalOutput20490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20491 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20491 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1262⟩

theorem canonicalSound20491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20491.moment H = canonicalOutput20491.moment H :=
  canonical_of_padded canonicalInput20491 canonicalOutput20491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20492 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20492 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1262⟩

theorem canonicalSound20492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20492.moment H = canonicalOutput20492.moment H :=
  canonical_of_padded canonicalInput20492 canonicalOutput20492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20493 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, -1, 1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20493 : ExponentCode := normalNode10415

theorem canonicalSound20493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20493.moment H = canonicalOutput20493.moment H :=
  canonical_of_padded canonicalInput20493 canonicalOutput20493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20494 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 0, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20494 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound20494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20494.moment H = canonicalOutput20494.moment H :=
  canonical_of_padded canonicalInput20494 canonicalOutput20494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20495 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20495 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound20495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20495.moment H = canonicalOutput20495.moment H :=
  canonical_of_padded canonicalInput20495 canonicalOutput20495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20496 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![0, 0, -1, 0, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20496 : ExponentCode := normalNode10274

theorem canonicalSound20496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20496.moment H = canonicalOutput20496.moment H :=
  canonical_of_padded canonicalInput20496 canonicalOutput20496 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20497 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20497 : ExponentCode := normalNode10417

theorem canonicalSound20497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20497.moment H = canonicalOutput20497.moment H :=
  canonical_of_padded canonicalInput20497 canonicalOutput20497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20498 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound20498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20498.moment H = canonicalOutput20498.moment H :=
  canonical_of_padded canonicalInput20498 canonicalOutput20498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20499 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20499 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound20499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20499.moment H = canonicalOutput20499.moment H :=
  canonical_of_padded canonicalInput20499 canonicalOutput20499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20500 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20500 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound20500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20500.moment H = canonicalOutput20500.moment H :=
  canonical_of_padded canonicalInput20500 canonicalOutput20500 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20501 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20501 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound20501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20501.moment H = canonicalOutput20501.moment H :=
  canonical_of_padded canonicalInput20501 canonicalOutput20501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20502 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20502 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound20502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20502.moment H = canonicalOutput20502.moment H :=
  canonical_of_padded canonicalInput20502 canonicalOutput20502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20503 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20503 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound20503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20503.moment H = canonicalOutput20503.moment H :=
  canonical_of_padded canonicalInput20503 canonicalOutput20503 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput20504 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -2, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20504 : ExponentCode := normalNode10424

theorem canonicalSound20504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20504.moment H = canonicalOutput20504.moment H :=
  canonical_of_padded canonicalInput20504 canonicalOutput20504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20505 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20505 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound20505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20505.moment H = canonicalOutput20505.moment H :=
  canonical_of_padded canonicalInput20505 canonicalOutput20505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20506 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 0, 0, 2, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound20506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20506.moment H = canonicalOutput20506.moment H :=
  canonical_of_padded canonicalInput20506 canonicalOutput20506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20507 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput20507 : ExponentCode := normalNode10331

theorem canonicalSound20507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20507.moment H = canonicalOutput20507.moment H :=
  canonical_of_padded canonicalInput20507 canonicalOutput20507 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20508 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20508 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound20508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20508.moment H = canonicalOutput20508.moment H :=
  canonical_of_padded canonicalInput20508 canonicalOutput20508 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20509 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 3, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20509 : ExponentCode := normalNode7872

theorem canonicalSound20509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20509.moment H = canonicalOutput20509.moment H :=
  canonical_of_padded canonicalInput20509 canonicalOutput20509 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20510 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput20510 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound20510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20510.moment H = canonicalOutput20510.moment H :=
  canonical_of_padded canonicalInput20510 canonicalOutput20510 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20511 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 0, -1], ![0, 0, -1, 2, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20511 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1246⟩

theorem canonicalSound20511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20511.moment H = canonicalOutput20511.moment H :=
  canonical_of_padded canonicalInput20511 canonicalOutput20511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20512 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, 2, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound20512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20512.moment H = canonicalOutput20512.moment H :=
  canonical_of_padded canonicalInput20512 canonicalOutput20512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20513 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20513 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2725⟩

theorem canonicalSound20513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20513.moment H = canonicalOutput20513.moment H :=
  canonical_of_padded canonicalInput20513 canonicalOutput20513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20514 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 2, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20514 : ExponentCode := normalNode10646

theorem canonicalSound20514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20514.moment H = canonicalOutput20514.moment H :=
  canonical_of_padded canonicalInput20514 canonicalOutput20514 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20515 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 1, -2], ![0, 0, -1, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20515 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound20515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20515.moment H = canonicalOutput20515.moment H :=
  canonical_of_padded canonicalInput20515 canonicalOutput20515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20516 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound20516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20516.moment H = canonicalOutput20516.moment H :=
  canonical_of_padded canonicalInput20516 canonicalOutput20516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20517 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20517 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound20517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20517.moment H = canonicalOutput20517.moment H :=
  canonical_of_padded canonicalInput20517 canonicalOutput20517 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20518 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20518 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound20518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20518.moment H = canonicalOutput20518.moment H :=
  canonical_of_padded canonicalInput20518 canonicalOutput20518 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput20519 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 0, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20519 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound20519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20519.moment H = canonicalOutput20519.moment H :=
  canonical_of_padded canonicalInput20519 canonicalOutput20519 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput20520 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -2, 0], ![0, 0, -2, 2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20520 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound20520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20520.moment H = canonicalOutput20520.moment H :=
  canonical_of_padded canonicalInput20520 canonicalOutput20520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20521 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -2, 0], ![0, 1, -2, 2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20521 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound20521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20521.moment H = canonicalOutput20521.moment H :=
  canonical_of_padded canonicalInput20521 canonicalOutput20521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20522 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 3, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20522 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1758⟩

theorem canonicalSound20522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20522.moment H = canonicalOutput20522.moment H :=
  canonical_of_padded canonicalInput20522 canonicalOutput20522 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20523 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, -1, -1, 3, -2]]⟩

def canonicalOutput20523 : ExponentCode := normalNode2391

theorem canonicalSound20523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20523.moment H = canonicalOutput20523.moment H :=
  canonical_of_padded canonicalInput20523 canonicalOutput20523 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20524 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput20524 : ExponentCode := normalNode10532

theorem canonicalSound20524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20524.moment H = canonicalOutput20524.moment H :=
  canonical_of_padded canonicalInput20524 canonicalOutput20524 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20525 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20525 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound20525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20525.moment H = canonicalOutput20525.moment H :=
  canonical_of_padded canonicalInput20525 canonicalOutput20525 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20526 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 3, -3], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput20526 : ExponentCode := normalNode4501

theorem canonicalSound20526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20526.moment H = canonicalOutput20526.moment H :=
  canonical_of_padded canonicalInput20526 canonicalOutput20526 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20527 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, 0, -2], ![0, 1, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20527 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1749⟩

theorem canonicalSound20527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20527.moment H = canonicalOutput20527.moment H :=
  canonical_of_padded canonicalInput20527 canonicalOutput20527 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20528 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput20528 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound20528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20528.moment H = canonicalOutput20528.moment H :=
  canonical_of_padded canonicalInput20528 canonicalOutput20528 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20529 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![1, -2, 0, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput20529 : ExponentCode := normalNode10757

theorem canonicalSound20529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20529.moment H = canonicalOutput20529.moment H :=
  canonical_of_padded canonicalInput20529 canonicalOutput20529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20530 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![1, -2, 1, -1, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput20530 : ExponentCode := normalNode9530

theorem canonicalSound20530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20530.moment H = canonicalOutput20530.moment H :=
  canonical_of_padded canonicalInput20530 canonicalOutput20530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20531 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![1, -1, -1, 0, 1], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput20531 : ExponentCode := normalNode8130

theorem canonicalSound20531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20531.moment H = canonicalOutput20531.moment H :=
  canonical_of_padded canonicalInput20531 canonicalOutput20531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20532 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![1, -1, 1, 1, -2], ![0, 0, 1, -2, 1], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput20532 : ExponentCode := normalNode2458

theorem canonicalSound20532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20532.moment H = canonicalOutput20532.moment H :=
  canonical_of_padded canonicalInput20532 canonicalOutput20532 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20533 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -2, 3], ![0, -1, 0, 1, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput20533 : ExponentCode := normalNode10367

theorem canonicalSound20533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20533.moment H = canonicalOutput20533.moment H :=
  canonical_of_padded canonicalInput20533 canonicalOutput20533 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation392, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput20534 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -2, 3], ![0, 0, 0, 0, 2, -2], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput20534 : ExponentCode := normalNode10371

theorem canonicalSound20534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20534.moment H = canonicalOutput20534.moment H :=
  canonical_of_padded canonicalInput20534 canonicalOutput20534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation241⟩ (by decide +kernel) hH

def canonicalInput20535 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -2, 3], ![0, 0, 0, 0, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 0, -1, 1, 0, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput20535 : ExponentCode := normalNode10371

theorem canonicalSound20535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20535.moment H = canonicalOutput20535.moment H :=
  canonical_of_padded canonicalInput20535 canonicalOutput20535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput20536 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -2, 3], ![0, 0, 0, 0, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 1, 0, -1]]⟩

def canonicalOutput20536 : ExponentCode := normalNode10751

theorem canonicalSound20536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20536.moment H = canonicalOutput20536.moment H :=
  canonical_of_padded canonicalInput20536 canonicalOutput20536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation171, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput20537 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -1, 2], ![0, -1, 0, 1, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput20537 : ExponentCode := normalNode10396

theorem canonicalSound20537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20537.moment H = canonicalOutput20537.moment H :=
  canonical_of_padded canonicalInput20537 canonicalOutput20537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation88, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput20538 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -1, 2], ![0, 0, 0, 0, 2, -2], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput20538 : ExponentCode := normalNode10415

theorem canonicalSound20538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20538.moment H = canonicalOutput20538.moment H :=
  canonical_of_padded canonicalInput20538 canonicalOutput20538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation241⟩ (by decide +kernel) hH

def canonicalInput20539 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -1, 2], ![0, 0, 0, 0, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 0, -1, 1, 0, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput20539 : ExponentCode := normalNode10415

theorem canonicalSound20539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20539.moment H = canonicalOutput20539.moment H :=
  canonical_of_padded canonicalInput20539 canonicalOutput20539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput20540 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, -1, 2], ![0, 0, 0, 0, 2, -2], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 1, -1, 0]]⟩

def canonicalOutput20540 : ExponentCode := normalNode10466

theorem canonicalSound20540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20540.moment H = canonicalOutput20540.moment H :=
  canonical_of_padded canonicalInput20540 canonicalOutput20540 (by decide) (by decide)
    ⟨true, true, canonicalPermutation172, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput20541 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![-1, -2, 1, 1, 1, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20541 : ExponentCode := normalNode8459

theorem canonicalSound20541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20541.moment H = canonicalOutput20541.moment H :=
  canonical_of_padded canonicalInput20541 canonicalOutput20541 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation346, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput20542 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![-1, -1, -1, 2, 1, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20542 : ExponentCode := normalNode8457

theorem canonicalSound20542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20542.moment H = canonicalOutput20542.moment H :=
  canonical_of_padded canonicalInput20542 canonicalOutput20542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput20543 : ExponentCode := ⟨6, 6, ![![-1, 0, 0, 0, 0, 1], ![0, -2, 1, 1, 0, 0], ![-1, 1, -2, 1, 1, 0], ![0, 1, 1, -2, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]⟩

def canonicalOutput20543 : ExponentCode := normalNode8459

theorem canonicalSound20543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20543.moment H = canonicalOutput20543.moment H :=
  canonical_of_padded canonicalInput20543 canonicalOutput20543 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
