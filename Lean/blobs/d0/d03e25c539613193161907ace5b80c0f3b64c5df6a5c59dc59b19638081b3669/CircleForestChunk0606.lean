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
def state_384260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_384260 : String := "414243440A074407404307414207440A08420708070A4243440A40060844404107060A404107430642070607430A440A4041080608"
theorem cover_384260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_384260)
  decide +kernel
#print axioms cover_384260

def state_384313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_384313 : String := "4142430A440A070A4243440A08440A4108080A"
theorem cover_384313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_384313)
  decide +kernel
#print axioms cover_384313

def state_384334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_384334 : String := "41424344060705434440420609074042070A074406054243440740070844060543440740410742074307070744404106070707"
theorem cover_384334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_384334)
  decide +kernel
#print axioms cover_384334

def state_384385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_384385 : String := "41420543074406054243440605440605434407410742430A070A07"
theorem cover_384385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_384385)
  decide +kernel
#print axioms cover_384385

def state_384417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_384417 : String := "404344074142074043074406420706070744054142074009050707"
theorem cover_384417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_384417)
  decide +kernel
#print axioms cover_384417

def state_384447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
def hex_384447 : String := "424407400807444043424407074406084209444106064140060908430742074407414043070907074043084208084342070842410707414440430809070808"
theorem cover_384447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_384447)
  decide +kernel
#print axioms cover_384447

def state_384510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
def hex_384510 : String := "420744404307090708"
theorem cover_384510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_384510)
  decide +kernel
#print axioms cover_384510
end Mub6.Numerical.CircleFullPrototype.Forest
