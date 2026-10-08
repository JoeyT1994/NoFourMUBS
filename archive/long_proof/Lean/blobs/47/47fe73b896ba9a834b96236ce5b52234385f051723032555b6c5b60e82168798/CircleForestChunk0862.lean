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
def state_1507554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1507554 : String := "4006414344064240064306414244064006430641420A0606060606440642400641434244064006430A0A06420A440640064143060A0643060A064306440606"
theorem cover_1507554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_1507554)
  decide +kernel
#print axioms cover_1507554

def state_1507617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 14)))
def hex_1507617 : String := "06"
theorem cover_1507617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1507617)
  decide +kernel
#print axioms cover_1507617

def state_1507618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
def hex_1507618 : String := "06"
theorem cover_1507618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1507618)
  decide +kernel
#print axioms cover_1507618

def state_1507620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
def hex_1507620 : String := "4308424408404143440842404308410808080844420A0842404143420A080A0A0A4041430844064240060806080843084408420A084143084408420A080808"
theorem cover_1507620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_1507620)
  decide +kernel
#print axioms cover_1507620

def state_1507683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
def hex_1507683 : String := "08"
theorem cover_1507683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1507683)
  decide +kernel
#print axioms cover_1507683

def state_1507687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 15)))
def hex_1507687 : String := "424440064341050541424440054305410505050542440605050505"
theorem cover_1507687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_1507687)
  decide +kernel
#print axioms cover_1507687

def state_1507717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
def hex_1507717 : String := "4143424406050542444006414306070607064306420906"
theorem cover_1507717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1507717)
  decide +kernel
#print axioms cover_1507717

def state_1507745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
def hex_1507745 : String := "430641424406050506"
theorem cover_1507745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1507745)
  decide +kernel
#print axioms cover_1507745

def state_1507755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 100 else 60)))
def hex_1507755 : String := "41424440050805054244060505"
theorem cover_1507755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1507755)
  decide +kernel
#print axioms cover_1507755
end Mub6.Numerical.CircleFullD0.Forest
