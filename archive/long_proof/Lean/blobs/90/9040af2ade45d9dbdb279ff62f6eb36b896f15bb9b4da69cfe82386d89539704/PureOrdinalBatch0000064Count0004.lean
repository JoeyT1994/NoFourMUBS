import SeedPhaseTapeComposition

/- Untrusted bounded source proposal from an exact raw-forest interval.
Every leaf and each full 32-child split must pass the Lean kernel.
No full forest, physical sector, or global theorem is claimed. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.PureOrdinalBatch0000064Count0004

def cell_0000064 : CellCode := ordinalCellCode 64
def cell_0000065 : CellCode := ordinalCellCode 65
def cell_0000066 : CellCode := ordinalCellCode 66
def cell_0000067 : CellCode := ordinalCellCode 67

def tags_0000067 : List WitnessTag := [.midpoint 0]
def tags_0000066 : List WitnessTag := [.midpoint 0]
def tags_0000065 : List WitnessTag := [.midpoint 0]
def tags_0000064 : List WitnessTag := [.midpoint 0]

theorem checked_0000067 : checkWitnessTape [cell_0000067] tags_0000067 = true := by
  decide +kernel
#print axioms checked_0000067

theorem checked_0000066 : checkWitnessTape [cell_0000066] tags_0000066 = true := by
  decide +kernel
#print axioms checked_0000066

theorem checked_0000065 : checkWitnessTape [cell_0000065] tags_0000065 = true := by
  decide +kernel
#print axioms checked_0000065

theorem checked_0000064 : checkWitnessTape [cell_0000064] tags_0000064 = true := by
  decide +kernel
#print axioms checked_0000064

theorem root_0000064_erased : eraseTape tags_0000064 = [0] := by
  decide +kernel
#print axioms root_0000064_erased

theorem root_0000064_checked : checkWitnessTape [ordinalCellCode 64] tags_0000064 = true := checked_0000064
#print axioms root_0000064_checked

theorem root_0000065_erased : eraseTape tags_0000065 = [0] := by
  decide +kernel
#print axioms root_0000065_erased

theorem root_0000065_checked : checkWitnessTape [ordinalCellCode 65] tags_0000065 = true := checked_0000065
#print axioms root_0000065_checked

theorem root_0000066_erased : eraseTape tags_0000066 = [0] := by
  decide +kernel
#print axioms root_0000066_erased

theorem root_0000066_checked : checkWitnessTape [ordinalCellCode 66] tags_0000066 = true := checked_0000066
#print axioms root_0000066_checked

theorem root_0000067_erased : eraseTape tags_0000067 = [0] := by
  decide +kernel
#print axioms root_0000067_erased

theorem root_0000067_checked : checkWitnessTape [ordinalCellCode 67] tags_0000067 = true := checked_0000067
#print axioms root_0000067_checked

def pending : List CellCode := (List.range' 64 4).map ordinalCellCode
def tags : List WitnessTag := ((tags_0000064++tags_0000065)++(tags_0000066++tags_0000067))

theorem checked : checkWitnessTape pending tags = true := by
  change checkWitnessTape (([cell_0000064]++[cell_0000065])++([cell_0000066]++[cell_0000067])) ((tags_0000064++tags_0000065)++(tags_0000066++tags_0000067)) = true
  exact (checkWitnessTape_append ([cell_0000064]++[cell_0000065]) ([cell_0000066]++[cell_0000067]) (tags_0000064++tags_0000065) (tags_0000066++tags_0000067) (checkWitnessTape_append [cell_0000064] [cell_0000065] tags_0000064 tags_0000065 checked_0000064 checked_0000065) (checkWitnessTape_append [cell_0000066] [cell_0000067] tags_0000066 tags_0000067 checked_0000066 checked_0000067))
#print axioms checked

end Seed0024PhaseCore20261007.PureOrdinalBatch0000064Count0004
