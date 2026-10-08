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
def state_49004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_49004 : String := "414243440840050844050505424306440641404206054206434405050506434441050A0A444105074105420705"
theorem cover_49004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_49004)
  decide +kernel
#print axioms cover_49004

def state_49049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_49049 : String := "414208084243084440060840414208430844080806084344080844404108420607084041424308050542434406410806074309054108420808"
theorem cover_49049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_49049)
  decide +kernel
#print axioms cover_49049

def state_49108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_49108 : String := "424344400A4142070542430744400508070A0A444005410542090540054105420905430A05"
theorem cover_49108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_49108)
  decide +kernel
#print axioms cover_49108

def state_49146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_49146 : String := "434441400A42430A44060A0A0A0A4441404209054243440609094344050A054042060A4206430A44074140054209050741400842090A400842080A"
theorem cover_49146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_49146)
  decide +kernel
#print axioms cover_49146

def state_49205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
def hex_49205 : String := "430A4441050A0A"
theorem cover_49205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_49205)
  decide +kernel
#print axioms cover_49205

def state_49213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_49213 : String := "4243444041070807074440414209054243440807094308050840410742094307090743440807444005084005420705"
theorem cover_49213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_49213)
  decide +kernel
#print axioms cover_49213
end Mub6.Numerical.CircleFullPrototype.Forest
