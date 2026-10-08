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
def state_51223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_51223 : String := "430741420706424443074041074442054305410705054107050744434007064041064244430741064409060606410642070606"
theorem cover_51223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 51) (hex := hex_51223)
  decide +kernel
#print axioms cover_51223

def state_51274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_51274 : String := "43074107420544404305060505"
theorem cover_51274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_51274)
  decide +kernel
#print axioms cover_51274

def state_51287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_51287 : String := "430944404243084408090908400606"
theorem cover_51287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_51287)
  decide +kernel
#print axioms cover_51287

def state_51303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_51303 : String := "430944404143094442050942050943054405054143054405054309054041430542054443094041424405050909094305400A050505"
theorem cover_51303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_51303)
  decide +kernel
#print axioms cover_51303

def state_51356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_51356 : String := "4309440940410909410909"
theorem cover_51356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_51356)
  decide +kernel
#print axioms cover_51356

def state_51373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_51373 : String := "434041420944094309094209440843410909094142094409434009090942054405434009090940414209440843090609410909"
theorem cover_51373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_51373)
  decide +kernel
#print axioms cover_51373

def state_51427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_51427 : String := "414243090743444209050544420707074243060743444142094007434209410507074206070707"
theorem cover_51427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_51427)
  decide +kernel
#print axioms cover_51427
end Mub6.Numerical.CircleFullPrototype.Forest
