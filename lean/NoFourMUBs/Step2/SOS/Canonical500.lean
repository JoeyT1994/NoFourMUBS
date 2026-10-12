import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32000 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput32000 : ExponentCode := normalNode1756

theorem canonicalSound32000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32000.moment H = canonicalOutput32000.moment H :=
  canonical_of_padded canonicalInput32000 canonicalOutput32000 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32001 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput32001 : ExponentCode := normalNode4224

theorem canonicalSound32001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32001.moment H = canonicalOutput32001.moment H :=
  canonical_of_padded canonicalInput32001 canonicalOutput32001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32002 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput32002 : ExponentCode := normalNode4282

theorem canonicalSound32002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32002.moment H = canonicalOutput32002.moment H :=
  canonical_of_padded canonicalInput32002 canonicalOutput32002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32003 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput32003 : ExponentCode := normalNode1754

theorem canonicalSound32003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32003.moment H = canonicalOutput32003.moment H :=
  canonical_of_padded canonicalInput32003 canonicalOutput32003 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32004 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, -2, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput32004 : ExponentCode := normalNode9264

theorem canonicalSound32004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32004.moment H = canonicalOutput32004.moment H :=
  canonical_of_padded canonicalInput32004 canonicalOutput32004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32005 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput32005 : ExponentCode := normalNode8809

theorem canonicalSound32005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32005.moment H = canonicalOutput32005.moment H :=
  canonical_of_padded canonicalInput32005 canonicalOutput32005 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32006 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 0, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput32006 : ExponentCode := normalNode10179

theorem canonicalSound32006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32006.moment H = canonicalOutput32006.moment H :=
  canonical_of_padded canonicalInput32006 canonicalOutput32006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32007 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 0, -1, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput32007 : ExponentCode := normalNode3614

theorem canonicalSound32007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32007.moment H = canonicalOutput32007.moment H :=
  canonical_of_padded canonicalInput32007 canonicalOutput32007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32008 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 0, -2, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput32008 : ExponentCode := normalNode9610

theorem canonicalSound32008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32008.moment H = canonicalOutput32008.moment H :=
  canonical_of_padded canonicalInput32008 canonicalOutput32008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32009 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput32009 : ExponentCode := normalNode3307

theorem canonicalSound32009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32009.moment H = canonicalOutput32009.moment H :=
  canonical_of_padded canonicalInput32009 canonicalOutput32009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32010 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 0, 2, -2]]⟩

def canonicalOutput32010 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2970⟩

theorem canonicalSound32010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32010.moment H = canonicalOutput32010.moment H :=
  canonical_of_padded canonicalInput32010 canonicalOutput32010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32011 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -3, 4], ![-1, 0, 4, -3]]⟩

def canonicalOutput32011 : ExponentCode := normalNode9613

theorem canonicalSound32011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32011.moment H = canonicalOutput32011.moment H :=
  canonical_of_padded canonicalInput32011 canonicalOutput32011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32012 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32012 : ExponentCode := normalNode9791

theorem canonicalSound32012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32012.moment H = canonicalOutput32012.moment H :=
  canonical_of_padded canonicalInput32012 canonicalOutput32012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32013 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32013 : ExponentCode := normalNode3307

theorem canonicalSound32013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32013.moment H = canonicalOutput32013.moment H :=
  canonical_of_padded canonicalInput32013 canonicalOutput32013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32014 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput32014 : ExponentCode := normalNode2064

theorem canonicalSound32014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32014.moment H = canonicalOutput32014.moment H :=
  canonical_of_padded canonicalInput32014 canonicalOutput32014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32015 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput32015 : ExponentCode := normalNode3550

theorem canonicalSound32015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32015.moment H = canonicalOutput32015.moment H :=
  canonical_of_padded canonicalInput32015 canonicalOutput32015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32016 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput32016 : ExponentCode := normalNode7765

theorem canonicalSound32016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32016.moment H = canonicalOutput32016.moment H :=
  canonical_of_padded canonicalInput32016 canonicalOutput32016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32017 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput32017 : ExponentCode := normalNode1407

theorem canonicalSound32017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32017.moment H = canonicalOutput32017.moment H :=
  canonical_of_padded canonicalInput32017 canonicalOutput32017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32018 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 2, -2]]⟩

def canonicalOutput32018 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3018⟩

theorem canonicalSound32018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32018.moment H = canonicalOutput32018.moment H :=
  canonical_of_padded canonicalInput32018 canonicalOutput32018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32019 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -1, 4, -3]]⟩

def canonicalOutput32019 : ExponentCode := normalNode3270

theorem canonicalSound32019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32019.moment H = canonicalOutput32019.moment H :=
  canonical_of_padded canonicalInput32019 canonicalOutput32019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32020 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 4, -3]]⟩

def canonicalOutput32020 : ExponentCode := normalNode7335

theorem canonicalSound32020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32020.moment H = canonicalOutput32020.moment H :=
  canonical_of_padded canonicalInput32020 canonicalOutput32020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32021 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32021 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3344⟩

theorem canonicalSound32021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32021.moment H = canonicalOutput32021.moment H :=
  canonical_of_padded canonicalInput32021 canonicalOutput32021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32022 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32022 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3116⟩

theorem canonicalSound32022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32022.moment H = canonicalOutput32022.moment H :=
  canonical_of_padded canonicalInput32022 canonicalOutput32022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32023 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput32023 : ExponentCode := normalNode1407

theorem canonicalSound32023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32023.moment H = canonicalOutput32023.moment H :=
  canonical_of_padded canonicalInput32023 canonicalOutput32023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32024 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -3, 4], ![-1, -1, 4, -2]]⟩

def canonicalOutput32024 : ExponentCode := normalNode7335

theorem canonicalSound32024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32024.moment H = canonicalOutput32024.moment H :=
  canonical_of_padded canonicalInput32024 canonicalOutput32024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32025 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput32025 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3344⟩

theorem canonicalSound32025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32025.moment H = canonicalOutput32025.moment H :=
  canonical_of_padded canonicalInput32025 canonicalOutput32025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32026 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -3, 4], ![-2, 0, 4, -2]]⟩

def canonicalOutput32026 : ExponentCode := normalNode3270

theorem canonicalSound32026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32026.moment H = canonicalOutput32026.moment H :=
  canonical_of_padded canonicalInput32026 canonicalOutput32026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32027 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, 0, 3, -1]]⟩

def canonicalOutput32027 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3130⟩

theorem canonicalSound32027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32027.moment H = canonicalOutput32027.moment H :=
  canonical_of_padded canonicalInput32027 canonicalOutput32027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32028 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, 0, -2, 4]]⟩

def canonicalOutput32028 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3116⟩

theorem canonicalSound32028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32028.moment H = canonicalOutput32028.moment H :=
  canonical_of_padded canonicalInput32028 canonicalOutput32028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32029 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32029 : ExponentCode := normalNode1407

theorem canonicalSound32029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32029.moment H = canonicalOutput32029.moment H :=
  canonical_of_padded canonicalInput32029 canonicalOutput32029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32030 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 2, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput32030 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2919⟩

theorem canonicalSound32030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32030.moment H = canonicalOutput32030.moment H :=
  canonical_of_padded canonicalInput32030 canonicalOutput32030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32031 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -1, -2, 5]]⟩

def canonicalOutput32031 : ExponentCode := normalNode1112

theorem canonicalSound32031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32031.moment H = canonicalOutput32031.moment H :=
  canonical_of_padded canonicalInput32031 canonicalOutput32031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32032 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput32032 : ExponentCode := normalNode3767

theorem canonicalSound32032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32032.moment H = canonicalOutput32032.moment H :=
  canonical_of_padded canonicalInput32032 canonicalOutput32032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32033 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput32033 : ExponentCode := normalNode4284

theorem canonicalSound32033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32033.moment H = canonicalOutput32033.moment H :=
  canonical_of_padded canonicalInput32033 canonicalOutput32033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32034 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput32034 : ExponentCode := normalNode4364

theorem canonicalSound32034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32034.moment H = canonicalOutput32034.moment H :=
  canonical_of_padded canonicalInput32034 canonicalOutput32034 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32035 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput32035 : ExponentCode := normalNode8782

theorem canonicalSound32035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32035.moment H = canonicalOutput32035.moment H :=
  canonical_of_padded canonicalInput32035 canonicalOutput32035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation251, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32036 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32036 : ExponentCode := normalNode7754

theorem canonicalSound32036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32036.moment H = canonicalOutput32036.moment H :=
  canonical_of_padded canonicalInput32036 canonicalOutput32036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32037 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput32037 : ExponentCode := normalNode1910

theorem canonicalSound32037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32037.moment H = canonicalOutput32037.moment H :=
  canonical_of_padded canonicalInput32037 canonicalOutput32037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32038 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput32038 : ExponentCode := normalNode1905

theorem canonicalSound32038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32038.moment H = canonicalOutput32038.moment H :=
  canonical_of_padded canonicalInput32038 canonicalOutput32038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32039 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32039 : ExponentCode := normalNode1877

theorem canonicalSound32039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32039.moment H = canonicalOutput32039.moment H :=
  canonical_of_padded canonicalInput32039 canonicalOutput32039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32040 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32040 : ExponentCode := normalNode7270

theorem canonicalSound32040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32040.moment H = canonicalOutput32040.moment H :=
  canonical_of_padded canonicalInput32040 canonicalOutput32040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32041 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput32041 : ExponentCode := normalNode7664

theorem canonicalSound32041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32041.moment H = canonicalOutput32041.moment H :=
  canonical_of_padded canonicalInput32041 canonicalOutput32041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32042 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput32042 : ExponentCode := normalNode3365

theorem canonicalSound32042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32042.moment H = canonicalOutput32042.moment H :=
  canonical_of_padded canonicalInput32042 canonicalOutput32042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32043 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput32043 : ExponentCode := normalNode460

theorem canonicalSound32043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32043.moment H = canonicalOutput32043.moment H :=
  canonical_of_padded canonicalInput32043 canonicalOutput32043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32044 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 0, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput32044 : ExponentCode := normalNode1963

theorem canonicalSound32044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32044.moment H = canonicalOutput32044.moment H :=
  canonical_of_padded canonicalInput32044 canonicalOutput32044 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32045 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput32045 : ExponentCode := normalNode3842

theorem canonicalSound32045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32045.moment H = canonicalOutput32045.moment H :=
  canonical_of_padded canonicalInput32045 canonicalOutput32045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32046 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, -1, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput32046 : ExponentCode := normalNode3336

theorem canonicalSound32046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32046.moment H = canonicalOutput32046.moment H :=
  canonical_of_padded canonicalInput32046 canonicalOutput32046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32047 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput32047 : ExponentCode := normalNode3772

theorem canonicalSound32047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32047.moment H = canonicalOutput32047.moment H :=
  canonical_of_padded canonicalInput32047 canonicalOutput32047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32048 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput32048 : ExponentCode := normalNode4225

theorem canonicalSound32048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32048.moment H = canonicalOutput32048.moment H :=
  canonical_of_padded canonicalInput32048 canonicalOutput32048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32049 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32049 : ExponentCode := normalNode4283

theorem canonicalSound32049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32049.moment H = canonicalOutput32049.moment H :=
  canonical_of_padded canonicalInput32049 canonicalOutput32049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32050 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, -2, 0, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput32050 : ExponentCode := normalNode2481

theorem canonicalSound32050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32050.moment H = canonicalOutput32050.moment H :=
  canonical_of_padded canonicalInput32050 canonicalOutput32050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32051 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, -1, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput32051 : ExponentCode := normalNode4365

theorem canonicalSound32051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32051.moment H = canonicalOutput32051.moment H :=
  canonical_of_padded canonicalInput32051 canonicalOutput32051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32052 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, -1, 2, -1]]⟩

def canonicalOutput32052 : ExponentCode := normalNode4268

theorem canonicalSound32052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32052.moment H = canonicalOutput32052.moment H :=
  canonical_of_padded canonicalInput32052 canonicalOutput32052 (by decide) (by decide)
    ⟨false, true, canonicalPermutation149, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput32053 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput32053 : ExponentCode := normalNode2478

theorem canonicalSound32053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32053.moment H = canonicalOutput32053.moment H :=
  canonical_of_padded canonicalInput32053 canonicalOutput32053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation292, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32054 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput32054 : ExponentCode := normalNode7643

theorem canonicalSound32054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32054.moment H = canonicalOutput32054.moment H :=
  canonical_of_padded canonicalInput32054 canonicalOutput32054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32055 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 0, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput32055 : ExponentCode := normalNode1987

theorem canonicalSound32055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32055.moment H = canonicalOutput32055.moment H :=
  canonical_of_padded canonicalInput32055 canonicalOutput32055 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32056 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput32056 : ExponentCode := normalNode8785

theorem canonicalSound32056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32056.moment H = canonicalOutput32056.moment H :=
  canonical_of_padded canonicalInput32056 canonicalOutput32056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32057 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32057 : ExponentCode := normalNode9275

theorem canonicalSound32057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32057.moment H = canonicalOutput32057.moment H :=
  canonical_of_padded canonicalInput32057 canonicalOutput32057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32058 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, -2, 0, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput32058 : ExponentCode := normalNode5286

theorem canonicalSound32058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32058.moment H = canonicalOutput32058.moment H :=
  canonical_of_padded canonicalInput32058 canonicalOutput32058 (by decide) (by decide)
    ⟨false, false, canonicalPermutation186, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32059 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32059 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3364⟩

theorem canonicalSound32059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32059.moment H = canonicalOutput32059.moment H :=
  canonical_of_padded canonicalInput32059 canonicalOutput32059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32060 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -2, 4], ![-1, 0, 3, -2]]⟩

def canonicalOutput32060 : ExponentCode := normalNode7325

theorem canonicalSound32060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32060.moment H = canonicalOutput32060.moment H :=
  canonical_of_padded canonicalInput32060 canonicalOutput32060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32061 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1]]⟩

def canonicalOutput32061 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3359⟩

theorem canonicalSound32061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32061.moment H = canonicalOutput32061.moment H :=
  canonical_of_padded canonicalInput32061 canonicalOutput32061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32062 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput32062 : ExponentCode := normalNode1910

theorem canonicalSound32062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32062.moment H = canonicalOutput32062.moment H :=
  canonical_of_padded canonicalInput32062 canonicalOutput32062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32063 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -2, 0, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput32063 : ExponentCode := normalNode1905

theorem canonicalSound32063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32063.moment H = canonicalOutput32063.moment H :=
  canonical_of_padded canonicalInput32063 canonicalOutput32063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation307, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
