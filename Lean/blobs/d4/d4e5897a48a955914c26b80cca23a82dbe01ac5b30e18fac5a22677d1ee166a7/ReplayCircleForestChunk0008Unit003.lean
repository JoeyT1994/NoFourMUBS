import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_49107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_49107 : String := "41424344400A4142070542430744400508070A0A444005410542090540054105420905430A0542434441400A42430A44060A0A0A0A4441404209054243440609094344050A054042060A4206430A44074140054209050741400842090A400842080A430A4441050A0A"
theorem cover_49107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 105) (hex := hex_49107)
  decide +kernel
#print axioms cover_49107

def state_49213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_49213 : String := "4243444041070807074440414209054243440807094308050840410742094307090743440807444005084005420705"
theorem cover_49213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_49213)
  decide +kernel
#print axioms cover_49213

def state_49262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 13)))
def hex_49262 : String := "4440414243084408400A07430844080A4206430944060A08400A410742054305400A05"
theorem cover_49262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_49262)
  decide +kernel
#print axioms cover_49262

def state_49298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
def hex_49298 : String := "4041424344404108060840410942064306094108420643084406400907094344084041050A41084243084408400A0808444005084041054209054142090542434408400908094344050505424306440641400606064344414006080641400A424306440641400606060A40064206064441404206074206430607064140424344060609430A054243440641400642064306060644064109064344414005080641400542430844080A0A400A42060A44410507414005424344050505054007424306064344050A054042060742064306074142430844084041080808430844084041084208080842434406400605440640414206430606060A4344084041084205090844404108060840414243440640410806084440060640414206430809064108064344084041084206080844084041424308440891430805424306440606434408914407914108420808420643440640060644064041420606064142064306060641084205430844084041080505"
theorem cover_49298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 367) (hex := hex_49298)
  decide +kernel
#print axioms cover_49298


end Mub6.Numerical.CircleFullPrototype.Forest
