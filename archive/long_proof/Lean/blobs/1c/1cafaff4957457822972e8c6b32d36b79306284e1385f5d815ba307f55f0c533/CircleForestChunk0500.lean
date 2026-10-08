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
def state_281459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
def hex_281459 : String := "41434244400541050905444005410543054244060508054206444006434106420606064005430506434209444008084005410507420A0A"
theorem cover_281459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_281459)
  decide +kernel
#print axioms cover_281459

def state_281518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 94)))
def hex_281518 : String := "4041434209440905420644400607400543410509060941430A4244074009070709"
theorem cover_281518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_281518)
  decide +kernel
#print axioms cover_281518

def state_281551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 95)))
def hex_281551 : String := "404105430542094440054105090541430A420A0A430942094440414309420644090A09410A09404105090A"
theorem cover_281551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_281551)
  decide +kernel
#print axioms cover_281551

def state_281594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 47)))
def hex_281594 : String := "444041434244070507424407400507074308424408404105084143080708084107430807D5"
theorem cover_281594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_281594)
  decide +kernel
#print axioms cover_281594

def state_281633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 94)))
def hex_281633 : String := "4006434142060742094405400605410606"
theorem cover_281633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_281633)
  decide +kernel
#print axioms cover_281633

def state_281650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 95)))
def hex_281650 : String := "404341060606434142084440060708424406084440434106060643414206070941060640434106060643410842084440090908084106420606"
theorem cover_281650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_281650)
  decide +kernel
#print axioms cover_281650
end Mub6.Numerical.CircleFullPrototype.Forest
