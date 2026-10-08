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
def state_1041578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 26 else 16)))
def hex_1041578 : String := "434144420740434144DA4207404344DA410706070744084208404306080607074207404344414207400A0606060707440842064043060A06410708"
theorem cover_1041578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1041578)
  decide +kernel
#print axioms cover_1041578

def state_1041637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 26 else 16)))
def hex_1041637 : String := "4341070807"
theorem cover_1041637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1041637)
  decide +kernel
#print axioms cover_1041637

def state_1041642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 17)))
def hex_1041642 : String := "420A404344410A06060A430607"
theorem cover_1041642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1041642)
  decide +kernel
#print axioms cover_1041642

def state_1041655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 8)))
def hex_1041655 : String := "4442084043414408060608084206400606"
theorem cover_1041655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1041655)
  decide +kernel
#print axioms cover_1041655

def state_1041672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 8)))
def hex_1041672 : String := "410708"
theorem cover_1041672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1041672)
  decide +kernel
#print axioms cover_1041672

def state_1041675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 8)))
def hex_1041675 : String := "4341070607"
theorem cover_1041675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1041675)
  decide +kernel
#print axioms cover_1041675

def state_1041680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 9)))
def hex_1041680 : String := "420A400A43060A"
theorem cover_1041680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1041680)
  decide +kernel
#print axioms cover_1041680

def state_1041687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_1041687 : String := "44420840434144080606080806"
theorem cover_1041687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1041687)
  decide +kernel
#print axioms cover_1041687

def state_1041704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
def hex_1041704 : String := "40424109060709"
theorem cover_1041704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1041704)
  decide +kernel
#print axioms cover_1041704

def state_1041716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 50 else 16)))
def hex_1041716 : String := "40424109060709"
theorem cover_1041716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1041716)
  decide +kernel
#print axioms cover_1041716

def state_1041724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 51 else 16)))
def hex_1041724 : String := "424144430A40424144DA0944430A404241DA440806070A430940420607060A0A0944430A4042414443074007060606070A43064042060706410907"
theorem cover_1041724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1041724)
  decide +kernel
#print axioms cover_1041724

def state_1041783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 51 else 16)))
def hex_1041783 : String := "424109440A0609"
theorem cover_1041783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1041783)
  decide +kernel
#print axioms cover_1041783

def state_1041790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 17)))
def hex_1041790 : String := "4309404244410906060909"
theorem cover_1041790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1041790)
  decide +kernel
#print axioms cover_1041790

def state_1041801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 8)))
def hex_1041801 : String := "44430740424144070606074206074306400606"
theorem cover_1041801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041801 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1041801)
  decide +kernel
#print axioms cover_1041801

def state_1041820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 8)))
def hex_1041820 : String := "410907"
theorem cover_1041820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1041820)
  decide +kernel
#print axioms cover_1041820

def state_1041823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
def hex_1041823 : String := "4241090609"
theorem cover_1041823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1041823)
  decide +kernel
#print axioms cover_1041823

def state_1041828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
def hex_1041828 : String := "4309404244410906060909"
theorem cover_1041828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1041828)
  decide +kernel
#print axioms cover_1041828
end Mub6.Numerical.CircleFullD0.Forest
