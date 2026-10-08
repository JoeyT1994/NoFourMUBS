import FourierPilotCircleTree002030
import FourierPilotCircleTree002031
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002029
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![37, 29, 16, 45, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002030.state FourierPilotCircleTree002031.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002030.covered FourierPilotCircleTree002031.covered
#print axioms covered
end FourierPilotCircleTree002029
