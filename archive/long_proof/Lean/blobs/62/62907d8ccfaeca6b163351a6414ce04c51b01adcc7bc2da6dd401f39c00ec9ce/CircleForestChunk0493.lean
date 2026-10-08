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
def state_279723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_279723 : String := "444143074007080841430544400505054344080544404206084241430506080840420544410543054205050542054441050805"
theorem cover_279723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_279723)
  decide +kernel
#print axioms cover_279723

def state_279774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_279774 : String := "4441400A4243440606060A0A4144400642060740064205430506444006420607400642064344410640060A4105404205430506420543050606"
theorem cover_279774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_279774)
  decide +kernel
#print axioms cover_279774

def state_279831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_279831 : String := "43440741424305440505054243084407404408050808440841424407070742440740434407410742434044050505060706434407090707"
theorem cover_279831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 55) (hex := hex_279831)
  decide +kernel
#print axioms cover_279831

def state_279889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_279889 : String := "08"
theorem cover_279889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_279889)
  decide +kernel
#print axioms cover_279889

def state_279891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
def hex_279891 : String := "4408404105420508410508"
theorem cover_279891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_279891)
  decide +kernel
#print axioms cover_279891

def state_279903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
def hex_279903 : String := "4041420A080A08"
theorem cover_279903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_279903)
  decide +kernel
#print axioms cover_279903

def state_279911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_279911 : String := "41424443410507064305064408430541420505420740440807084207440A430707"
theorem cover_279911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_279911)
  decide +kernel
#print axioms cover_279911

def state_279944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_279944 : String := "414244430840060A4305400505440843054041050A41050842074408430807"
theorem cover_279944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_279944)
  decide +kernel
#print axioms cover_279944
end Mub6.Numerical.CircleFullPrototype.Forest
