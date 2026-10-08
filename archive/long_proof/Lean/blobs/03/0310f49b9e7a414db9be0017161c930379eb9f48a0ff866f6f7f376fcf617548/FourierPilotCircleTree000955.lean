import FourierPilotCircleTree000956
import FourierPilotCircleTree000967
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000955
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![50, 49, 54, 43, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000956.state FourierPilotCircleTree000967.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000956.covered FourierPilotCircleTree000967.covered
#print axioms covered
end FourierPilotCircleTree000955
