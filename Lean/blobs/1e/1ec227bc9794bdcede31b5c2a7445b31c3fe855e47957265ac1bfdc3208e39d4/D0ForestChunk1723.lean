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
def state_2286661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
def hex_2286661 : String := "404341440742404341050907070744420A40430507074240430A41090909404341440542400505050A41074407420A0743410509070707"
theorem cover_2286661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286661 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2286661)
  decide +kernel
#print axioms cover_2286661

def state_2286717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 63)))
def hex_2286717 : String := "4043414409084409420640430906090609"
theorem cover_2286717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2286717)
  decide +kernel
#print axioms cover_2286717

def state_2286737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
def hex_2286737 : String := "4442404341084409E541074407E509404341054405E50707E5"
theorem cover_2286737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2286737)
  decide +kernel
#print axioms cover_2286737

def state_2286762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
def hex_2286762 : String := "44424043414409E50A414409E5440AE509404341444240430541050A0905E544420A400808E5414407E54442430A400A07430807E543414405E54409E507E5"
theorem cover_2286762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2286762)
  decide +kernel
#print axioms cover_2286762

def state_2286825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
def hex_2286825 : String := "4144074206074442434006060607420643E506"
theorem cover_2286825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2286825)
  decide +kernel
#print axioms cover_2286825

def state_2286844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
def hex_2286844 : String := "434144074209074409420940E50707"
theorem cover_2286844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2286844)
  decide +kernel
#print axioms cover_2286844

def state_2286859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 31)))
def hex_2286859 : String := "41074407420607"
theorem cover_2286859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2286859)
  decide +kernel
#print axioms cover_2286859

def state_2286866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
def hex_2286866 : String := "4341070907"
theorem cover_2286866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2286866)
  decide +kernel
#print axioms cover_2286866

def state_2286872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
def hex_2286872 : String := "4240430909094043414408420A40080808414407424309060708430907"
theorem cover_2286872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2286872)
  decide +kernel
#print axioms cover_2286872

def state_2286902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 31)))
def hex_2286902 : String := "40434109090609"
theorem cover_2286902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2286902)
  decide +kernel
#print axioms cover_2286902
end Mub6.Numerical.CircleFullD0.Forest
