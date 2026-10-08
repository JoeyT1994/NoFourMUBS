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
def state_70382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 95 else 41)))
def hex_70382 : String := "40414205050641420A4443410540050A050A42064443400641420644430741050606064006410AB806"
theorem cover_70382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_70382)
  decide +kernel
#print axioms cover_70382

def state_70425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 40)))
def hex_70425 : String := "404107440A42430A400641070A0A410744074243400A074041070A0707"
theorem cover_70425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_70425)
  decide +kernel
#print axioms cover_70425

def state_70454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 40)))
def hex_70454 : String := "4041440505440842434005410508050841074407424340410744074243064005070707404105084107B807"
theorem cover_70454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_70454)
  decide +kernel
#print axioms cover_70454

def state_70499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
def hex_70499 : String := "41424443400541054205050505440505424443064006414205050606440A09"
theorem cover_70499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_70499)
  decide +kernel
#print axioms cover_70499

def state_70531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 98) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
def hex_70531 : String := "424443074107404205050708440709"
theorem cover_70531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_70531)
  decide +kernel
#print axioms cover_70531

def state_70548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 82 else (if j.val < 4 then 94 else 82)))
def hex_70548 : String := "43404142060A0A410842080A4041424443060506440743090542060A4142440708074244434006084006410742060708440A43084041090608"
theorem cover_70548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_70548)
  decide +kernel
#print axioms cover_70548

def state_70605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 82 else (if j.val < 4 then 94 else 83)))
def hex_70605 : String := "4308404144420608060608"
theorem cover_70605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_70605)
  decide +kernel
#print axioms cover_70605

def state_70616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 83 else (if j.val < 4 then 94 else 41)))
def hex_70616 : String := "44430A404142440709070A41070A09"
theorem cover_70616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_70616)
  decide +kernel
#print axioms cover_70616
end Mub6.Numerical.CircleFullPrototype.Forest
