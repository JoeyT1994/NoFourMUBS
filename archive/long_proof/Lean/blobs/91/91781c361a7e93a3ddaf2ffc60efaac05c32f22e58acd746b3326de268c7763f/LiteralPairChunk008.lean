import LiteralPairChunk007
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert192 : PairCertificate (Fin 48) := .first cliqueCert47
theorem pairCheck192 : checkPairSized orthGraph ubGraph (labelSet 4) (labelSet 199022366167072) 3 6 pairCert192=true := by
  exact cliqueCheck47
def pairCert193 : PairCertificate (Fin 48) := .cross cliqueCert48
theorem pairCheck193 : checkPairSized orthGraph ubGraph (labelSet 1107329028) (labelSet 202456187405729) 3 6 pairCert193=true := by
  exact cliqueCheck48
def pairCert194 : PairCertificate (Fin 48) := .first cliqueCert30
theorem pairCheck194 : checkPairSized orthGraph ubGraph (labelSet 1107329028) (labelSet 210154921547169) 4 6 pairCert194=true := by
  exact cliqueCheck30
def pairCert195 : PairCertificate (Fin 48) := .split 26 pairCert193 pairCert194
theorem pairCheck195 : checkPairSized orthGraph ubGraph (labelSet 1174437892) (labelSet 210154921547169) 4 6 pairCert195=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 1174437892) (labelSet 210154921547169) (labelSet 1107329028)
    (labelSet 202456187405729) (labelSet 1107329028) 26 3 6
    pairCert193 pairCert194 (by decide) (by decide) (by decide) (by decide)
    pairCheck193 pairCheck194
def pairCert196 : PairCertificate (Fin 48) := .split 32 pairCert192 pairCert195
theorem pairCheck196 : checkPairSized orthGraph ubGraph (labelSet 5469405188) (labelSet 210154921547169) 4 6 pairCert196=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 5469405188) (labelSet 210154921547169) (labelSet 4)
    (labelSet 199022366167072) (labelSet 1174437892) 32 3 6
    pairCert192 pairCert195 (by decide) (by decide) (by decide) (by decide)
    pairCheck192 pairCheck195
def pairCert197 : PairCertificate (Fin 48) := .split 9 pairCert191 pairCert196
theorem pairCheck197 : checkPairSized orthGraph ubGraph (labelSet 5469405700) (labelSet 210154921547169) 4 6 pairCert197=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 5469405700) (labelSet 210154921547169) (labelSet 4)
    (labelSet 51679194141089) (labelSet 5469405188) 9 3 6
    pairCert191 pairCert196 (by decide) (by decide) (by decide) (by decide)
    pairCheck191 pairCheck196
def pairCert198 : PairCertificate (Fin 48) := .first cliqueCert47
theorem pairCheck198 : checkPairSized orthGraph ubGraph (labelSet 4) (labelSet 12218108338177) 3 6 pairCert198=true := by
  exact cliqueCheck47
def pairCert199 : PairCertificate (Fin 48) := .first cliqueCert47
theorem pairCheck199 : checkPairSized orthGraph ubGraph (labelSet 4) (labelSet 237752480179201) 3 6 pairCert199=true := by
  exact cliqueCheck47
def pairCert200 : PairCertificate (Fin 48) := .cross cliqueCert49
theorem pairCheck200 : checkPairSized orthGraph ubGraph (labelSet 131340) (labelSet 229870146789376) 3 6 pairCert200=true := by
  exact cliqueCheck49
def pairCert201 : PairCertificate (Fin 48) := .first cliqueCert20
theorem pairCheck201 : checkPairSized orthGraph ubGraph (labelSet 131340) (labelSet 241054241645569) 4 6 pairCert201=true := by
  exact cliqueCheck20
def pairCert202 : PairCertificate (Fin 48) := .split 32 pairCert200 pairCert201
theorem pairCheck202 : checkPairSized orthGraph ubGraph (labelSet 4295098636) (labelSet 241054241645569) 4 6 pairCert202=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 4295098636) (labelSet 241054241645569) (labelSet 131340)
    (labelSet 229870146789376) (labelSet 131340) 32 3 6
    pairCert200 pairCert201 (by decide) (by decide) (by decide) (by decide)
    pairCheck200 pairCheck201
def pairCert203 : PairCertificate (Fin 48) := .split 26 pairCert199 pairCert202
theorem pairCheck203 : checkPairSized orthGraph ubGraph (labelSet 4362207500) (labelSet 241054241645569) 4 6 pairCert203=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 4362207500) (labelSet 241054241645569) (labelSet 4)
    (labelSet 237752480179201) (labelSet 4295098636) 26 3 6
    pairCert199 pairCert202 (by decide) (by decide) (by decide) (by decide)
    pairCheck199 pairCheck202
def pairCert204 : PairCertificate (Fin 48) := .split 9 pairCert198 pairCert203
theorem pairCheck204 : checkPairSized orthGraph ubGraph (labelSet 4362208012) (labelSet 241054241645569) 4 6 pairCert204=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 4362208012) (labelSet 241054241645569) (labelSet 4)
    (labelSet 12218108338177) (labelSet 4362207500) 9 3 6
    pairCert198 pairCert203 (by decide) (by decide) (by decide) (by decide)
    pairCheck198 pairCheck203
def pairCert205 : PairCertificate (Fin 48) := .first cliqueCert47
theorem pairCheck205 : checkPairSized orthGraph ubGraph (labelSet 4) (labelSet 70566598020544) 3 6 pairCert205=true := by
  exact cliqueCheck47
def pairCert206 : PairCertificate (Fin 48) := .first cliqueCert47
theorem pairCheck206 : checkPairSized orthGraph ubGraph (labelSet 4) (labelSet 74776744925248) 3 6 pairCert206=true := by
  exact cliqueCheck47
def pairCert207 : PairCertificate (Fin 48) := .cross cliqueCert50
theorem pairCheck207 : checkPairSized orthGraph ubGraph (labelSet 158329674924036) (labelSet 6649683368384) 3 6 pairCert207=true := by
  exact cliqueCheck50
def pairCert208 : PairCertificate (Fin 48) := .first cliqueCert45
theorem pairCheck208 : checkPairSized orthGraph ubGraph (labelSet 158329674924036) (labelSet 77164746890688) 4 6 pairCert208=true := by
  exact cliqueCheck45
def pairCert209 : PairCertificate (Fin 48) := .split 9 pairCert207 pairCert208
theorem pairCheck209 : checkPairSized orthGraph ubGraph (labelSet 158329674924548) (labelSet 77164746890688) 4 6 pairCert209=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158329674924548) (labelSet 77164746890688) (labelSet 158329674924036)
    (labelSet 6649683368384) (labelSet 158329674924036) 9 3 6
    pairCert207 pairCert208 (by decide) (by decide) (by decide) (by decide)
    pairCheck207 pairCheck208
def pairCert210 : PairCertificate (Fin 48) := .split 32 pairCert206 pairCert209
theorem pairCheck210 : checkPairSized orthGraph ubGraph (labelSet 158333969891844) (labelSet 77164746890688) 4 6 pairCert210=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158333969891844) (labelSet 77164746890688) (labelSet 4)
    (labelSet 74776744925248) (labelSet 158329674924548) 32 3 6
    pairCert206 pairCert209 (by decide) (by decide) (by decide) (by decide)
    pairCheck206 pairCheck209
def pairCert211 : PairCertificate (Fin 48) := .split 26 pairCert205 pairCert210
theorem pairCheck211 : checkPairSized orthGraph ubGraph (labelSet 158334037000708) (labelSet 77164746890688) 4 6 pairCert211=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158334037000708) (labelSet 77164746890688) (labelSet 4)
    (labelSet 70566598020544) (labelSet 158333969891844) 26 3 6
    pairCert205 pairCert210 (by decide) (by decide) (by decide) (by decide)
    pairCheck205 pairCheck210
def pairCert212 : PairCertificate (Fin 48) := .first cliqueCert45
theorem pairCheck212 : checkPairSized orthGraph ubGraph (labelSet 158329674924036) (labelSet 51800527075809) 4 6 pairCert212=true := by
  exact cliqueCheck45
def pairCert213 : PairCertificate (Fin 48) := .first cliqueCert30
theorem pairCheck213 : checkPairSized orthGraph ubGraph (labelSet 1107329028) (labelSet 272945459113441) 4 6 pairCert213=true := by
  exact cliqueCheck30
def pairCert214 : PairCertificate (Fin 48) := .first cliqueCert51
theorem pairCheck214 : checkPairSized orthGraph ubGraph (labelSet 158335211831564) (labelSet 280645267095009) 5 6 pairCert214=true := by
  exact cliqueCheck51
def pairCert215 : PairCertificate (Fin 48) := .split 26 pairCert213 pairCert214
theorem pairCheck215 : checkPairSized orthGraph ubGraph (labelSet 158335278940428) (labelSet 280645267095009) 5 6 pairCert215=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158335278940428) (labelSet 280645267095009) (labelSet 1107329028)
    (labelSet 272945459113441) (labelSet 158335211831564) 26 4 6
    pairCert213 pairCert214 (by decide) (by decide) (by decide) (by decide)
    pairCheck213 pairCheck214
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck192
#print axioms Mub6.Numerical.ClusterTube48.pairCheck193
#print axioms Mub6.Numerical.ClusterTube48.pairCheck194
#print axioms Mub6.Numerical.ClusterTube48.pairCheck195
#print axioms Mub6.Numerical.ClusterTube48.pairCheck196
#print axioms Mub6.Numerical.ClusterTube48.pairCheck197
#print axioms Mub6.Numerical.ClusterTube48.pairCheck198
#print axioms Mub6.Numerical.ClusterTube48.pairCheck199
#print axioms Mub6.Numerical.ClusterTube48.pairCheck200
#print axioms Mub6.Numerical.ClusterTube48.pairCheck201
#print axioms Mub6.Numerical.ClusterTube48.pairCheck202
#print axioms Mub6.Numerical.ClusterTube48.pairCheck203
#print axioms Mub6.Numerical.ClusterTube48.pairCheck204
#print axioms Mub6.Numerical.ClusterTube48.pairCheck205
#print axioms Mub6.Numerical.ClusterTube48.pairCheck206
#print axioms Mub6.Numerical.ClusterTube48.pairCheck207
#print axioms Mub6.Numerical.ClusterTube48.pairCheck208
#print axioms Mub6.Numerical.ClusterTube48.pairCheck209
#print axioms Mub6.Numerical.ClusterTube48.pairCheck210
#print axioms Mub6.Numerical.ClusterTube48.pairCheck211
#print axioms Mub6.Numerical.ClusterTube48.pairCheck212
#print axioms Mub6.Numerical.ClusterTube48.pairCheck213
#print axioms Mub6.Numerical.ClusterTube48.pairCheck214
#print axioms Mub6.Numerical.ClusterTube48.pairCheck215
