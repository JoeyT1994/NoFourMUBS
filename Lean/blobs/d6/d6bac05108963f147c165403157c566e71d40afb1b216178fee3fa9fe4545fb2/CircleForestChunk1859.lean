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
def state_2319184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 43)))
def hex_2319184 : String := "444207414305060742414340064405060607414340060506434044074206064442070542410507410543050740064407420606"
theorem cover_2319184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2319184)
  decide +kernel
#print axioms cover_2319184

def state_2319235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 43)))
def hex_2319235 : String := "44424105074105430507420A410543404405420505054044070A0A"
theorem cover_2319235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319235 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2319235)
  decide +kernel
#print axioms cover_2319235

def state_2319262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 63 else 43)))
def hex_2319262 : String := "404407420606444207410607420A41060A"
theorem cover_2319262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2319262)
  decide +kernel
#print axioms cover_2319262

def state_2319279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 43)))
def hex_2319279 : String := "4340074407420741434044074207410A070A070707"
theorem cover_2319279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_2319279)
  decide +kernel
#print axioms cover_2319279

def state_2319301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 42)))
def hex_2319301 : String := "414340424407410507440505084042074406064208084340070807"
theorem cover_2319301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2319301)
  decide +kernel
#print axioms cover_2319301

def state_2319331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
def hex_2319331 : String := "4244410543404207050540064207054106434044420605420606440542050540064406064441054305400605410543400A054006420605"
theorem cover_2319331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2319331)
  decide +kernel
#print axioms cover_2319331

def state_2319386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 43)))
def hex_2319386 : String := "4244054105430540440542050505440505"
theorem cover_2319386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2319386)
  decide +kernel
#print axioms cover_2319386
end Mub6.Numerical.CircleFullD0.Forest
