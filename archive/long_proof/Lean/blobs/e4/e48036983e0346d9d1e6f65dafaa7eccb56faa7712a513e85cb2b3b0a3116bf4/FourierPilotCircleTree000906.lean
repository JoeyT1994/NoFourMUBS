import FourierPilotCircleTree000907
import FourierPilotCircleTree000908
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000906
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000907.state FourierPilotCircleTree000908.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000907.covered FourierPilotCircleTree000908.covered
#print axioms covered
end FourierPilotCircleTree000906
