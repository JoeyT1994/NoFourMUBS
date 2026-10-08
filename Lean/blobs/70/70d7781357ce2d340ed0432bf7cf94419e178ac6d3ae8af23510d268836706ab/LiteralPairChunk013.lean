import LiteralPairChunk012
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert312 : PairCertificate (Fin 48) := .split 22 pairCert306 pairCert311
theorem pairCheck312 : checkPairSized orthGraph ubGraph (labelSet 36292553523264) (labelSet 245182422396863) 5 6 pairCert312=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36292553523264) (labelSet 245182422396863) (labelSet 36283959263232)
    (labelSet 104306673003839) (labelSet 36292549328960) 22 4 6
    pairCert306 pairCert311 (by decide) (by decide) (by decide) (by decide)
    pairCheck306 pairCheck311
def pairCert313 : PairCertificate (Fin 48) := .split 35 pairCert301 pairCert312
theorem pairCheck313 : checkPairSized orthGraph ubGraph (labelSet 36326913261632) (labelSet 245182422396863) 5 6 pairCert313=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36326913261632) (labelSet 245182422396863) (labelSet 16448)
    (labelSet 245142425504430) (labelSet 36292553523264) 35 4 6
    pairCert301 pairCert312 (by decide) (by decide) (by decide) (by decide)
    pairCheck301 pairCheck312
def pairCert314 : PairCertificate (Fin 48) := .split 47 pairCert300 pairCert313
theorem pairCheck314 : checkPairSized orthGraph ubGraph (labelSet 177064401616960) (labelSet 245182422396863) 5 6 pairCert314=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 177064401616960) (labelSet 245182422396863) (labelSet 35184376446976)
    (labelSet 103961465007546) (labelSet 36326913261632) 47 4 6
    pairCert300 pairCert313 (by decide) (by decide) (by decide) (by decide)
    pairCheck300 pairCheck313
def pairCert315 : PairCertificate (Fin 48) := .split 42 pairCert299 pairCert314
theorem pairCheck315 : checkPairSized orthGraph ubGraph (labelSet 181462448128064) (labelSet 245182422396863) 5 6 pairCert315=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 181462448128064) (labelSet 245182422396863) (labelSet 1108177059840)
    (labelSet 238581979358879) (labelSet 177064401616960) 42 4 6
    pairCert299 pairCert314 (by decide) (by decide) (by decide) (by decide)
    pairCheck299 pairCheck314
def pairCert316 : PairCertificate (Fin 48) := .split 31 pairCert298 pairCert315
theorem pairCheck316 : checkPairSized orthGraph ubGraph (labelSet 181464595611712) (labelSet 245182422396863) 5 6 pairCert316=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 181464595611712) (labelSet 245182422396863) (labelSet 181419485822976)
    (labelSet 97501044617142) (labelSet 181462448128064) 31 4 6
    pairCert298 pairCert315 (by decide) (by decide) (by decide) (by decide)
    pairCheck298 pairCheck315
def pairCert317 : PairCertificate (Fin 48) := .split 24 pairCert297 pairCert316
theorem pairCheck317 : checkPairSized orthGraph ubGraph (labelSet 181464612388928) (labelSet 245182422396863) 5 6 pairCert317=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 181464612388928) (labelSet 245182422396863) (labelSet 145144137416704)
    (labelSet 99909129807007) (labelSet 181464595611712) 24 4 6
    pairCert297 pairCert316 (by decide) (by decide) (by decide) (by decide)
    pairCheck297 pairCheck316
def pairCert318 : PairCertificate (Fin 48) := .first cliqueCert105
theorem pairCheck318 : checkPairSized orthGraph ubGraph (labelSet 35322885971968) (labelSet 230691473051565) 4 6 pairCert318=true := by
  exact cliqueCheck105
def pairCert319 : PairCertificate (Fin 48) := .first cliqueCert106
theorem pairCheck319 : checkPairSized orthGraph ubGraph (labelSet 43986974679040) (labelSet 70412160327646) 4 6 pairCert319=true := by
  exact cliqueCheck106
def pairCert320 : PairCertificate (Fin 48) := .first cliqueCert107
theorem pairCheck320 : checkPairSized orthGraph ubGraph (labelSet 8801462779904) (labelSet 246917867888399) 4 6 pairCert320=true := by
  exact cliqueCheck107
def pairCert321 : PairCertificate (Fin 48) := .first cliqueCert108
theorem pairCheck321 : checkPairSized orthGraph ubGraph (labelSet 139653677056) (labelSet 89645015429054) 4 6 pairCert321=true := by
  exact cliqueCheck108
def pairCert322 : PairCertificate (Fin 48) := .first cliqueCert109
theorem pairCheck322 : checkPairSized orthGraph ubGraph (labelSet 4415226380288) (labelSet 195481582794447) 4 6 pairCert322=true := by
  exact cliqueCheck109
def pairCert323 : PairCertificate (Fin 48) := .cross cliqueCert110
theorem pairCheck323 : checkPairSized orthGraph ubGraph (labelSet 154618822656) (labelSet 211175376259602) 2 6 pairCert323=true := by
  exact cliqueCheck110
def pairCert324 : PairCertificate (Fin 48) := .first cliqueCert111
theorem pairCheck324 : checkPairSized orthGraph ubGraph (labelSet 157840048128) (labelSet 211759491829651) 3 6 pairCert324=true := by
  exact cliqueCheck111
def pairCert325 : PairCertificate (Fin 48) := .split 32 pairCert323 pairCert324
theorem pairCheck325 : checkPairSized orthGraph ubGraph (labelSet 162135015424) (labelSet 211759491829651) 3 6 pairCert325=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 162135015424) (labelSet 211759491829651) (labelSet 154618822656)
    (labelSet 211175376259602) (labelSet 157840048128) 32 2 6
    pairCert323 pairCert324 (by decide) (by decide) (by decide) (by decide)
    pairCheck323 pairCheck324
def pairCert326 : PairCertificate (Fin 48) := .first cliqueCert112
theorem pairCheck326 : checkPairSized orthGraph ubGraph (labelSet 162135015424) (labelSet 230726101233587) 4 6 pairCert326=true := by
  exact cliqueCheck112
def pairCert327 : PairCertificate (Fin 48) := .split 43 pairCert325 pairCert326
theorem pairCheck327 : checkPairSized orthGraph ubGraph (labelSet 8958228037632) (labelSet 230726101233587) 4 6 pairCert327=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8958228037632) (labelSet 230726101233587) (labelSet 162135015424)
    (labelSet 211759491829651) (labelSet 162135015424) 43 3 6
    pairCert325 pairCert326 (by decide) (by decide) (by decide) (by decide)
    pairCheck325 pairCheck326
def pairCert328 : PairCertificate (Fin 48) := .cross cliqueCert113
theorem pairCheck328 : checkPairSized orthGraph ubGraph (labelSet 4398113619968) (labelSet 1649431664928) 2 6 pairCert328=true := by
  exact cliqueCheck113
def pairCert329 : PairCertificate (Fin 48) := .first cliqueCert114
theorem pairCheck329 : checkPairSized orthGraph ubGraph (labelSet 13194206642176) (labelSet 89618951823266) 3 6 pairCert329=true := by
  exact cliqueCheck114
def pairCert330 : PairCertificate (Fin 48) := .split 20 pairCert328 pairCert329
theorem pairCheck330 : checkPairSized orthGraph ubGraph (labelSet 13194207690752) (labelSet 89618951823266) 3 6 pairCert330=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 13194207690752) (labelSet 89618951823266) (labelSet 4398113619968)
    (labelSet 1649431664928) (labelSet 13194206642176) 20 2 6
    pairCert328 pairCert329 (by decide) (by decide) (by decide) (by decide)
    pairCheck328 pairCheck329
def pairCert331 : PairCertificate (Fin 48) := .first cliqueCert115
theorem pairCheck331 : checkPairSized orthGraph ubGraph (labelSet 13194207690752) (labelSet 265884409913259) 4 6 pairCert331=true := by
  exact cliqueCheck115
def pairCert332 : PairCertificate (Fin 48) := .split 31 pairCert330 pairCert331
theorem pairCheck332 : checkPairSized orthGraph ubGraph (labelSet 13196355174400) (labelSet 265884409913259) 4 6 pairCert332=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 13196355174400) (labelSet 265884409913259) (labelSet 13194207690752)
    (labelSet 89618951823266) (labelSet 13194207690752) 31 3 6
    pairCert330 pairCert331 (by decide) (by decide) (by decide) (by decide)
    pairCheck330 pairCheck331
def pairCert333 : PairCertificate (Fin 48) := .first cliqueCert116
theorem pairCheck333 : checkPairSized orthGraph ubGraph (labelSet 13355268964352) (labelSet 265919071649791) 5 6 pairCert333=true := by
  exact cliqueCheck116
def pairCert334 : PairCertificate (Fin 48) := .split 30 pairCert332 pairCert333
theorem pairCheck334 : checkPairSized orthGraph ubGraph (labelSet 13356342706176) (labelSet 265919071649791) 5 6 pairCert334=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 13356342706176) (labelSet 265919071649791) (labelSet 13196355174400)
    (labelSet 265884409913259) (labelSet 13355268964352) 30 4 6
    pairCert332 pairCert333 (by decide) (by decide) (by decide) (by decide)
    pairCheck332 pairCheck333
def pairCert335 : PairCertificate (Fin 48) := .split 17 pairCert327 pairCert334
theorem pairCheck335 : checkPairSized orthGraph ubGraph (labelSet 13356342837248) (labelSet 265919071649791) 5 6 pairCert335=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 13356342837248) (labelSet 265919071649791) (labelSet 8958228037632)
    (labelSet 230726101233587) (labelSet 13356342706176) 17 4 6
    pairCert327 pairCert334 (by decide) (by decide) (by decide) (by decide)
    pairCheck327 pairCheck334
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck312
#print axioms Mub6.Numerical.ClusterTube48.pairCheck313
#print axioms Mub6.Numerical.ClusterTube48.pairCheck314
#print axioms Mub6.Numerical.ClusterTube48.pairCheck315
#print axioms Mub6.Numerical.ClusterTube48.pairCheck316
#print axioms Mub6.Numerical.ClusterTube48.pairCheck317
#print axioms Mub6.Numerical.ClusterTube48.pairCheck318
#print axioms Mub6.Numerical.ClusterTube48.pairCheck319
#print axioms Mub6.Numerical.ClusterTube48.pairCheck320
#print axioms Mub6.Numerical.ClusterTube48.pairCheck321
#print axioms Mub6.Numerical.ClusterTube48.pairCheck322
#print axioms Mub6.Numerical.ClusterTube48.pairCheck323
#print axioms Mub6.Numerical.ClusterTube48.pairCheck324
#print axioms Mub6.Numerical.ClusterTube48.pairCheck325
#print axioms Mub6.Numerical.ClusterTube48.pairCheck326
#print axioms Mub6.Numerical.ClusterTube48.pairCheck327
#print axioms Mub6.Numerical.ClusterTube48.pairCheck328
#print axioms Mub6.Numerical.ClusterTube48.pairCheck329
#print axioms Mub6.Numerical.ClusterTube48.pairCheck330
#print axioms Mub6.Numerical.ClusterTube48.pairCheck331
#print axioms Mub6.Numerical.ClusterTube48.pairCheck332
#print axioms Mub6.Numerical.ClusterTube48.pairCheck333
#print axioms Mub6.Numerical.ClusterTube48.pairCheck334
#print axioms Mub6.Numerical.ClusterTube48.pairCheck335
