import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12096 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![0, -4, 4], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput12096 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound12096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12096.moment H = canonicalOutput12096.moment H :=
  canonical_of_padded canonicalInput12096 canonicalOutput12096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12097 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![0, -4, 4], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput12097 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node218⟩

theorem canonicalSound12097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12097.moment H = canonicalOutput12097.moment H :=
  canonical_of_padded canonicalInput12097 canonicalOutput12097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12098 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![0, -3, 3], ![0, 1, -1], ![0, 1, -1], ![2, -1, -1]]⟩

def canonicalOutput12098 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node651⟩

theorem canonicalSound12098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12098.moment H = canonicalOutput12098.moment H :=
  canonical_of_padded canonicalInput12098 canonicalOutput12098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12099 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![0, -3, 3], ![0, 2, -2], ![2, -1, -1]]⟩

def canonicalOutput12099 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound12099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12099.moment H = canonicalOutput12099.moment H :=
  canonical_of_padded canonicalInput12099 canonicalOutput12099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12100 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![0, -3, 3], ![1, -2, 1], ![1, 3, -4]]⟩

def canonicalOutput12100 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound12100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12100.moment H = canonicalOutput12100.moment H :=
  canonical_of_padded canonicalInput12100 canonicalOutput12100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12101 : ExponentCode := ⟨5, 3, ![![-2, 2, 0], ![0, -2, 2], ![0, 1, -1], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput12101 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound12101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12101.moment H = canonicalOutput12101.moment H :=
  canonical_of_padded canonicalInput12101 canonicalOutput12101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12102 : ExponentCode := ⟨4, 3, ![![-2, 2, 0], ![0, -2, 2], ![1, -2, 1], ![1, 2, -3]]⟩

def canonicalOutput12102 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound12102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12102.moment H = canonicalOutput12102.moment H :=
  canonical_of_padded canonicalInput12102 canonicalOutput12102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12103 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -2, -2, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12103 : ExponentCode := normalNode3308

theorem canonicalSound12103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12103.moment H = canonicalOutput12103.moment H :=
  canonical_of_padded canonicalInput12103 canonicalOutput12103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12104 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -2, -1, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1638⟩

theorem canonicalSound12104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12104.moment H = canonicalOutput12104.moment H :=
  canonical_of_padded canonicalInput12104 canonicalOutput12104 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12105 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -2, -1, 3], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12105 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1633⟩

theorem canonicalSound12105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12105.moment H = canonicalOutput12105.moment H :=
  canonical_of_padded canonicalInput12105 canonicalOutput12105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12106 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -2, -1, 3], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12106 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1966⟩

theorem canonicalSound12106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12106.moment H = canonicalOutput12106.moment H :=
  canonical_of_padded canonicalInput12106 canonicalOutput12106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12107 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12107 : ExponentCode := normalNode3780

theorem canonicalSound12107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12107.moment H = canonicalOutput12107.moment H :=
  canonical_of_padded canonicalInput12107 canonicalOutput12107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12108 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, -1, 3, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput12108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node582⟩

theorem canonicalSound12108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12108.moment H = canonicalOutput12108.moment H :=
  canonical_of_padded canonicalInput12108 canonicalOutput12108 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12109 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, -1, 4, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput12109 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code993

theorem canonicalSound12109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12109.moment H = canonicalOutput12109.moment H :=
  canonical_of_padded canonicalInput12109 canonicalOutput12109 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12110 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput12110 : ExponentCode := normalNode5922

theorem canonicalSound12110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12110.moment H = canonicalOutput12110.moment H :=
  canonical_of_padded canonicalInput12110 canonicalOutput12110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12111 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput12111 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node691⟩

theorem canonicalSound12111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12111.moment H = canonicalOutput12111.moment H :=
  canonical_of_padded canonicalInput12111 canonicalOutput12111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12112 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -3, 4], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12112 : ExponentCode := normalNode9753

theorem canonicalSound12112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12112.moment H = canonicalOutput12112.moment H :=
  canonical_of_padded canonicalInput12112 canonicalOutput12112 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12113 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -3, 4], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput12113 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node584⟩

theorem canonicalSound12113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12113.moment H = canonicalOutput12113.moment H :=
  canonical_of_padded canonicalInput12113 canonicalOutput12113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12114 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12114 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound12114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12114.moment H = canonicalOutput12114.moment H :=
  canonical_of_padded canonicalInput12114 canonicalOutput12114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12115 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput12115 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound12115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12115.moment H = canonicalOutput12115.moment H :=
  canonical_of_padded canonicalInput12115 canonicalOutput12115 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12116 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12116 : ExponentCode := normalNode5929

theorem canonicalSound12116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12116.moment H = canonicalOutput12116.moment H :=
  canonical_of_padded canonicalInput12116 canonicalOutput12116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12117 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 3, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput12117 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code998

theorem canonicalSound12117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12117.moment H = canonicalOutput12117.moment H :=
  canonical_of_padded canonicalInput12117 canonicalOutput12117 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12118 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput12118 : ExponentCode := normalNode5933

theorem canonicalSound12118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12118.moment H = canonicalOutput12118.moment H :=
  canonical_of_padded canonicalInput12118 canonicalOutput12118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12119 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12119 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound12119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12119.moment H = canonicalOutput12119.moment H :=
  canonical_of_padded canonicalInput12119 canonicalOutput12119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12120 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput12120 : ExponentCode := normalNode5934

theorem canonicalSound12120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12120.moment H = canonicalOutput12120.moment H :=
  canonical_of_padded canonicalInput12120 canonicalOutput12120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12121 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput12121 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound12121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12121.moment H = canonicalOutput12121.moment H :=
  canonical_of_padded canonicalInput12121 canonicalOutput12121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12122 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput12122 : ExponentCode := normalNode5936

theorem canonicalSound12122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12122.moment H = canonicalOutput12122.moment H :=
  canonical_of_padded canonicalInput12122 canonicalOutput12122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12123 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput12123 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1197

theorem canonicalSound12123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12123.moment H = canonicalOutput12123.moment H :=
  canonical_of_padded canonicalInput12123 canonicalOutput12123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12124 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput12124 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound12124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12124.moment H = canonicalOutput12124.moment H :=
  canonical_of_padded canonicalInput12124 canonicalOutput12124 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12125 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -2, 3], ![1, 0, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput12125 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node688⟩

theorem canonicalSound12125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12125.moment H = canonicalOutput12125.moment H :=
  canonical_of_padded canonicalInput12125 canonicalOutput12125 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12126 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12126 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound12126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12126.moment H = canonicalOutput12126.moment H :=
  canonical_of_padded canonicalInput12126 canonicalOutput12126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12127 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput12127 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code901

theorem canonicalSound12127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12127.moment H = canonicalOutput12127.moment H :=
  canonical_of_padded canonicalInput12127 canonicalOutput12127 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12128 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12128 : ExponentCode := normalNode5927

theorem canonicalSound12128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12128.moment H = canonicalOutput12128.moment H :=
  canonical_of_padded canonicalInput12128 canonicalOutput12128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12129 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12129 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound12129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12129.moment H = canonicalOutput12129.moment H :=
  canonical_of_padded canonicalInput12129 canonicalOutput12129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12130 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput12130 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1178

theorem canonicalSound12130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12130.moment H = canonicalOutput12130.moment H :=
  canonical_of_padded canonicalInput12130 canonicalOutput12130 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12131 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput12131 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node394⟩

theorem canonicalSound12131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12131.moment H = canonicalOutput12131.moment H :=
  canonical_of_padded canonicalInput12131 canonicalOutput12131 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12132 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12132 : ExponentCode := normalNode4647

theorem canonicalSound12132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12132.moment H = canonicalOutput12132.moment H :=
  canonical_of_padded canonicalInput12132 canonicalOutput12132 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12133 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12133 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound12133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12133.moment H = canonicalOutput12133.moment H :=
  canonical_of_padded canonicalInput12133 canonicalOutput12133 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12134 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput12134 : ExponentCode := normalNode5946

theorem canonicalSound12134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12134.moment H = canonicalOutput12134.moment H :=
  canonical_of_padded canonicalInput12134 canonicalOutput12134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12135 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12135 : ExponentCode := normalNode3806

theorem canonicalSound12135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12135.moment H = canonicalOutput12135.moment H :=
  canonical_of_padded canonicalInput12135 canonicalOutput12135 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12136 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12136 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound12136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12136.moment H = canonicalOutput12136.moment H :=
  canonical_of_padded canonicalInput12136 canonicalOutput12136 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12137 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput12137 : ExponentCode := normalNode5948

theorem canonicalSound12137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12137.moment H = canonicalOutput12137.moment H :=
  canonical_of_padded canonicalInput12137 canonicalOutput12137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12138 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput12138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound12138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12138.moment H = canonicalOutput12138.moment H :=
  canonical_of_padded canonicalInput12138 canonicalOutput12138 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12139 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, -1, -2, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12139 : ExponentCode := normalNode5947

theorem canonicalSound12139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12139.moment H = canonicalOutput12139.moment H :=
  canonical_of_padded canonicalInput12139 canonicalOutput12139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12140 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput12140 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound12140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12140.moment H = canonicalOutput12140.moment H :=
  canonical_of_padded canonicalInput12140 canonicalOutput12140 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12141 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, -1, 3, -3], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12141 : ExponentCode := normalNode5941

theorem canonicalSound12141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12141.moment H = canonicalOutput12141.moment H :=
  canonical_of_padded canonicalInput12141 canonicalOutput12141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12142 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput12142 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound12142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12142.moment H = canonicalOutput12142.moment H :=
  canonical_of_padded canonicalInput12142 canonicalOutput12142 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12143 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput12143 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound12143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12143.moment H = canonicalOutput12143.moment H :=
  canonical_of_padded canonicalInput12143 canonicalOutput12143 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12144 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput12144 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node584⟩

theorem canonicalSound12144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12144.moment H = canonicalOutput12144.moment H :=
  canonical_of_padded canonicalInput12144 canonicalOutput12144 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12145 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput12145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound12145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12145.moment H = canonicalOutput12145.moment H :=
  canonical_of_padded canonicalInput12145 canonicalOutput12145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12146 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput12146 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound12146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12146.moment H = canonicalOutput12146.moment H :=
  canonical_of_padded canonicalInput12146 canonicalOutput12146 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12147 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12147 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound12147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12147.moment H = canonicalOutput12147.moment H :=
  canonical_of_padded canonicalInput12147 canonicalOutput12147 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12148 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput12148 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound12148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12148.moment H = canonicalOutput12148.moment H :=
  canonical_of_padded canonicalInput12148 canonicalOutput12148 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12149 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput12149 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound12149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12149.moment H = canonicalOutput12149.moment H :=
  canonical_of_padded canonicalInput12149 canonicalOutput12149 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12150 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, -1, 3, -2], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12150 : ExponentCode := normalNode5936

theorem canonicalSound12150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12150.moment H = canonicalOutput12150.moment H :=
  canonical_of_padded canonicalInput12150 canonicalOutput12150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12151 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, -1, 3, -2], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput12151 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound12151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12151.moment H = canonicalOutput12151.moment H :=
  canonical_of_padded canonicalInput12151 canonicalOutput12151 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12152 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12152 : ExponentCode := normalNode5954

theorem canonicalSound12152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12152.moment H = canonicalOutput12152.moment H :=
  canonical_of_padded canonicalInput12152 canonicalOutput12152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12153 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12153 : ExponentCode := normalNode5936

theorem canonicalSound12153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12153.moment H = canonicalOutput12153.moment H :=
  canonical_of_padded canonicalInput12153 canonicalOutput12153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12154 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12154 : ExponentCode := normalNode5935

theorem canonicalSound12154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12154.moment H = canonicalOutput12154.moment H :=
  canonical_of_padded canonicalInput12154 canonicalOutput12154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12155 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12155 : ExponentCode := normalNode5210

theorem canonicalSound12155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12155.moment H = canonicalOutput12155.moment H :=
  canonical_of_padded canonicalInput12155 canonicalOutput12155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12156 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput12156 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2370⟩

theorem canonicalSound12156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12156.moment H = canonicalOutput12156.moment H :=
  canonical_of_padded canonicalInput12156 canonicalOutput12156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12157 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput12157 : ExponentCode := normalNode5961

theorem canonicalSound12157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12157.moment H = canonicalOutput12157.moment H :=
  canonical_of_padded canonicalInput12157 canonicalOutput12157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12158 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput12158 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound12158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12158.moment H = canonicalOutput12158.moment H :=
  canonical_of_padded canonicalInput12158 canonicalOutput12158 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12159 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12159 : ExponentCode := normalNode5452

theorem canonicalSound12159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12159.moment H = canonicalOutput12159.moment H :=
  canonical_of_padded canonicalInput12159 canonicalOutput12159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
