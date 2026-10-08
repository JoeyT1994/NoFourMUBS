import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2269254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2269254 : String := "44434241084006064107404443050743420605060742064107400606430806"
theorem cover_2269254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2269254)
  decide +kernel
#print axioms cover_2269254

def state_2269286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 28)))
def hex_2269286 : String := "4105404405424305410540444243050505420805440508054405424305410544050805"
theorem cover_2269286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_2269286)
  decide +kernel
#print axioms cover_2269286

def state_2269322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
def hex_2269322 : String := "404405424305070507"
theorem cover_2269322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2269322)
  decide +kernel
#print axioms cover_2269322

def state_2269333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
def hex_2269333 : String := "42434105404405424305410606430505440542430541050605410740444342410706050743420641060606440707430541054044070707"
theorem cover_2269333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2269333)
  decide +kernel
#print axioms cover_2269333

def state_2269389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 90 else (if j.val < 4 then 45 else 57)))
def hex_2269389 : String := "434140444208050808404442434106060643054106060644420643050606414044060606400606"
theorem cover_2269389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2269389)
  decide +kernel
#print axioms cover_2269389

def state_2269428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 91 else (if j.val < 4 then 45 else 57)))
def hex_2269428 : String := "434105404409094405424305060541404407070740440906440706"
theorem cover_2269428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2269428)
  decide +kernel
#print axioms cover_2269428

def state_2269455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 28)))
def hex_2269455 : String := "4442430507074243410744404206050708410744060643410544050707"
theorem cover_2269455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2269455)
  decide +kernel
#print axioms cover_2269455

def state_2269485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 29)))
def hex_2269485 : String := "430808"
theorem cover_2269485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2269485)
  decide +kernel
#print axioms cover_2269485
end Mub6.Numerical.CircleFullD0.Forest
