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
def state_46653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 37) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
def hex_46653 : String := "44434041050A410744070A40054105444207050505"
theorem cover_46653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_46653)
  decide +kernel
#print axioms cover_46653

def state_46675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_46675 : String := "41400A42060A06"
theorem cover_46675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_46675)
  decide +kernel
#print axioms cover_46675

def state_46684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_46684 : String := "4206440A05"
theorem cover_46684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_46684)
  decide +kernel
#print axioms cover_46684

def state_46690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
def hex_46690 : String := "4443064140420644060642064409430609064306414006420644060506"
theorem cover_46690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_46690)
  decide +kernel
#print axioms cover_46690

def state_46720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 40)))
def hex_46720 : String := "430A4140440A054442430A080A42434140054407050A414005440905400A440842090505400A440A42430641400644080A060A"
theorem cover_46720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_46720)
  decide +kernel
#print axioms cover_46720

def state_46771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 41)))
def hex_46771 : String := "4341400542440A05050A4105400542444306414005420605060505"
theorem cover_46771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_46771)
  decide +kernel
#print axioms cover_46771

def state_46798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_46798 : String := "4042060A4206440A430641400642060A06"
theorem cover_46798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_46798)
  decide +kernel
#print axioms cover_46798

def state_46817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_46817 : String := "4041084244070844070807"
theorem cover_46817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_46817)
  decide +kernel
#print axioms cover_46817

def state_46830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 36) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_46830 : String := "42440708440705"
theorem cover_46830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_46830)
  decide +kernel
#print axioms cover_46830

def state_46839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 40)))
def hex_46839 : String := "430740414207074209440743070907"
theorem cover_46839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_46839)
  decide +kernel
#print axioms cover_46839

def state_46854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 41)))
def hex_46854 : String := "430840414208054244430809084443404105420605084041054209054108420944090505410842084443074041074208080708"
theorem cover_46854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_46854)
  decide +kernel
#print axioms cover_46854
end Mub6.Numerical.CircleFullPrototype.Forest
