import LiteralCliqueChunk002
import GraphLiteralAssembly
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def cliqueCert72 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,2,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck72 : checkClique orthGraph (labelSet 257698046976) 4 cliqueCert72=true := by
  decide
def cliqueCert73 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0] v)
theorem cliqueCheck73 : checkClique orthGraph (labelSet 70403103926272) 4 cliqueCert73=true := by
  decide
def cliqueCert74 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck74 : checkClique orthGraph (labelSet 86167781440) 4 cliqueCert74=true := by
  decide
def cliqueCert75 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck75 : checkClique orthGraph (labelSet 1073774592) 4 cliqueCert75=true := by
  decide
def cliqueCert76 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,1,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,2,0,0,0,0,0,0,3,0,1,4,3,0,4,0,0,0] v)
theorem cliqueCheck76 : checkClique orthGraph (labelSet 34362524434596) 6 cliqueCert76=true := by
  decide
def cliqueCert77 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0] v)
theorem cliqueCheck77 : checkClique orthGraph (labelSet 70386997796864) 3 cliqueCert77=true := by
  decide
def cliqueCert78 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0] v)
theorem cliqueCheck78 : checkClique orthGraph (labelSet 70386997796928) 4 cliqueCert78=true := by
  decide
def cliqueCert79 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![2,2,0,3,0,0,0,2,0,3,0,0,0,0,0,0,0,1,4,0,1,0,0,0,0,0,0,1,0,0,0,0,4,4,0,0,0,0,1,0,0,2,0,3,2,3,0,4] v)
theorem cliqueCheck79 : checkClique orthGraph (labelSet 204936648197771) 6 cliqueCert79=true := by
  decide
def cliqueCert80 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,2,0] v)
theorem cliqueCheck80 : checkClique orthGraph (labelSet 70455717265408) 4 cliqueCert80=true := by
  decide
def cliqueCert81 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,1,0,3,0,0,0,0,0,0,0,0,0,2,0] v)
theorem cliqueCheck81 : checkClique orthGraph (labelSet 70490077014080) 5 cliqueCert81=true := by
  decide
def cliqueCert82 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,1,0,0,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0] v)
theorem cliqueCheck82 : checkClique orthGraph (labelSet 17592187119872) 4 cliqueCert82=true := by
  decide
def cliqueCert83 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,1,0,0,0,0,0] v)
theorem cliqueCheck83 : checkClique orthGraph (labelSet 5772445499392) 4 cliqueCert83=true := by
  decide
def cliqueCert84 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0] v)
theorem cliqueCheck84 : checkClique orthGraph (labelSet 1374389537024) 4 cliqueCert84=true := by
  decide
def cliqueCert85 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0] v)
theorem cliqueCheck85 : checkClique orthGraph (labelSet 21990240952320) 4 cliqueCert85=true := by
  decide
def cliqueCert86 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck86 : checkClique orthGraph (labelSet 8796109799424) 4 cliqueCert86=true := by
  decide
def cliqueCert87 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,3,0,0,0,0,4,0,0,0,1,0,1,0,0,0,0,0,3,0,2] v)
theorem cliqueCheck87 : checkClique orthGraph (labelSet 176617951728320) 6 cliqueCert87=true := by
  decide
def cliqueCert88 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0] v)
theorem cliqueCheck88 : checkClique orthGraph (labelSet 18691722838016) 3 cliqueCert88=true := by
  decide
def cliqueCert89 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0] v)
theorem cliqueCheck89 : checkClique orthGraph (labelSet 18691722840064) 4 cliqueCert89=true := by
  decide
def cliqueCert90 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,0,0,0,0,1,0,0,0,0,0,4,4,0,3,0,2,0,0,0,0,1,0,0,0,3,0,1] v)
theorem cliqueCheck90 : checkClique orthGraph (labelSet 178900456308737) 6 cliqueCert90=true := by
  decide
def cliqueCert91 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0] v)
theorem cliqueCheck91 : checkClique orthGraph (labelSet 13469017440256) 3 cliqueCert91=true := by
  decide
def cliqueCert92 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,2,0,0,0,0] v)
theorem cliqueCheck92 : checkClique orthGraph (labelSet 13469017448448) 4 cliqueCert92=true := by
  decide
def cliqueCert93 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,1,1,0,0,0,0] v)
theorem cliqueCheck93 : checkClique orthGraph (labelSet 31061228660736) 5 cliqueCert93=true := by
  decide
def cliqueCert94 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,2] v)
theorem cliqueCheck94 : checkClique orthGraph (labelSet 145144137416704) 4 cliqueCert94=true := by
  decide
def cliqueCert95 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,2,0,0,1,0,2] v)
theorem cliqueCheck95 : checkClique orthGraph (labelSet 181419485822976) 4 cliqueCert95=true := by
  decide
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck72
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck73
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck74
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck75
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck76
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck77
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck78
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck79
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck80
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck81
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck82
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck83
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck84
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck85
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck86
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck87
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck88
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck89
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck90
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck91
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck92
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck93
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck94
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck95
