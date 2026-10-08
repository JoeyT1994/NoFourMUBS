import FourierPilotCircleTree003814
import FourierPilotCircleTree003863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003813
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003814.state FourierPilotCircleTree003863.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003814.covered FourierPilotCircleTree003863.covered
#print axioms covered
end FourierPilotCircleTree003813
