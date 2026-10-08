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
def state_1334449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 25)))
def hex_1334449 : String := "404209410743070909"
theorem cover_1334449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1334449)
  decide +kernel
#print axioms cover_1334449

def state_1334458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
def hex_1334458 : String := "43444041054244060705050744404105424344400A05404105424307440A0705050A050A4041054243074440410742094307090707430544050507"
theorem cover_1334458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1334458)
  decide +kernel
#print axioms cover_1334458

def state_1334519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 12)))
def hex_1334519 : String := "444041424406430640050606060640414243440707444005090543074440410706060742054306440605410706"
theorem cover_1334519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1334519)
  decide +kernel
#print axioms cover_1334519

def state_1334568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 28 else (if j.val < 4 then 23 else 24)))
def hex_1334568 : String := "434440050640050905"
theorem cover_1334568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1334568)
  decide +kernel
#print axioms cover_1334568

def state_1334577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 23 else 24)))
def hex_1334577 : String := "4344404142060606064041424344064005060543064440410A0606404142054306090506420506064440410A050A4041420543440A09090509"
theorem cover_1334577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1334577)
  decide +kernel
#print axioms cover_1334577

def state_1334634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
def hex_1334634 : String := "4205430605"
theorem cover_1334634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1334634)
  decide +kernel
#print axioms cover_1334634

def state_1334639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
def hex_1334639 : String := "4142090606"
theorem cover_1334639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1334639)
  decide +kernel
#print axioms cover_1334639

def state_1334644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 25)))
def hex_1334644 : String := "4041420543444041420543070905410706404107050744404109050909054109420508"
theorem cover_1334644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1334644)
  decide +kernel
#print axioms cover_1334644

def state_1334680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 12)))
def hex_1334680 : String := "44064041070606"
theorem cover_1334680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1334680)
  decide +kernel
#print axioms cover_1334680
end Mub6.Numerical.CircleFullD0.Forest
