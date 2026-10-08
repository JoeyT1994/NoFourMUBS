import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1024007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 204)))
def hex_1024007 : String := "424140440943054205410581440905404409810941404408430842414044084305420507098141400709084409430909400809"
theorem cover_1024007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1024007)
  decide +kernel
#print axioms cover_1024007

def state_1024059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 204)))
def hex_1024059 : String := "41404409434205414044090505814241050941400A0909094044098109"
theorem cover_1024059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024059 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1024059)
  decide +kernel
#print axioms cover_1024059

def state_1024088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 204)))
def hex_1024088 : String := "41404409434241404409434205074209090981414044090709814241400A098141400A098144094309094044098109"
theorem cover_1024088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1024088)
  decide +kernel
#print axioms cover_1024088

def state_1024136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 205)))
def hex_1024136 : String := "42414044430505050581414044434241058107424140440705058141078143420507424105810744430A42054106814305420541050581"
theorem cover_1024136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1024136)
  decide +kernel
#print axioms cover_1024136

def state_1024192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 205)))
def hex_1024192 : String := "4140444342054105810808444305050581"
theorem cover_1024192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1024192)
  decide +kernel
#print axioms cover_1024192
end Mub6.Numerical.CircleFullD0.Forest
