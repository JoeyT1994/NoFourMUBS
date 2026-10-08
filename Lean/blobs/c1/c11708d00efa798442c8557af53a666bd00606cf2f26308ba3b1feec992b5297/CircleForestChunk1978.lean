import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2555341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
def hex_2555341 : String := "41444043420944094109090909404342064144404306070606064206414409400A06440906064440430909094043064206414409060606"
theorem cover_2555341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2555341)
  decide +kernel
#print axioms cover_2555341

def state_2555396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_2555396 : String := "06"
theorem cover_2555396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2555396)
  decide +kernel
#print axioms cover_2555396

def state_2555397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_2555397 : String := "4144420505064442064306404106060506"
theorem cover_2555397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2555397)
  decide +kernel
#print axioms cover_2555397

def state_2555417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_2555417 : String := "42094344054041054209434405410509090509"
theorem cover_2555417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2555417)
  decide +kernel
#print axioms cover_2555417

def state_2555437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_2555437 : String := "09"
theorem cover_2555437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2555437)
  decide +kernel
#print axioms cover_2555437

def state_2555439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_2555439 : String := "40414442050A0744420943074107444042070705074206074107440706"
theorem cover_2555439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2555439)
  decide +kernel
#print axioms cover_2555439

def state_2555468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_2555468 : String := "4041440542070A444209434109440907410944094042094307410744070707420943074107400A074105440507"
theorem cover_2555468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_2555468)
  decide +kernel
#print axioms cover_2555468

def state_2555514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_2555514 : String := "4209434144094042094341440940090744094009094109090944094042094341440940090609090941094408400908"
theorem cover_2555514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_2555514)
  decide +kernel
#print axioms cover_2555514

def state_2555562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_2555562 : String := "06"
theorem cover_2555562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2555562)
  decide +kernel
#print axioms cover_2555562
end Mub6.Numerical.CircleFullD0.Forest
