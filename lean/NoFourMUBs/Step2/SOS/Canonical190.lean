import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12160 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12160 : ExponentCode := normalNode5452

theorem canonicalSound12160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12160.moment H = canonicalOutput12160.moment H :=
  canonical_of_padded canonicalInput12160 canonicalOutput12160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12161 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput12161 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1275

theorem canonicalSound12161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12161.moment H = canonicalOutput12161.moment H :=
  canonical_of_padded canonicalInput12161 canonicalOutput12161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12162 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -2, 0, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput12162 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node691⟩

theorem canonicalSound12162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12162.moment H = canonicalOutput12162.moment H :=
  canonical_of_padded canonicalInput12162 canonicalOutput12162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12163 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12163 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound12163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12163.moment H = canonicalOutput12163.moment H :=
  canonical_of_padded canonicalInput12163 canonicalOutput12163 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12164 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12164 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound12164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12164.moment H = canonicalOutput12164.moment H :=
  canonical_of_padded canonicalInput12164 canonicalOutput12164 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12165 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput12165 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1147

theorem canonicalSound12165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12165.moment H = canonicalOutput12165.moment H :=
  canonical_of_padded canonicalInput12165 canonicalOutput12165 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12166 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput12166 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound12166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12166.moment H = canonicalOutput12166.moment H :=
  canonical_of_padded canonicalInput12166 canonicalOutput12166 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12167 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput12167 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound12167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12167.moment H = canonicalOutput12167.moment H :=
  canonical_of_padded canonicalInput12167 canonicalOutput12167 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12168 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -2, 2], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput12168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound12168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12168.moment H = canonicalOutput12168.moment H :=
  canonical_of_padded canonicalInput12168 canonicalOutput12168 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12169 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -2, 2], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12169 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node808⟩

theorem canonicalSound12169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12169.moment H = canonicalOutput12169.moment H :=
  canonical_of_padded canonicalInput12169 canonicalOutput12169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12170 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, -2, 2], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput12170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node471⟩

theorem canonicalSound12170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12170.moment H = canonicalOutput12170.moment H :=
  canonical_of_padded canonicalInput12170 canonicalOutput12170 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12171 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput12171 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2373⟩

theorem canonicalSound12171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12171.moment H = canonicalOutput12171.moment H :=
  canonical_of_padded canonicalInput12171 canonicalOutput12171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12172 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput12172 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1752⟩

theorem canonicalSound12172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12172.moment H = canonicalOutput12172.moment H :=
  canonical_of_padded canonicalInput12172 canonicalOutput12172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12173 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput12173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2014⟩

theorem canonicalSound12173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12173.moment H = canonicalOutput12173.moment H :=
  canonical_of_padded canonicalInput12173 canonicalOutput12173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12174 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, 2, -2], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput12174 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node471⟩

theorem canonicalSound12174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12174.moment H = canonicalOutput12174.moment H :=
  canonical_of_padded canonicalInput12174 canonicalOutput12174 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12175 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, 3, -3], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput12175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound12175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12175.moment H = canonicalOutput12175.moment H :=
  canonical_of_padded canonicalInput12175 canonicalOutput12175 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12176 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, 3, -3], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput12176 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound12176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12176.moment H = canonicalOutput12176.moment H :=
  canonical_of_padded canonicalInput12176 canonicalOutput12176 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12177 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![0, 0, 3, -3], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput12177 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound12177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12177.moment H = canonicalOutput12177.moment H :=
  canonical_of_padded canonicalInput12177 canonicalOutput12177 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12178 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -2, -3, 4], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1184⟩

theorem canonicalSound12178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12178.moment H = canonicalOutput12178.moment H :=
  canonical_of_padded canonicalInput12178 canonicalOutput12178 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12179 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -2, -2, 3], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12179 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound12179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12179.moment H = canonicalOutput12179.moment H :=
  canonical_of_padded canonicalInput12179 canonicalOutput12179 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12180 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![1, -2, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12180 : ExponentCode := normalNode5169

theorem canonicalSound12180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12180.moment H = canonicalOutput12180.moment H :=
  canonical_of_padded canonicalInput12180 canonicalOutput12180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12181 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -2, -1, 2], ![0, 0, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput12181 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound12181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12181.moment H = canonicalOutput12181.moment H :=
  canonical_of_padded canonicalInput12181 canonicalOutput12181 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12182 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -4, 4], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12182 : ExponentCode := normalNode9753

theorem canonicalSound12182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12182.moment H = canonicalOutput12182.moment H :=
  canonical_of_padded canonicalInput12182 canonicalOutput12182 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12183 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -4, 4], ![0, 0, 2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput12183 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code713

theorem canonicalSound12183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12183.moment H = canonicalOutput12183.moment H :=
  canonical_of_padded canonicalInput12183 canonicalOutput12183 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12184 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -4, 4], ![0, 0, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput12184 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1147

theorem canonicalSound12184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12184.moment H = canonicalOutput12184.moment H :=
  canonical_of_padded canonicalInput12184 canonicalOutput12184 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12185 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -3, 3], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12185 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound12185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12185.moment H = canonicalOutput12185.moment H :=
  canonical_of_padded canonicalInput12185 canonicalOutput12185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12186 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput12186 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound12186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12186.moment H = canonicalOutput12186.moment H :=
  canonical_of_padded canonicalInput12186 canonicalOutput12186 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12187 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -2, 2], ![0, 0, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput12187 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound12187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12187.moment H = canonicalOutput12187.moment H :=
  canonical_of_padded canonicalInput12187 canonicalOutput12187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12188 : ExponentCode := ⟨5, 4, ![![-2, 2, 0, 0], ![1, -1, -1, 1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12188 : ExponentCode := normalNode5934

theorem canonicalSound12188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12188.moment H = canonicalOutput12188.moment H :=
  canonical_of_padded canonicalInput12188 canonicalOutput12188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12189 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -1, 1], ![0, 0, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput12189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node471⟩

theorem canonicalSound12189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12189.moment H = canonicalOutput12189.moment H :=
  canonical_of_padded canonicalInput12189 canonicalOutput12189 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12190 : ExponentCode := ⟨4, 4, ![![-2, 2, 0, 0], ![1, -1, -1, 1], ![0, 0, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput12190 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound12190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12190.moment H = canonicalOutput12190.moment H :=
  canonical_of_padded canonicalInput12190 canonicalOutput12190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12191 : ExponentCode := ⟨5, 5, ![![-2, 2, 0, 0, 0], ![0, -1, 1, -3, 3], ![0, 0, 0, 3, -3], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput12191 : ExponentCode := normalNode9564

theorem canonicalSound12191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12191.moment H = canonicalOutput12191.moment H :=
  canonical_of_padded canonicalInput12191 canonicalOutput12191 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation51⟩ (by decide +kernel) hH

def canonicalInput12192 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12192 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound12192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12192.moment H = canonicalOutput12192.moment H :=
  canonical_of_padded canonicalInput12192 canonicalOutput12192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput12193 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12193 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound12193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12193.moment H = canonicalOutput12193.moment H :=
  canonical_of_padded canonicalInput12193 canonicalOutput12193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput12194 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12194 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound12194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12194.moment H = canonicalOutput12194.moment H :=
  canonical_of_padded canonicalInput12194 canonicalOutput12194 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput12195 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12195 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound12195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12195.moment H = canonicalOutput12195.moment H :=
  canonical_of_padded canonicalInput12195 canonicalOutput12195 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput12196 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12196 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound12196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12196.moment H = canonicalOutput12196.moment H :=
  canonical_of_padded canonicalInput12196 canonicalOutput12196 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput12197 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12197 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound12197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12197.moment H = canonicalOutput12197.moment H :=
  canonical_of_padded canonicalInput12197 canonicalOutput12197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12198 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12198 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound12198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12198.moment H = canonicalOutput12198.moment H :=
  canonical_of_padded canonicalInput12198 canonicalOutput12198 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput12199 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12199 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound12199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12199.moment H = canonicalOutput12199.moment H :=
  canonical_of_padded canonicalInput12199 canonicalOutput12199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput12200 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12200 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound12200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12200.moment H = canonicalOutput12200.moment H :=
  canonical_of_padded canonicalInput12200 canonicalOutput12200 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12201 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12201 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound12201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12201.moment H = canonicalOutput12201.moment H :=
  canonical_of_padded canonicalInput12201 canonicalOutput12201 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12202 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12202 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound12202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12202.moment H = canonicalOutput12202.moment H :=
  canonical_of_padded canonicalInput12202 canonicalOutput12202 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12203 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12203 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound12203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12203.moment H = canonicalOutput12203.moment H :=
  canonical_of_padded canonicalInput12203 canonicalOutput12203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput12204 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12204 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound12204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12204.moment H = canonicalOutput12204.moment H :=
  canonical_of_padded canonicalInput12204 canonicalOutput12204 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12205 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12205 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound12205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12205.moment H = canonicalOutput12205.moment H :=
  canonical_of_padded canonicalInput12205 canonicalOutput12205 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12206 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12206 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound12206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12206.moment H = canonicalOutput12206.moment H :=
  canonical_of_padded canonicalInput12206 canonicalOutput12206 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12207 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12207 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound12207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12207.moment H = canonicalOutput12207.moment H :=
  canonical_of_padded canonicalInput12207 canonicalOutput12207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput12208 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12208 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound12208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12208.moment H = canonicalOutput12208.moment H :=
  canonical_of_padded canonicalInput12208 canonicalOutput12208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput12209 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12209 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound12209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12209.moment H = canonicalOutput12209.moment H :=
  canonical_of_padded canonicalInput12209 canonicalOutput12209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12210 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12210 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound12210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12210.moment H = canonicalOutput12210.moment H :=
  canonical_of_padded canonicalInput12210 canonicalOutput12210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput12211 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12211 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound12211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12211.moment H = canonicalOutput12211.moment H :=
  canonical_of_padded canonicalInput12211 canonicalOutput12211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput12212 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12212 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound12212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12212.moment H = canonicalOutput12212.moment H :=
  canonical_of_padded canonicalInput12212 canonicalOutput12212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput12213 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12213 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound12213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12213.moment H = canonicalOutput12213.moment H :=
  canonical_of_padded canonicalInput12213 canonicalOutput12213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput12214 : ExponentCode := ⟨6, 6, ![![-2, 2, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12214 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound12214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12214.moment H = canonicalOutput12214.moment H :=
  canonical_of_padded canonicalInput12214 canonicalOutput12214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput12215 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -4, 1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12215 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound12215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12215.moment H = canonicalOutput12215.moment H :=
  canonical_of_padded canonicalInput12215 canonicalOutput12215 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput12216 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -4, 1, 1, 1, 0], ![1, 2, -2, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12216 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound12216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12216.moment H = canonicalOutput12216.moment H :=
  canonical_of_padded canonicalInput12216 canonicalOutput12216 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput12217 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -2, 1, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12217 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound12217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12217.moment H = canonicalOutput12217.moment H :=
  canonical_of_padded canonicalInput12217 canonicalOutput12217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput12218 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12218 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound12218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12218.moment H = canonicalOutput12218.moment H :=
  canonical_of_padded canonicalInput12218 canonicalOutput12218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput12219 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, 1, -2, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12219 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound12219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12219.moment H = canonicalOutput12219.moment H :=
  canonical_of_padded canonicalInput12219 canonicalOutput12219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput12220 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, 1, -2, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12220 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound12220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12220.moment H = canonicalOutput12220.moment H :=
  canonical_of_padded canonicalInput12220 canonicalOutput12220 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput12221 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -1, 1, 1, -2, 0], ![1, -1, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12221 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound12221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12221.moment H = canonicalOutput12221.moment H :=
  canonical_of_padded canonicalInput12221 canonicalOutput12221 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput12222 : ExponentCode := ⟨6, 6, ![![-2, 2, 1, -2, 1, 0], ![1, -1, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12222 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound12222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12222.moment H = canonicalOutput12222.moment H :=
  canonical_of_padded canonicalInput12222 canonicalOutput12222 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput12223 : ExponentCode := ⟨5, 4, ![![-2, 2, 1, -1], ![0, -3, -1, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12223 : ExponentCode := normalNode5661

theorem canonicalSound12223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12223.moment H = canonicalOutput12223.moment H :=
  canonical_of_padded canonicalInput12223 canonicalOutput12223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
