import LiteralCliqueChunk003
import GraphLiteralAssembly
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def cliqueCert96 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck96 : checkClique orthGraph (labelSet 1108177059840) 4 cliqueCert96=true := by
  decide
def cliqueCert97 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0] v)
theorem cliqueCheck97 : checkClique orthGraph (labelSet 35184376446976) 4 cliqueCert97=true := by
  decide
def cliqueCert98 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck98 : checkClique orthGraph (labelSet 16448) 4 cliqueCert98=true := by
  decide
def cliqueCert99 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,1,0,0,0,0,0,0,0,0,4,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,3,0,2,0,0,0,0,3,4,0,2,0] v)
theorem cliqueCheck99 : checkClique orthGraph (labelSet 97117968279612) 6 cliqueCert99=true := by
  decide
def cliqueCert100 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0] v)
theorem cliqueCheck100 : checkClique orthGraph (labelSet 36283892137984) 3 cliqueCert100=true := by
  decide
def cliqueCert101 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,1,0,0] v)
theorem cliqueCheck101 : checkClique orthGraph (labelSet 36283892154368) 4 cliqueCert101=true := by
  decide
def cliqueCert102 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![1,0,0,0,0,1,0,0,2,2,0,3,0,0,0,0,3,0,0,0,4,0,0,0,4,2,0,2,0,4,0,3,0,0,0,0,2,0,4,1,0,0,0,0,3,0,1,0] v)
theorem cliqueCheck102 : checkClique orthGraph (labelSet 233992688308129) 6 cliqueCert102=true := by
  decide
def cliqueCert103 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,2,0,0] v)
theorem cliqueCheck103 : checkClique orthGraph (labelSet 35192970428416) 4 cliqueCert103=true := by
  decide
def cliqueCert104 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,0,0,0,0,2,0,0] v)
theorem cliqueCheck104 : checkClique orthGraph (labelSet 36292549328896) 5 cliqueCert104=true := by
  decide
def cliqueCert105 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,2,0,0] v)
theorem cliqueCheck105 : checkClique orthGraph (labelSet 35322885971968) 4 cliqueCert105=true := by
  decide
def cliqueCert106 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,1,0,2,0,0] v)
theorem cliqueCheck106 : checkClique orthGraph (labelSet 43986974679040) 4 cliqueCert106=true := by
  decide
def cliqueCert107 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0] v)
theorem cliqueCheck107 : checkClique orthGraph (labelSet 8801462779904) 4 cliqueCert107=true := by
  decide
def cliqueCert108 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck108 : checkClique orthGraph (labelSet 139653677056) 4 cliqueCert108=true := by
  decide
def cliqueCert109 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck109 : checkClique orthGraph (labelSet 4415226380288) 4 cliqueCert109=true := by
  decide
def cliqueCert110 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,1,0,0,0,0,2,0,0,0,0,0,2,0,0,0,1,0,0,3,0,1,0,0,1,4,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,3,0] v)
theorem cliqueCheck110 : checkClique orthGraph (labelSet 211175376259602) 6 cliqueCert110=true := by
  decide
def cliqueCert111 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck111 : checkClique orthGraph (labelSet 157840048128) 3 cliqueCert111=true := by
  decide
def cliqueCert112 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,2,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck112 : checkClique orthGraph (labelSet 162135015424) 4 cliqueCert112=true := by
  decide
def cliqueCert113 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,1,0,0,2,0,0,0,0,0,3,1,0,0,0,1,0,0,2,4,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0] v)
theorem cliqueCheck113 : checkClique orthGraph (labelSet 1649431664928) 6 cliqueCert113=true := by
  decide
def cliqueCert114 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0] v)
theorem cliqueCheck114 : checkClique orthGraph (labelSet 13194206642176) 3 cliqueCert114=true := by
  decide
def cliqueCert115 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0] v)
theorem cliqueCheck115 : checkClique orthGraph (labelSet 13194207690752) 4 cliqueCert115=true := by
  decide
def cliqueCert116 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,3,0,0,0,0,0,2,0,0,0,0,3,0,0,0,0,1,1,0,0,0,0] v)
theorem cliqueCheck116 : checkClique orthGraph (labelSet 13355268964352) 5 cliqueCert116=true := by
  decide
def cliqueCert117 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,2,0,2,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck117 : checkClique orthGraph (labelSet 8611956800) 4 cliqueCert117=true := by
  decide
def cliqueCert118 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck118 : checkClique orthGraph (labelSet 146298372096) 4 cliqueCert118=true := by
  decide
def cliqueCert119 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0] v)
theorem cliqueCheck119 : checkClique orthGraph (labelSet 70368765150208) 4 cliqueCert119=true := by
  decide
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck96
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck97
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck98
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck99
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck100
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck101
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck102
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck103
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck104
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck105
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck106
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck107
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck108
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck109
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck110
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck111
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck112
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck113
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck114
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck115
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck116
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck117
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck118
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck119
