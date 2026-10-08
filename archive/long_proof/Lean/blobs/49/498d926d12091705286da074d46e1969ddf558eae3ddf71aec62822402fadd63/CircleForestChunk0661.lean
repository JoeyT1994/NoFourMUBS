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
def state_764287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 13)))
def hex_764287 : String := "414442434044070A44060506430A070A4442434041440705440705410505400741060743400741070707424305400805430A0A"
theorem cover_764287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_764287)
  decide +kernel
#print axioms cover_764287

def state_764338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 13)))
def hex_764338 : String := "414406054442430506434105050605"
theorem cover_764338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_764338)
  decide +kernel
#print axioms cover_764338

def state_764353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 9 else 13)))
def hex_764353 : String := "4041440606440743420907064106440606"
theorem cover_764353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_764353)
  decide +kernel
#print axioms cover_764353

def state_764370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 13)))
def hex_764370 : String := "4340410A44070A41084442430807070A400707"
theorem cover_764370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_764370)
  decide +kernel
#print axioms cover_764370

def state_764390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 12)))
def hex_764390 : String := "4243090707"
theorem cover_764390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_764390)
  decide +kernel
#print axioms cover_764390

def state_764396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 13)))
def hex_764396 : String := "4341404442434140070508070742054305410707444205430541070705400844090541404407074407434205410505064007440708"
theorem cover_764396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_764396)
  decide +kernel
#print axioms cover_764396

def state_764449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 13)))
def hex_764449 : String := "43414044070744074243054105050740070907"
theorem cover_764449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_764449)
  decide +kernel
#print axioms cover_764449

def state_764469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 7)))
def hex_764469 : String := "4142434440090A0909430A09420843444006410A060A07"
theorem cover_764469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_764469)
  decide +kernel
#print axioms cover_764469

def state_764492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 7)))
def hex_764492 : String := "41424344400A0505090A42430544414008050805434441400A05404205060505444140070A400742430507070A"
theorem cover_764492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_764492)
  decide +kernel
#print axioms cover_764492
end Mub6.Numerical.CircleFullPrototype.Forest
