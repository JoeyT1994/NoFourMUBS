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
def state_274146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 16)))
def hex_274146 : String := "404143420944074006074206074309064143090709"
theorem cover_274146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_274146)
  decide +kernel
#print axioms cover_274146

def state_274168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 17)))
def hex_274168 : String := "414344420640054105064206050643444206410606420641060606"
theorem cover_274168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_274168)
  decide +kernel
#print axioms cover_274168

def state_274195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 17)))
def hex_274195 : String := "41434442084041084344090A0808080843440942094041430A064344090606410A0944094206400608"
theorem cover_274195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274195 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_274195)
  decide +kernel
#print axioms cover_274195

def state_274238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 16)))
def hex_274238 : String := "4143424407400507440705074342440941400A434209080A0A0A0A"
theorem cover_274238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_274238)
  decide +kernel
#print axioms cover_274238

def state_274265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 16)))
def hex_274265 : String := "414342440740070744074007070743420944094041430807084143420907070942094407400A07"
theorem cover_274265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_274265)
  decide +kernel
#print axioms cover_274265

def state_274306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
def hex_274306 : String := "430505"
theorem cover_274306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_274306)
  decide +kernel
#print axioms cover_274306

def state_274310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 17)))
def hex_274310 : String := "424441400543424406050542060540064342090842064406064105400543444206410506420605064441050841054005430505"
theorem cover_274310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_274310)
  decide +kernel
#print axioms cover_274310

def state_274361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 17)))
def hex_274361 : String := "424441060606440A41054005430505"
theorem cover_274361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_274361)
  decide +kernel
#print axioms cover_274361
end Mub6.Numerical.CircleFullPrototype.Forest
