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
def state_2580415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 36)))
def hex_2580415 : String := "424340410505414442434041090541064406084005064340050605424340090808434005414405080A05440A0A400541050543400541050505"
theorem cover_2580415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_2580415)
  decide +kernel
#print axioms cover_2580415

def state_2580472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 37)))
def hex_2580472 : String := "424340410909414442084340050805084442430A080A4208430A05400541084405054340054144050544050505"
theorem cover_2580472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2580472)
  decide +kernel
#print axioms cover_2580472

def state_2580518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 19)))
def hex_2580518 : String := "434006414443064206400607060640094144080744420643060706"
theorem cover_2580518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2580518)
  decide +kernel
#print axioms cover_2580518

def state_2580547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
def hex_2580547 : String := "414442064306050606"
theorem cover_2580547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2580547)
  decide +kernel
#print axioms cover_2580547

def state_2580559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 38)))
def hex_2580559 : String := "43400641444342064006084207400908060640094108444207434006070707"
theorem cover_2580559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2580559)
  decide +kernel
#print axioms cover_2580559

def state_2580591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 38)))
def hex_2580591 : String := "4041444209434005DC090606DC"
theorem cover_2580591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2580591)
  decide +kernel
#print axioms cover_2580591

def state_2580604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 38)))
def hex_2580604 : String := "404109440505414442434009080843400941084408074005080744424340094107074007074340410505414442080507444243400507050507400541050507"
theorem cover_2580604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2580604)
  decide +kernel
#print axioms cover_2580604

def state_2580667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 39)))
def hex_2580667 : String := "42074340060707"
theorem cover_2580667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2580667)
  decide +kernel
#print axioms cover_2580667
end Mub6.Numerical.CircleFullD0.Forest
