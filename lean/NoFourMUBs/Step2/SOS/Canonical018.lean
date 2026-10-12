import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1152 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput1152 : ExponentCode := normalNode7540

theorem canonicalSound1152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1152.moment H = canonicalOutput1152.moment H :=
  canonical_of_padded canonicalInput1152 canonicalOutput1152 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1153 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput1153 : ExponentCode := normalNode6354

theorem canonicalSound1153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1153.moment H = canonicalOutput1153.moment H :=
  canonical_of_padded canonicalInput1153 canonicalOutput1153 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1154 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput1154 : ExponentCode := normalNode9161

theorem canonicalSound1154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1154.moment H = canonicalOutput1154.moment H :=
  canonical_of_padded canonicalInput1154 canonicalOutput1154 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1155 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1155 : ExponentCode := normalNode6360

theorem canonicalSound1155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1155.moment H = canonicalOutput1155.moment H :=
  canonical_of_padded canonicalInput1155 canonicalOutput1155 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1156 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1156 : ExponentCode := normalNode6364

theorem canonicalSound1156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1156.moment H = canonicalOutput1156.moment H :=
  canonical_of_padded canonicalInput1156 canonicalOutput1156 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1157 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1157 : ExponentCode := normalNode9159

theorem canonicalSound1157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1157.moment H = canonicalOutput1157.moment H :=
  canonical_of_padded canonicalInput1157 canonicalOutput1157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput1158 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1158 : ExponentCode := normalNode6356

theorem canonicalSound1158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1158.moment H = canonicalOutput1158.moment H :=
  canonical_of_padded canonicalInput1158 canonicalOutput1158 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1159 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1159 : ExponentCode := normalNode6363

theorem canonicalSound1159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1159.moment H = canonicalOutput1159.moment H :=
  canonical_of_padded canonicalInput1159 canonicalOutput1159 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1160 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1160 : ExponentCode := normalNode7487

theorem canonicalSound1160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1160.moment H = canonicalOutput1160.moment H :=
  canonical_of_padded canonicalInput1160 canonicalOutput1160 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput1161 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1161 : ExponentCode := normalNode8314

theorem canonicalSound1161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1161.moment H = canonicalOutput1161.moment H :=
  canonical_of_padded canonicalInput1161 canonicalOutput1161 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput1162 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1162 : ExponentCode := normalNode10041

theorem canonicalSound1162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1162.moment H = canonicalOutput1162.moment H :=
  canonical_of_padded canonicalInput1162 canonicalOutput1162 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput1163 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1163 : ExponentCode := normalNode6347

theorem canonicalSound1163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1163.moment H = canonicalOutput1163.moment H :=
  canonical_of_padded canonicalInput1163 canonicalOutput1163 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput1164 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1164 : ExponentCode := normalNode6348

theorem canonicalSound1164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1164.moment H = canonicalOutput1164.moment H :=
  canonical_of_padded canonicalInput1164 canonicalOutput1164 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput1165 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput1165 : ExponentCode := normalNode9492

theorem canonicalSound1165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1165.moment H = canonicalOutput1165.moment H :=
  canonical_of_padded canonicalInput1165 canonicalOutput1165 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1166 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput1166 : ExponentCode := normalNode9499

theorem canonicalSound1166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1166.moment H = canonicalOutput1166.moment H :=
  canonical_of_padded canonicalInput1166 canonicalOutput1166 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1167 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1167 : ExponentCode := normalNode10091

theorem canonicalSound1167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1167.moment H = canonicalOutput1167.moment H :=
  canonical_of_padded canonicalInput1167 canonicalOutput1167 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1168 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1168 : ExponentCode := normalNode10063

theorem canonicalSound1168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1168.moment H = canonicalOutput1168.moment H :=
  canonical_of_padded canonicalInput1168 canonicalOutput1168 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1169 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1169 : ExponentCode := normalNode10139

theorem canonicalSound1169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1169.moment H = canonicalOutput1169.moment H :=
  canonical_of_padded canonicalInput1169 canonicalOutput1169 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1170 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1170 : ExponentCode := normalNode10093

theorem canonicalSound1170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1170.moment H = canonicalOutput1170.moment H :=
  canonical_of_padded canonicalInput1170 canonicalOutput1170 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1171 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1171 : ExponentCode := normalNode10066

theorem canonicalSound1171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1171.moment H = canonicalOutput1171.moment H :=
  canonical_of_padded canonicalInput1171 canonicalOutput1171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1172 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1172 : ExponentCode := normalNode8376

theorem canonicalSound1172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1172.moment H = canonicalOutput1172.moment H :=
  canonical_of_padded canonicalInput1172 canonicalOutput1172 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1173 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1173 : ExponentCode := normalNode7594

theorem canonicalSound1173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1173.moment H = canonicalOutput1173.moment H :=
  canonical_of_padded canonicalInput1173 canonicalOutput1173 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1174 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1174 : ExponentCode := normalNode9486

theorem canonicalSound1174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1174.moment H = canonicalOutput1174.moment H :=
  canonical_of_padded canonicalInput1174 canonicalOutput1174 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1175 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput1175 : ExponentCode := normalNode9486

theorem canonicalSound1175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1175.moment H = canonicalOutput1175.moment H :=
  canonical_of_padded canonicalInput1175 canonicalOutput1175 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1176 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput1176 : ExponentCode := normalNode9152

theorem canonicalSound1176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1176.moment H = canonicalOutput1176.moment H :=
  canonical_of_padded canonicalInput1176 canonicalOutput1176 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1177 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput1177 : ExponentCode := normalNode8221

theorem canonicalSound1177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1177.moment H = canonicalOutput1177.moment H :=
  canonical_of_padded canonicalInput1177 canonicalOutput1177 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1178 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput1178 : ExponentCode := normalNode7601

theorem canonicalSound1178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1178.moment H = canonicalOutput1178.moment H :=
  canonical_of_padded canonicalInput1178 canonicalOutput1178 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1179 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, -1, -2, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput1179 : ExponentCode := normalNode7246

theorem canonicalSound1179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1179.moment H = canonicalOutput1179.moment H :=
  canonical_of_padded canonicalInput1179 canonicalOutput1179 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1180 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput1180 : ExponentCode := normalNode9152

theorem canonicalSound1180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1180.moment H = canonicalOutput1180.moment H :=
  canonical_of_padded canonicalInput1180 canonicalOutput1180 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1181 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput1181 : ExponentCode := normalNode8223

theorem canonicalSound1181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1181.moment H = canonicalOutput1181.moment H :=
  canonical_of_padded canonicalInput1181 canonicalOutput1181 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1182 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput1182 : ExponentCode := normalNode9189

theorem canonicalSound1182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1182.moment H = canonicalOutput1182.moment H :=
  canonical_of_padded canonicalInput1182 canonicalOutput1182 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1183 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput1183 : ExponentCode := normalNode6548

theorem canonicalSound1183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1183.moment H = canonicalOutput1183.moment H :=
  canonical_of_padded canonicalInput1183 canonicalOutput1183 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput1184 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1184 : ExponentCode := normalNode6568

theorem canonicalSound1184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1184.moment H = canonicalOutput1184.moment H :=
  canonical_of_padded canonicalInput1184 canonicalOutput1184 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1185 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1185 : ExponentCode := normalNode7605

theorem canonicalSound1185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1185.moment H = canonicalOutput1185.moment H :=
  canonical_of_padded canonicalInput1185 canonicalOutput1185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1186 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1186 : ExponentCode := normalNode8224

theorem canonicalSound1186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1186.moment H = canonicalOutput1186.moment H :=
  canonical_of_padded canonicalInput1186 canonicalOutput1186 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1187 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1187 : ExponentCode := normalNode6569

theorem canonicalSound1187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1187.moment H = canonicalOutput1187.moment H :=
  canonical_of_padded canonicalInput1187 canonicalOutput1187 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1188 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1188 : ExponentCode := normalNode6367

theorem canonicalSound1188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1188.moment H = canonicalOutput1188.moment H :=
  canonical_of_padded canonicalInput1188 canonicalOutput1188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1189 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1189 : ExponentCode := normalNode7608

theorem canonicalSound1189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1189.moment H = canonicalOutput1189.moment H :=
  canonical_of_padded canonicalInput1189 canonicalOutput1189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1190 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1190 : ExponentCode := normalNode6549

theorem canonicalSound1190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1190.moment H = canonicalOutput1190.moment H :=
  canonical_of_padded canonicalInput1190 canonicalOutput1190 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput1191 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1191 : ExponentCode := normalNode9774

theorem canonicalSound1191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1191.moment H = canonicalOutput1191.moment H :=
  canonical_of_padded canonicalInput1191 canonicalOutput1191 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1192 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1192 : ExponentCode := normalNode6547

theorem canonicalSound1192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1192.moment H = canonicalOutput1192.moment H :=
  canonical_of_padded canonicalInput1192 canonicalOutput1192 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1193 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1193 : ExponentCode := normalNode9176

theorem canonicalSound1193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1193.moment H = canonicalOutput1193.moment H :=
  canonical_of_padded canonicalInput1193 canonicalOutput1193 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput1194 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 2, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1194 : ExponentCode := normalNode6549

theorem canonicalSound1194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1194.moment H = canonicalOutput1194.moment H :=
  canonical_of_padded canonicalInput1194 canonicalOutput1194 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput1195 : ExponentCode := ⟨3, 5, ![![-2, -2, 0, 2, 2], ![0, 1, 2, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput1195 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound1195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1195.moment H = canonicalOutput1195.moment H :=
  canonical_of_padded canonicalInput1195 canonicalOutput1195 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1196 : ExponentCode := ⟨3, 5, ![![-2, -2, 0, 2, 2], ![0, 1, 2, -1, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput1196 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound1196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1196.moment H = canonicalOutput1196.moment H :=
  canonical_of_padded canonicalInput1196 canonicalOutput1196 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1197 : ExponentCode := ⟨3, 5, ![![-2, -2, 0, 2, 2], ![1, 0, 2, -2, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput1197 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound1197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1197.moment H = canonicalOutput1197.moment H :=
  canonical_of_padded canonicalInput1197 canonicalOutput1197 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1198 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1198 : ExponentCode := normalNode3240

theorem canonicalSound1198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1198.moment H = canonicalOutput1198.moment H :=
  canonical_of_padded canonicalInput1198 canonicalOutput1198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1199 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1199 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1930⟩

theorem canonicalSound1199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1199.moment H = canonicalOutput1199.moment H :=
  canonical_of_padded canonicalInput1199 canonicalOutput1199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1200 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput1200 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1935⟩

theorem canonicalSound1200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1200.moment H = canonicalOutput1200.moment H :=
  canonical_of_padded canonicalInput1200 canonicalOutput1200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1201 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput1201 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1934⟩

theorem canonicalSound1201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1201.moment H = canonicalOutput1201.moment H :=
  canonical_of_padded canonicalInput1201 canonicalOutput1201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1202 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput1202 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1936⟩

theorem canonicalSound1202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1202.moment H = canonicalOutput1202.moment H :=
  canonical_of_padded canonicalInput1202 canonicalOutput1202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1203 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1203 : ExponentCode := normalNode3321

theorem canonicalSound1203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1203.moment H = canonicalOutput1203.moment H :=
  canonical_of_padded canonicalInput1203 canonicalOutput1203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1204 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1204 : ExponentCode := normalNode1269

theorem canonicalSound1204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1204.moment H = canonicalOutput1204.moment H :=
  canonical_of_padded canonicalInput1204 canonicalOutput1204 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1205 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput1205 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1904⟩

theorem canonicalSound1205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1205.moment H = canonicalOutput1205.moment H :=
  canonical_of_padded canonicalInput1205 canonicalOutput1205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1206 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput1206 : ExponentCode := normalNode1795

theorem canonicalSound1206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1206.moment H = canonicalOutput1206.moment H :=
  canonical_of_padded canonicalInput1206 canonicalOutput1206 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1207 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1207 : ExponentCode := normalNode3217

theorem canonicalSound1207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1207.moment H = canonicalOutput1207.moment H :=
  canonical_of_padded canonicalInput1207 canonicalOutput1207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1208 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput1208 : ExponentCode := normalNode3219

theorem canonicalSound1208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1208.moment H = canonicalOutput1208.moment H :=
  canonical_of_padded canonicalInput1208 canonicalOutput1208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1209 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1209 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1921⟩

theorem canonicalSound1209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1209.moment H = canonicalOutput1209.moment H :=
  canonical_of_padded canonicalInput1209 canonicalOutput1209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1210 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1210 : ExponentCode := normalNode3294

theorem canonicalSound1210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1210.moment H = canonicalOutput1210.moment H :=
  canonical_of_padded canonicalInput1210 canonicalOutput1210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1211 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1211 : ExponentCode := normalNode3256

theorem canonicalSound1211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1211.moment H = canonicalOutput1211.moment H :=
  canonical_of_padded canonicalInput1211 canonicalOutput1211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1212 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1212 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1939⟩

theorem canonicalSound1212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1212.moment H = canonicalOutput1212.moment H :=
  canonical_of_padded canonicalInput1212 canonicalOutput1212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1213 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 1, 0], ![1, 1, 2, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput1213 : ExponentCode := normalNode11212

theorem canonicalSound1213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1213.moment H = canonicalOutput1213.moment H :=
  canonical_of_padded canonicalInput1213 canonicalOutput1213 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1214 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1214 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1903⟩

theorem canonicalSound1214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1214.moment H = canonicalOutput1214.moment H :=
  canonical_of_padded canonicalInput1214 canonicalOutput1214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1215 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 2, -1, -3]]⟩

def canonicalOutput1215 : ExponentCode := normalNode11053

theorem canonicalSound1215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1215.moment H = canonicalOutput1215.moment H :=
  canonical_of_padded canonicalInput1215 canonicalOutput1215 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
