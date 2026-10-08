import LiteralPairChunk011
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert288 : PairCertificate (Fin 48) := .split 44 pairCert286 pairCert287
theorem pairCheck288 : checkPairSized orthGraph ubGraph (labelSet 31061203492864) (labelSet 249314030782165) 4 6 pairCert288=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 31061203492864) (labelSet 249314030782165) (labelSet 13469017448448)
    (labelSet 178936695095505) (labelSet 13469017448448) 44 3 6
    pairCert286 pairCert287 (by decide) (by decide) (by decide) (by decide)
    pairCheck286 pairCheck287
def pairCert289 : PairCertificate (Fin 48) := .first cliqueCert93
theorem pairCheck289 : checkPairSized orthGraph ubGraph (labelSet 31061228660736) (labelSet 249314236356317) 5 6 pairCert289=true := by
  exact cliqueCheck93
def pairCert290 : PairCertificate (Fin 48) := .split 40 pairCert288 pairCert289
theorem pairCheck290 : checkPairSized orthGraph ubGraph (labelSet 32160740288512) (labelSet 249314236356317) 5 6 pairCert290=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32160740288512) (labelSet 249314236356317) (labelSet 31061203492864)
    (labelSet 249314030782165) (labelSet 31061228660736) 40 4 6
    pairCert288 pairCert289 (by decide) (by decide) (by decide) (by decide)
    pairCheck288 pairCheck289
def pairCert291 : PairCertificate (Fin 48) := .split 8 pairCert283 pairCert290
theorem pairCheck291 : checkPairSized orthGraph ubGraph (labelSet 32160740288768) (labelSet 249314236356317) 5 6 pairCert291=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32160740288768) (labelSet 249314236356317) (labelSet 23089769351168)
    (labelSet 249275581633232) (labelSet 32160740288512) 8 4 6
    pairCert283 pairCert290 (by decide) (by decide) (by decide) (by decide)
    pairCheck283 pairCheck290
def pairCert292 : PairCertificate (Fin 48) := .split 37 pairCert278 pairCert291
theorem pairCheck292 : checkPairSized orthGraph ubGraph (labelSet 32298179242240) (labelSet 249314236356317) 5 6 pairCert292=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32298179242240) (labelSet 249314236356317) (labelSet 8796109799424)
    (labelSet 106218538194141) (labelSet 32160740288768) 37 4 6
    pairCert278 pairCert291 (by decide) (by decide) (by decide) (by decide)
    pairCheck278 pairCheck291
def pairCert293 : PairCertificate (Fin 48) := .split 20 pairCert277 pairCert292
theorem pairCheck293 : checkPairSized orthGraph ubGraph (labelSet 32298180290816) (labelSet 249314236356317) 5 6 pairCert293=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32298180290816) (labelSet 249314236356317) (labelSet 21990240952320)
    (labelSet 176734589603933) (labelSet 32298179242240) 20 4 6
    pairCert277 pairCert292 (by decide) (by decide) (by decide) (by decide)
    pairCheck277 pairCheck292
def pairCert294 : PairCertificate (Fin 48) := .split 14 pairCert276 pairCert293
theorem pairCheck294 : checkPairSized orthGraph ubGraph (labelSet 32298180307200) (labelSet 249314236356317) 5 6 pairCert294=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32298180307200) (labelSet 249314236356317) (labelSet 1374389537024)
    (labelSet 249275508196060) (labelSet 32298180290816) 14 4 6
    pairCert276 pairCert293 (by decide) (by decide) (by decide) (by decide)
    pairCheck276 pairCheck293
def pairCert295 : PairCertificate (Fin 48) := .split 26 pairCert275 pairCert294
theorem pairCheck295 : checkPairSized orthGraph ubGraph (labelSet 32298247416064) (labelSet 249314236356317) 5 6 pairCert295=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32298247416064) (labelSet 249314236356317) (labelSet 5772445499392)
    (labelSet 246562163656413) (labelSet 32298180307200) 26 4 6
    pairCert275 pairCert294 (by decide) (by decide) (by decide) (by decide)
    pairCheck275 pairCheck294
def pairCert296 : PairCertificate (Fin 48) := .split 10 pairCert274 pairCert295
theorem pairCheck296 : checkPairSized orthGraph ubGraph (labelSet 32298247417088) (labelSet 249314236356317) 5 6 pairCert296=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 32298247417088) (labelSet 249314236356317) (labelSet 17592187119872)
    (labelSet 178897709600988) (labelSet 32298247416064) 10 4 6
    pairCert274 pairCert295 (by decide) (by decide) (by decide) (by decide)
    pairCheck274 pairCheck295
def pairCert297 : PairCertificate (Fin 48) := .first cliqueCert94
theorem pairCheck297 : checkPairSized orthGraph ubGraph (labelSet 145144137416704) (labelSet 99909129807007) 4 6 pairCert297=true := by
  exact cliqueCheck94
def pairCert298 : PairCertificate (Fin 48) := .first cliqueCert95
theorem pairCheck298 : checkPairSized orthGraph ubGraph (labelSet 181419485822976) (labelSet 97501044617142) 4 6 pairCert298=true := by
  exact cliqueCheck95
def pairCert299 : PairCertificate (Fin 48) := .first cliqueCert96
theorem pairCheck299 : checkPairSized orthGraph ubGraph (labelSet 1108177059840) (labelSet 238581979358879) 4 6 pairCert299=true := by
  exact cliqueCheck96
def pairCert300 : PairCertificate (Fin 48) := .first cliqueCert97
theorem pairCheck300 : checkPairSized orthGraph ubGraph (labelSet 35184376446976) (labelSet 103961465007546) 4 6 pairCert300=true := by
  exact cliqueCheck97
def pairCert301 : PairCertificate (Fin 48) := .first cliqueCert98
theorem pairCheck301 : checkPairSized orthGraph ubGraph (labelSet 16448) (labelSet 245142425504430) 4 6 pairCert301=true := by
  exact cliqueCheck98
def pairCert302 : PairCertificate (Fin 48) := .cross cliqueCert99
theorem pairCheck302 : checkPairSized orthGraph ubGraph (labelSet 1099511660544) (labelSet 97117968279612) 2 6 pairCert302=true := by
  exact cliqueCheck99
def pairCert303 : PairCertificate (Fin 48) := .first cliqueCert100
theorem pairCheck303 : checkPairSized orthGraph ubGraph (labelSet 36283892137984) (labelSet 97156625083711) 3 6 pairCert303=true := by
  exact cliqueCheck100
def pairCert304 : PairCertificate (Fin 48) := .split 14 pairCert302 pairCert303
theorem pairCheck304 : checkPairSized orthGraph ubGraph (labelSet 36283892154368) (labelSet 97156625083711) 3 6 pairCert304=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36283892154368) (labelSet 97156625083711) (labelSet 1099511660544)
    (labelSet 97117968279612) (labelSet 36283892137984) 14 2 6
    pairCert302 pairCert303 (by decide) (by decide) (by decide) (by decide)
    pairCheck302 pairCheck303
def pairCert305 : PairCertificate (Fin 48) := .first cliqueCert101
theorem pairCheck305 : checkPairSized orthGraph ubGraph (labelSet 36283892154368) (labelSet 104306673003839) 4 6 pairCert305=true := by
  exact cliqueCheck101
def pairCert306 : PairCertificate (Fin 48) := .split 26 pairCert304 pairCert305
theorem pairCheck306 : checkPairSized orthGraph ubGraph (labelSet 36283959263232) (labelSet 104306673003839) 4 6 pairCert306=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36283959263232) (labelSet 104306673003839) (labelSet 36283892154368)
    (labelSet 97156625083711) (labelSet 36283892154368) 26 3 6
    pairCert304 pairCert305 (by decide) (by decide) (by decide) (by decide)
    pairCheck304 pairCheck305
def pairCert307 : PairCertificate (Fin 48) := .cross cliqueCert102
theorem pairCheck307 : checkPairSized orthGraph ubGraph (labelSet 35192970412032) (labelSet 233992688308129) 3 6 pairCert307=true := by
  exact cliqueCheck102
def pairCert308 : PairCertificate (Fin 48) := .first cliqueCert103
theorem pairCheck308 : checkPairSized orthGraph ubGraph (labelSet 35192970428416) (labelSet 245146718375853) 4 6 pairCert308=true := by
  exact cliqueCheck103
def pairCert309 : PairCertificate (Fin 48) := .split 17 pairCert307 pairCert308
theorem pairCheck309 : checkPairSized orthGraph ubGraph (labelSet 35192970559488) (labelSet 245146718375853) 4 6 pairCert309=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 35192970559488) (labelSet 245146718375853) (labelSet 35192970412032)
    (labelSet 233992688308129) (labelSet 35192970428416) 17 3 6
    pairCert307 pairCert308 (by decide) (by decide) (by decide) (by decide)
    pairCheck307 pairCheck308
def pairCert310 : PairCertificate (Fin 48) := .first cliqueCert104
theorem pairCheck310 : checkPairSized orthGraph ubGraph (labelSet 36292549328896) (labelSet 245182422396863) 5 6 pairCert310=true := by
  exact cliqueCheck104
def pairCert311 : PairCertificate (Fin 48) := .split 6 pairCert309 pairCert310
theorem pairCheck311 : checkPairSized orthGraph ubGraph (labelSet 36292549328960) (labelSet 245182422396863) 5 6 pairCert311=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36292549328960) (labelSet 245182422396863) (labelSet 35192970559488)
    (labelSet 245146718375853) (labelSet 36292549328896) 6 4 6
    pairCert309 pairCert310 (by decide) (by decide) (by decide) (by decide)
    pairCheck309 pairCheck310
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck288
#print axioms Mub6.Numerical.ClusterTube48.pairCheck289
#print axioms Mub6.Numerical.ClusterTube48.pairCheck290
#print axioms Mub6.Numerical.ClusterTube48.pairCheck291
#print axioms Mub6.Numerical.ClusterTube48.pairCheck292
#print axioms Mub6.Numerical.ClusterTube48.pairCheck293
#print axioms Mub6.Numerical.ClusterTube48.pairCheck294
#print axioms Mub6.Numerical.ClusterTube48.pairCheck295
#print axioms Mub6.Numerical.ClusterTube48.pairCheck296
#print axioms Mub6.Numerical.ClusterTube48.pairCheck297
#print axioms Mub6.Numerical.ClusterTube48.pairCheck298
#print axioms Mub6.Numerical.ClusterTube48.pairCheck299
#print axioms Mub6.Numerical.ClusterTube48.pairCheck300
#print axioms Mub6.Numerical.ClusterTube48.pairCheck301
#print axioms Mub6.Numerical.ClusterTube48.pairCheck302
#print axioms Mub6.Numerical.ClusterTube48.pairCheck303
#print axioms Mub6.Numerical.ClusterTube48.pairCheck304
#print axioms Mub6.Numerical.ClusterTube48.pairCheck305
#print axioms Mub6.Numerical.ClusterTube48.pairCheck306
#print axioms Mub6.Numerical.ClusterTube48.pairCheck307
#print axioms Mub6.Numerical.ClusterTube48.pairCheck308
#print axioms Mub6.Numerical.ClusterTube48.pairCheck309
#print axioms Mub6.Numerical.ClusterTube48.pairCheck310
#print axioms Mub6.Numerical.ClusterTube48.pairCheck311
