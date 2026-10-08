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
def state_2262462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2262462 : String := "4440434207094241BE0709434241BE440707094241BE440906410909404307420609434241444006060606414409090942064144090606"
theorem cover_2262462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2262462)
  decide +kernel
#print axioms cover_2262462

def state_2262517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2262517 : String := "4144400943054241050905400943424105090542410A0909440909"
theorem cover_2262517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2262517)
  decide +kernel
#print axioms cover_2262517

def state_2262544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
def hex_2262544 : String := "44400843424144080707080840074342070942414440074307420708070709"
theorem cover_2262544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2262544)
  decide +kernel
#print axioms cover_2262544

def state_2262575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2262575 : String := "434105094144094009424305090509"
theorem cover_2262575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2262575)
  decide +kernel
#print axioms cover_2262575

def state_2262590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
def hex_2262590 : String := "44084007424307414408070708"
theorem cover_2262590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2262590)
  decide +kernel
#print axioms cover_2262590

def state_2262605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 26)))
def hex_2262605 : String := "08"
theorem cover_2262605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2262605)
  decide +kernel
#print axioms cover_2262605

def state_2262607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
def hex_2262607 : String := "4342414408404309084342414409070709420508080842414408050508"
theorem cover_2262607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2262607)
  decide +kernel
#print axioms cover_2262607

def state_2262641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
def hex_2262641 : String := "43424144084008434241440609080808080808"
theorem cover_2262641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2262641)
  decide +kernel
#print axioms cover_2262641

def state_2262662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 54)))
def hex_2262662 : String := "414440084342BE0607404342BE4109084241440840430A080A08084342BE41074008074241074044084308084407070744084008434241BE080808"
theorem cover_2262662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2262662)
  decide +kernel
#print axioms cover_2262662
end Mub6.Numerical.CircleFullD0.Forest
