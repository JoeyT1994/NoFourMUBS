import FourierPilotCircleTree001031
import FourierPilotCircleTree001048
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001030
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![19, 19, 31, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001031.state FourierPilotCircleTree001048.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001031.covered FourierPilotCircleTree001048.covered
#print axioms covered
end FourierPilotCircleTree001030
