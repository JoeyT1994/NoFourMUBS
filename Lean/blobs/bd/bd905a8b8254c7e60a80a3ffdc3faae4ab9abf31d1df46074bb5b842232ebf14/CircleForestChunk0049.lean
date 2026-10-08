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
def state_11585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
def hex_11585 : String := "4206444308410644404206080606430606"
theorem cover_11585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_11585)
  decide +kernel
#print axioms cover_11585

def state_11603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 9)))
def hex_11603 : String := "44430942064440410609060609"
theorem cover_11603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_11603)
  decide +kernel
#print axioms cover_11603

def state_11618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 18)))
def hex_11618 : String := "4405400905"
theorem cover_11618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_11618)
  decide +kernel
#print axioms cover_11618

def state_11624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
def hex_11624 : String := "40414243400808404441064206430506060643054042444108054106430540440506054405084208054209054142060505"
theorem cover_11624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_11624)
  decide +kernel
#print axioms cover_11624

def state_11673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 37)))
def hex_11673 : String := "404142430606430844404241060908084042060706094142060809"
theorem cover_11673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_11673)
  decide +kernel
#print axioms cover_11673

def state_11700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 19)))
def hex_11700 : String := "4309440909"
theorem cover_11700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_11700)
  decide +kernel
#print axioms cover_11700

def state_11705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
def hex_11705 : String := "410642064443054044054106050509"
theorem cover_11705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_11705)
  decide +kernel
#print axioms cover_11705

def state_11723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_11723 : String := "420643440941064340420609060609"
theorem cover_11723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_11723)
  decide +kernel
#print axioms cover_11723

def state_11739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
def hex_11739 : String := "434407420643404106070606440606"
theorem cover_11739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_11739)
  decide +kernel
#print axioms cover_11739

def state_11756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 16)))
def hex_11756 : String := "4305400A05"
theorem cover_11756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_11756)
  decide +kernel
#print axioms cover_11756

def state_11762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
def hex_11762 : String := "4041424440070740434106420644050606060A424405404143420705420644054043050605430507410705054142060505"
theorem cover_11762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_11762)
  decide +kernel
#print axioms cover_11762

def state_11811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 17)))
def hex_11811 : String := "4041424406060A42440743404142060A070740410607060A410A420705"
theorem cover_11811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_11811)
  decide +kernel
#print axioms cover_11811

def state_11840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 8)))
def hex_11840 : String := "440A430A0A"
theorem cover_11840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_11840)
  decide +kernel
#print axioms cover_11840
end Mub6.Numerical.CircleFullPrototype.Forest
