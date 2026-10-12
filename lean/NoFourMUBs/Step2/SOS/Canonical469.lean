import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30016 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput30016 : ExponentCode := normalNode4080

theorem canonicalSound30016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30016.moment H = canonicalOutput30016.moment H :=
  canonical_of_padded canonicalInput30016 canonicalOutput30016 (by decide) (by decide)
    ⟨false, true, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30017 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput30017 : ExponentCode := normalNode4462

theorem canonicalSound30017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30017.moment H = canonicalOutput30017.moment H :=
  canonical_of_padded canonicalInput30017 canonicalOutput30017 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30018 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![-1, 0, 2, -1]]⟩

def canonicalOutput30018 : ExponentCode := normalNode3779

theorem canonicalSound30018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30018.moment H = canonicalOutput30018.moment H :=
  canonical_of_padded canonicalInput30018 canonicalOutput30018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30019 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 1, 0], ![-1, 1, -1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput30019 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3208⟩

theorem canonicalSound30019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30019.moment H = canonicalOutput30019.moment H :=
  canonical_of_padded canonicalInput30019 canonicalOutput30019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput30020 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput30020 : ExponentCode := normalNode10198

theorem canonicalSound30020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30020.moment H = canonicalOutput30020.moment H :=
  canonical_of_padded canonicalInput30020 canonicalOutput30020 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30021 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -1, 1], ![0, 1, 0, -1]]⟩

def canonicalOutput30021 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3208⟩

theorem canonicalSound30021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30021.moment H = canonicalOutput30021.moment H :=
  canonical_of_padded canonicalInput30021 canonicalOutput30021 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation256, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30022 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, -1, 1, 0], ![0, 1, 1, -2], ![-2, 2, -1, 1]]⟩

def canonicalOutput30022 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3042⟩

theorem canonicalSound30022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30022.moment H = canonicalOutput30022.moment H :=
  canonical_of_padded canonicalInput30022 canonicalOutput30022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30023 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput30023 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3040⟩

theorem canonicalSound30023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30023.moment H = canonicalOutput30023.moment H :=
  canonical_of_padded canonicalInput30023 canonicalOutput30023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30024 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![0, 1, 1, -2], ![-2, 2, -2, 2]]⟩

def canonicalOutput30024 : ExponentCode := normalNode786

theorem canonicalSound30024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30024.moment H = canonicalOutput30024.moment H :=
  canonical_of_padded canonicalInput30024 canonicalOutput30024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30025 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![0, -1, 3, -2]]⟩

def canonicalOutput30025 : ExponentCode := normalNode3983

theorem canonicalSound30025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30025.moment H = canonicalOutput30025.moment H :=
  canonical_of_padded canonicalInput30025 canonicalOutput30025 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30026 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput30026 : ExponentCode := normalNode3981

theorem canonicalSound30026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30026.moment H = canonicalOutput30026.moment H :=
  canonical_of_padded canonicalInput30026 canonicalOutput30026 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30027 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput30027 : ExponentCode := normalNode5423

theorem canonicalSound30027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30027.moment H = canonicalOutput30027.moment H :=
  canonical_of_padded canonicalInput30027 canonicalOutput30027 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30028 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput30028 : ExponentCode := normalNode3501

theorem canonicalSound30028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30028.moment H = canonicalOutput30028.moment H :=
  canonical_of_padded canonicalInput30028 canonicalOutput30028 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30029 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput30029 : ExponentCode := normalNode3975

theorem canonicalSound30029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30029.moment H = canonicalOutput30029.moment H :=
  canonical_of_padded canonicalInput30029 canonicalOutput30029 (by decide) (by decide)
    ⟨false, true, canonicalPermutation344, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30030 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput30030 : ExponentCode := normalNode3977

theorem canonicalSound30030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30030.moment H = canonicalOutput30030.moment H :=
  canonical_of_padded canonicalInput30030 canonicalOutput30030 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30031 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput30031 : ExponentCode := normalNode9323

theorem canonicalSound30031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30031.moment H = canonicalOutput30031.moment H :=
  canonical_of_padded canonicalInput30031 canonicalOutput30031 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30032 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput30032 : ExponentCode := normalNode6896

theorem canonicalSound30032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30032.moment H = canonicalOutput30032.moment H :=
  canonical_of_padded canonicalInput30032 canonicalOutput30032 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30033 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 2, 0, -2], ![0, -1, 3, -2]]⟩

def canonicalOutput30033 : ExponentCode := normalNode3530

theorem canonicalSound30033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30033.moment H = canonicalOutput30033.moment H :=
  canonical_of_padded canonicalInput30033 canonicalOutput30033 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30034 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput30034 : ExponentCode := normalNode3887

theorem canonicalSound30034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30034.moment H = canonicalOutput30034.moment H :=
  canonical_of_padded canonicalInput30034 canonicalOutput30034 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30035 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, 2, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput30035 : ExponentCode := normalNode4004

theorem canonicalSound30035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30035.moment H = canonicalOutput30035.moment H :=
  canonical_of_padded canonicalInput30035 canonicalOutput30035 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30036 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![0, -1, 2, -1]]⟩

def canonicalOutput30036 : ExponentCode := normalNode3887

theorem canonicalSound30036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30036.moment H = canonicalOutput30036.moment H :=
  canonical_of_padded canonicalInput30036 canonicalOutput30036 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30037 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, 0, -2]]⟩

def canonicalOutput30037 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3174⟩

theorem canonicalSound30037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30037.moment H = canonicalOutput30037.moment H :=
  canonical_of_padded canonicalInput30037 canonicalOutput30037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput30038 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1]]⟩

def canonicalOutput30038 : ExponentCode := normalNode4268

theorem canonicalSound30038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30038.moment H = canonicalOutput30038.moment H :=
  canonical_of_padded canonicalInput30038 canonicalOutput30038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30039 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput30039 : ExponentCode := normalNode5126

theorem canonicalSound30039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30039.moment H = canonicalOutput30039.moment H :=
  canonical_of_padded canonicalInput30039 canonicalOutput30039 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30040 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput30040 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3210⟩

theorem canonicalSound30040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30040.moment H = canonicalOutput30040.moment H :=
  canonical_of_padded canonicalInput30040 canonicalOutput30040 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30041 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput30041 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3206⟩

theorem canonicalSound30041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30041.moment H = canonicalOutput30041.moment H :=
  canonical_of_padded canonicalInput30041 canonicalOutput30041 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30042 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput30042 : ExponentCode := normalNode5424

theorem canonicalSound30042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30042.moment H = canonicalOutput30042.moment H :=
  canonical_of_padded canonicalInput30042 canonicalOutput30042 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30043 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput30043 : ExponentCode := normalNode5943

theorem canonicalSound30043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30043.moment H = canonicalOutput30043.moment H :=
  canonical_of_padded canonicalInput30043 canonicalOutput30043 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30044 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput30044 : ExponentCode := normalNode3465

theorem canonicalSound30044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30044.moment H = canonicalOutput30044.moment H :=
  canonical_of_padded canonicalInput30044 canonicalOutput30044 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30045 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput30045 : ExponentCode := normalNode3922

theorem canonicalSound30045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30045.moment H = canonicalOutput30045.moment H :=
  canonical_of_padded canonicalInput30045 canonicalOutput30045 (by decide) (by decide)
    ⟨false, true, canonicalPermutation344, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30046 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 1, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput30046 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2972⟩

theorem canonicalSound30046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30046.moment H = canonicalOutput30046.moment H :=
  canonical_of_padded canonicalInput30046 canonicalOutput30046 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30047 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput30047 : ExponentCode := normalNode3771

theorem canonicalSound30047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30047.moment H = canonicalOutput30047.moment H :=
  canonical_of_padded canonicalInput30047 canonicalOutput30047 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30048 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput30048 : ExponentCode := normalNode8785

theorem canonicalSound30048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30048.moment H = canonicalOutput30048.moment H :=
  canonical_of_padded canonicalInput30048 canonicalOutput30048 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30049 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput30049 : ExponentCode := normalNode5337

theorem canonicalSound30049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30049.moment H = canonicalOutput30049.moment H :=
  canonical_of_padded canonicalInput30049 canonicalOutput30049 (by decide) (by decide)
    ⟨false, true, canonicalPermutation344, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30050 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput30050 : ExponentCode := normalNode4361

theorem canonicalSound30050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30050.moment H = canonicalOutput30050.moment H :=
  canonical_of_padded canonicalInput30050 canonicalOutput30050 (by decide) (by decide)
    ⟨false, true, canonicalPermutation344, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30051 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 0, -2], ![-1, 0, 2, -1]]⟩

def canonicalOutput30051 : ExponentCode := normalNode3771

theorem canonicalSound30051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30051.moment H = canonicalOutput30051.moment H :=
  canonical_of_padded canonicalInput30051 canonicalOutput30051 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30052 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 1, 0], ![0, 2, 0, -2]]⟩

def canonicalOutput30052 : ExponentCode := normalNode3928

theorem canonicalSound30052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30052.moment H = canonicalOutput30052.moment H :=
  canonical_of_padded canonicalInput30052 canonicalOutput30052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput30053 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 2, -1, -1]]⟩

def canonicalOutput30053 : ExponentCode := normalNode4360

theorem canonicalSound30053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30053.moment H = canonicalOutput30053.moment H :=
  canonical_of_padded canonicalInput30053 canonicalOutput30053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30054 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 0, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput30054 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3209⟩

theorem canonicalSound30054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30054.moment H = canonicalOutput30054.moment H :=
  canonical_of_padded canonicalInput30054 canonicalOutput30054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation85, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput30055 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput30055 : ExponentCode := normalNode9285

theorem canonicalSound30055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30055.moment H = canonicalOutput30055.moment H :=
  canonical_of_padded canonicalInput30055 canonicalOutput30055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation301, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput30056 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput30056 : ExponentCode := normalNode5395

theorem canonicalSound30056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30056.moment H = canonicalOutput30056.moment H :=
  canonical_of_padded canonicalInput30056 canonicalOutput30056 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30057 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, -1, 2, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput30057 : ExponentCode := normalNode5100

theorem canonicalSound30057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30057.moment H = canonicalOutput30057.moment H :=
  canonical_of_padded canonicalInput30057 canonicalOutput30057 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30058 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput30058 : ExponentCode := normalNode4283

theorem canonicalSound30058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30058.moment H = canonicalOutput30058.moment H :=
  canonical_of_padded canonicalInput30058 canonicalOutput30058 (by decide) (by decide)
    ⟨false, false, canonicalPermutation128, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput30059 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![0, 1, 0, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput30059 : ExponentCode := normalNode2702

theorem canonicalSound30059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30059.moment H = canonicalOutput30059.moment H :=
  canonical_of_padded canonicalInput30059 canonicalOutput30059 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30060 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![-1, -2, 1, 2]]⟩

def canonicalOutput30060 : ExponentCode := normalNode10197

theorem canonicalSound30060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30060.moment H = canonicalOutput30060.moment H :=
  canonical_of_padded canonicalInput30060 canonicalOutput30060 (by decide) (by decide)
    ⟨false, false, canonicalPermutation179, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30061 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput30061 : ExponentCode := normalNode1823

theorem canonicalSound30061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30061.moment H = canonicalOutput30061.moment H :=
  canonical_of_padded canonicalInput30061 canonicalOutput30061 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30062 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput30062 : ExponentCode := normalNode5614

theorem canonicalSound30062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30062.moment H = canonicalOutput30062.moment H :=
  canonical_of_padded canonicalInput30062 canonicalOutput30062 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30063 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput30063 : ExponentCode := normalNode5620

theorem canonicalSound30063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30063.moment H = canonicalOutput30063.moment H :=
  canonical_of_padded canonicalInput30063 canonicalOutput30063 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30064 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput30064 : ExponentCode := normalNode5846

theorem canonicalSound30064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30064.moment H = canonicalOutput30064.moment H :=
  canonical_of_padded canonicalInput30064 canonicalOutput30064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30065 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput30065 : ExponentCode := normalNode5930

theorem canonicalSound30065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30065.moment H = canonicalOutput30065.moment H :=
  canonical_of_padded canonicalInput30065 canonicalOutput30065 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30066 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 2, -2]]⟩

def canonicalOutput30066 : ExponentCode := normalNode3794

theorem canonicalSound30066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30066.moment H = canonicalOutput30066.moment H :=
  canonical_of_padded canonicalInput30066 canonicalOutput30066 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30067 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 2, -1, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput30067 : ExponentCode := normalNode5632

theorem canonicalSound30067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30067.moment H = canonicalOutput30067.moment H :=
  canonical_of_padded canonicalInput30067 canonicalOutput30067 (by decide) (by decide)
    ⟨false, true, canonicalPermutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30068 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -2, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput30068 : ExponentCode := normalNode5691

theorem canonicalSound30068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30068.moment H = canonicalOutput30068.moment H :=
  canonical_of_padded canonicalInput30068 canonicalOutput30068 (by decide) (by decide)
    ⟨false, true, canonicalPermutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30069 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2]]⟩

def canonicalOutput30069 : ExponentCode := normalNode3863

theorem canonicalSound30069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30069.moment H = canonicalOutput30069.moment H :=
  canonical_of_padded canonicalInput30069 canonicalOutput30069 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30070 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, 2, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput30070 : ExponentCode := normalNode5346

theorem canonicalSound30070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30070.moment H = canonicalOutput30070.moment H :=
  canonical_of_padded canonicalInput30070 canonicalOutput30070 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30071 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![0, -1, 2, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput30071 : ExponentCode := normalNode5060

theorem canonicalSound30071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30071.moment H = canonicalOutput30071.moment H :=
  canonical_of_padded canonicalInput30071 canonicalOutput30071 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30072 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, 2, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput30072 : ExponentCode := normalNode5384

theorem canonicalSound30072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30072.moment H = canonicalOutput30072.moment H :=
  canonical_of_padded canonicalInput30072 canonicalOutput30072 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30073 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput30073 : ExponentCode := normalNode4337

theorem canonicalSound30073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30073.moment H = canonicalOutput30073.moment H :=
  canonical_of_padded canonicalInput30073 canonicalOutput30073 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30074 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![0, -1, 1, 0], ![-1, 2, 1, -2]]⟩

def canonicalOutput30074 : ExponentCode := normalNode2702

theorem canonicalSound30074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30074.moment H = canonicalOutput30074.moment H :=
  canonical_of_padded canonicalInput30074 canonicalOutput30074 (by decide) (by decide)
    ⟨false, true, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30075 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![0, -1, 2, -1], ![-1, 2, 0, -1]]⟩

def canonicalOutput30075 : ExponentCode := normalNode4337

theorem canonicalSound30075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30075.moment H = canonicalOutput30075.moment H :=
  canonical_of_padded canonicalInput30075 canonicalOutput30075 (by decide) (by decide)
    ⟨false, true, canonicalPermutation270, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30076 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput30076 : ExponentCode := normalNode3470

theorem canonicalSound30076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30076.moment H = canonicalOutput30076.moment H :=
  canonical_of_padded canonicalInput30076 canonicalOutput30076 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30077 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput30077 : ExponentCode := normalNode5424

theorem canonicalSound30077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30077.moment H = canonicalOutput30077.moment H :=
  canonical_of_padded canonicalInput30077 canonicalOutput30077 (by decide) (by decide)
    ⟨false, false, canonicalPermutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30078 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput30078 : ExponentCode := normalNode2905

theorem canonicalSound30078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30078.moment H = canonicalOutput30078.moment H :=
  canonical_of_padded canonicalInput30078 canonicalOutput30078 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30079 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput30079 : ExponentCode := normalNode9876

theorem canonicalSound30079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30079.moment H = canonicalOutput30079.moment H :=
  canonical_of_padded canonicalInput30079 canonicalOutput30079 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
