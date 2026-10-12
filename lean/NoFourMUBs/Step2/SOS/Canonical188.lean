import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12032 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12032 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2349⟩

theorem canonicalSound12032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12032.moment H = canonicalOutput12032.moment H :=
  canonical_of_padded canonicalInput12032 canonicalOutput12032 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12033 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput12033 : ExponentCode := normalNode5890

theorem canonicalSound12033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12033.moment H = canonicalOutput12033.moment H :=
  canonical_of_padded canonicalInput12033 canonicalOutput12033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12034 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput12034 : ExponentCode := normalNode5891

theorem canonicalSound12034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12034.moment H = canonicalOutput12034.moment H :=
  canonical_of_padded canonicalInput12034 canonicalOutput12034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12035 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput12035 : ExponentCode := normalNode5516

theorem canonicalSound12035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12035.moment H = canonicalOutput12035.moment H :=
  canonical_of_padded canonicalInput12035 canonicalOutput12035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12036 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2183⟩

theorem canonicalSound12036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12036.moment H = canonicalOutput12036.moment H :=
  canonical_of_padded canonicalInput12036 canonicalOutput12036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12037 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput12037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2357⟩

theorem canonicalSound12037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12037.moment H = canonicalOutput12037.moment H :=
  canonical_of_padded canonicalInput12037 canonicalOutput12037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12038 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput12038 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1360⟩

theorem canonicalSound12038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12038.moment H = canonicalOutput12038.moment H :=
  canonical_of_padded canonicalInput12038 canonicalOutput12038 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput12039 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput12039 : ExponentCode := normalNode5204

theorem canonicalSound12039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12039.moment H = canonicalOutput12039.moment H :=
  canonical_of_padded canonicalInput12039 canonicalOutput12039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12040 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12040 : ExponentCode := normalNode2932

theorem canonicalSound12040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12040.moment H = canonicalOutput12040.moment H :=
  canonical_of_padded canonicalInput12040 canonicalOutput12040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12041 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput12041 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1748⟩

theorem canonicalSound12041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12041.moment H = canonicalOutput12041.moment H :=
  canonical_of_padded canonicalInput12041 canonicalOutput12041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12042 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12042 : ExponentCode := normalNode5207

theorem canonicalSound12042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12042.moment H = canonicalOutput12042.moment H :=
  canonical_of_padded canonicalInput12042 canonicalOutput12042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12043 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput12043 : ExponentCode := normalNode5904

theorem canonicalSound12043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12043.moment H = canonicalOutput12043.moment H :=
  canonical_of_padded canonicalInput12043 canonicalOutput12043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12044 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput12044 : ExponentCode := normalNode7822

theorem canonicalSound12044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12044.moment H = canonicalOutput12044.moment H :=
  canonical_of_padded canonicalInput12044 canonicalOutput12044 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12045 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput12045 : ExponentCode := normalNode5216

theorem canonicalSound12045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12045.moment H = canonicalOutput12045.moment H :=
  canonical_of_padded canonicalInput12045 canonicalOutput12045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12046 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput12046 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound12046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12046.moment H = canonicalOutput12046.moment H :=
  canonical_of_padded canonicalInput12046 canonicalOutput12046 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12047 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12047 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound12047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12047.moment H = canonicalOutput12047.moment H :=
  canonical_of_padded canonicalInput12047 canonicalOutput12047 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12048 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, -1, 4, -4]]⟩

def canonicalOutput12048 : ExponentCode := normalNode6448

theorem canonicalSound12048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12048.moment H = canonicalOutput12048.moment H :=
  canonical_of_padded canonicalInput12048 canonicalOutput12048 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12049 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput12049 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩

theorem canonicalSound12049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12049.moment H = canonicalOutput12049.moment H :=
  canonical_of_padded canonicalInput12049 canonicalOutput12049 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12050 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput12050 : ExponentCode := normalNode5886

theorem canonicalSound12050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12050.moment H = canonicalOutput12050.moment H :=
  canonical_of_padded canonicalInput12050 canonicalOutput12050 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12051 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12051 : ExponentCode := normalNode5881

theorem canonicalSound12051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12051.moment H = canonicalOutput12051.moment H :=
  canonical_of_padded canonicalInput12051 canonicalOutput12051 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12052 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput12052 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2184⟩

theorem canonicalSound12052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12052.moment H = canonicalOutput12052.moment H :=
  canonical_of_padded canonicalInput12052 canonicalOutput12052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12053 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12053 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound12053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12053.moment H = canonicalOutput12053.moment H :=
  canonical_of_padded canonicalInput12053 canonicalOutput12053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12054 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput12054 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1823⟩

theorem canonicalSound12054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12054.moment H = canonicalOutput12054.moment H :=
  canonical_of_padded canonicalInput12054 canonicalOutput12054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12055 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12055 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound12055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12055.moment H = canonicalOutput12055.moment H :=
  canonical_of_padded canonicalInput12055 canonicalOutput12055 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12056 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput12056 : ExponentCode := normalNode10956

theorem canonicalSound12056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12056.moment H = canonicalOutput12056.moment H :=
  canonical_of_padded canonicalInput12056 canonicalOutput12056 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12057 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput12057 : ExponentCode := normalNode5911

theorem canonicalSound12057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12057.moment H = canonicalOutput12057.moment H :=
  canonical_of_padded canonicalInput12057 canonicalOutput12057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12058 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput12058 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2361⟩

theorem canonicalSound12058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12058.moment H = canonicalOutput12058.moment H :=
  canonical_of_padded canonicalInput12058 canonicalOutput12058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12059 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput12059 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2362⟩

theorem canonicalSound12059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12059.moment H = canonicalOutput12059.moment H :=
  canonical_of_padded canonicalInput12059 canonicalOutput12059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12060 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12060 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound12060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12060.moment H = canonicalOutput12060.moment H :=
  canonical_of_padded canonicalInput12060 canonicalOutput12060 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12061 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 3, -3], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput12061 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound12061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12061.moment H = canonicalOutput12061.moment H :=
  canonical_of_padded canonicalInput12061 canonicalOutput12061 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12062 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput12062 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound12062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12062.moment H = canonicalOutput12062.moment H :=
  canonical_of_padded canonicalInput12062 canonicalOutput12062 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12063 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 4, -4], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput12063 : ExponentCode := normalNode11213

theorem canonicalSound12063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12063.moment H = canonicalOutput12063.moment H :=
  canonical_of_padded canonicalInput12063 canonicalOutput12063 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12064 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, -1, -2, 2]]⟩

def canonicalOutput12064 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1271

theorem canonicalSound12064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12064.moment H = canonicalOutput12064.moment H :=
  canonical_of_padded canonicalInput12064 canonicalOutput12064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12065 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -2, -2, 3], ![0, 0, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput12065 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node407⟩

theorem canonicalSound12065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12065.moment H = canonicalOutput12065.moment H :=
  canonical_of_padded canonicalInput12065 canonicalOutput12065 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12066 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -2, -2, 3], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12066 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node727⟩

theorem canonicalSound12066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12066.moment H = canonicalOutput12066.moment H :=
  canonical_of_padded canonicalInput12066 canonicalOutput12066 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12067 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -2, -2, 3], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12067 : ExponentCode := normalNode7483

theorem canonicalSound12067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12067.moment H = canonicalOutput12067.moment H :=
  canonical_of_padded canonicalInput12067 canonicalOutput12067 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12068 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -2, -1, 2], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound12068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12068.moment H = canonicalOutput12068.moment H :=
  canonical_of_padded canonicalInput12068 canonicalOutput12068 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12069 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -2, -1, 2], ![0, 0, 4, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput12069 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1133

theorem canonicalSound12069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12069.moment H = canonicalOutput12069.moment H :=
  canonical_of_padded canonicalInput12069 canonicalOutput12069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12070 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -2, 2, -1], ![0, 0, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node683⟩

theorem canonicalSound12070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12070.moment H = canonicalOutput12070.moment H :=
  canonical_of_padded canonicalInput12070 canonicalOutput12070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12071 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -1, -3, 3], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12071 : ExponentCode := normalNode10989

theorem canonicalSound12071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12071.moment H = canonicalOutput12071.moment H :=
  canonical_of_padded canonicalInput12071 canonicalOutput12071 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12072 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -1, -3, 3], ![0, 0, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput12072 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1269

theorem canonicalSound12072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12072.moment H = canonicalOutput12072.moment H :=
  canonical_of_padded canonicalInput12072 canonicalOutput12072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12073 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -1, -2, 2], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12073 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound12073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12073.moment H = canonicalOutput12073.moment H :=
  canonical_of_padded canonicalInput12073 canonicalOutput12073 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12074 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -1, -2, 2], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12074 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound12074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12074.moment H = canonicalOutput12074.moment H :=
  canonical_of_padded canonicalInput12074 canonicalOutput12074 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12075 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -1, -2, 2], ![0, 0, 4, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput12075 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1271

theorem canonicalSound12075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12075.moment H = canonicalOutput12075.moment H :=
  canonical_of_padded canonicalInput12075 canonicalOutput12075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12076 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![1, -1, -1, 1], ![0, 0, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput12076 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound12076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12076.moment H = canonicalOutput12076.moment H :=
  canonical_of_padded canonicalInput12076 canonicalOutput12076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12077 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12077 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound12077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12077.moment H = canonicalOutput12077.moment H :=
  canonical_of_padded canonicalInput12077 canonicalOutput12077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation307, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput12078 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -4, 2, 1, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12078 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound12078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12078.moment H = canonicalOutput12078.moment H :=
  canonical_of_padded canonicalInput12078 canonicalOutput12078 (by decide) (by decide)
    ⟨true, true, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12079 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12079 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound12079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12079.moment H = canonicalOutput12079.moment H :=
  canonical_of_padded canonicalInput12079 canonicalOutput12079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, OAI.MUB6.Certificate.PairSemantics.permutation297⟩ (by decide +kernel) hH

def canonicalInput12080 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12080 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound12080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12080.moment H = canonicalOutput12080.moment H :=
  canonical_of_padded canonicalInput12080 canonicalOutput12080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput12081 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12081 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound12081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12081.moment H = canonicalOutput12081.moment H :=
  canonical_of_padded canonicalInput12081 canonicalOutput12081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput12082 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12082 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound12082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12082.moment H = canonicalOutput12082.moment H :=
  canonical_of_padded canonicalInput12082 canonicalOutput12082 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, OAI.MUB6.Certificate.PairSemantics.permutation297⟩ (by decide +kernel) hH

def canonicalInput12083 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12083 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound12083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12083.moment H = canonicalOutput12083.moment H :=
  canonical_of_padded canonicalInput12083 canonicalOutput12083 (by decide) (by decide)
    ⟨true, false, canonicalPermutation66, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12084 : ExponentCode := ⟨6, 6, ![![-2, 2, -1, 1, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12084 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound12084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12084.moment H = canonicalOutput12084.moment H :=
  canonical_of_padded canonicalInput12084 canonicalOutput12084 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12085 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![-1, -4, 5], ![1, 0, -1], ![2, 2, -4]]⟩

def canonicalOutput12085 : ExponentCode := normalNode960

theorem canonicalSound12085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12085.moment H = canonicalOutput12085.moment H :=
  canonical_of_padded canonicalInput12085 canonicalOutput12085 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12086 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![-1, -4, 5], ![1, 1, -2], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput12086 : ExponentCode := normalNode5914

theorem canonicalSound12086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12086.moment H = canonicalOutput12086.moment H :=
  canonical_of_padded canonicalInput12086 canonicalOutput12086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12087 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![-1, -4, 5], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput12087 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound12087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12087.moment H = canonicalOutput12087.moment H :=
  canonical_of_padded canonicalInput12087 canonicalOutput12087 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12088 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![-1, -4, 5], ![2, 0, -2], ![1, 2, -3]]⟩

def canonicalOutput12088 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound12088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12088.moment H = canonicalOutput12088.moment H :=
  canonical_of_padded canonicalInput12088 canonicalOutput12088 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12089 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![-1, -4, 5], ![2, 1, -3], ![1, 1, -2]]⟩

def canonicalOutput12089 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound12089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12089.moment H = canonicalOutput12089.moment H :=
  canonical_of_padded canonicalInput12089 canonicalOutput12089 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12090 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![-1, -3, 4], ![1, 0, -1], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput12090 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node314⟩

theorem canonicalSound12090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12090.moment H = canonicalOutput12090.moment H :=
  canonical_of_padded canonicalInput12090 canonicalOutput12090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12091 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![-1, -2, 3], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput12091 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node354⟩

theorem canonicalSound12091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12091.moment H = canonicalOutput12091.moment H :=
  canonical_of_padded canonicalInput12091 canonicalOutput12091 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12092 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![-1, -1, 2], ![0, 2, -2], ![1, -2, 1], ![2, -1, -1]]⟩

def canonicalOutput12092 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound12092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12092.moment H = canonicalOutput12092.moment H :=
  canonical_of_padded canonicalInput12092 canonicalOutput12092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12093 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![-1, -1, 2], ![1, -2, 1], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput12093 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound12093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12093.moment H = canonicalOutput12093.moment H :=
  canonical_of_padded canonicalInput12093 canonicalOutput12093 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12094 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![0, -4, 4], ![0, 3, -3], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput12094 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node637⟩

theorem canonicalSound12094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12094.moment H = canonicalOutput12094.moment H :=
  canonical_of_padded canonicalInput12094 canonicalOutput12094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12095 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![0, -4, 4], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput12095 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node216⟩

theorem canonicalSound12095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12095.moment H = canonicalOutput12095.moment H :=
  canonical_of_padded canonicalInput12095 canonicalOutput12095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
