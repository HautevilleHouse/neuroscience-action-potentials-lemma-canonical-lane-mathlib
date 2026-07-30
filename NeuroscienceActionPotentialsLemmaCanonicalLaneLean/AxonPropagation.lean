import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure AxonPropagationPackage where
  cableEquation : Type u
  conductionVelocity : Type v
  myelination : Type w
  saltatoryConduction : Prop
  passiveDecay : Prop
  actionPotentialInitiation : Prop

structure AxonPropagationEvidence (A : AxonPropagationPackage) where
  saltatoryConductionClosed : A.saltatoryConduction
  passiveDecayClosed : A.passiveDecay
  actionPotentialInitiationClosed : A.actionPotentialInitiation

def AxonPropagationClosed (A : AxonPropagationPackage) : Prop :=
  A.saltatoryConduction ∧ A.passiveDecay ∧ A.actionPotentialInitiation

theorem axon_propagation_closed_from_evidence (A : AxonPropagationPackage)
    (E : AxonPropagationEvidence A) : AxonPropagationClosed A := by
  exact And.intro E.saltatoryConductionClosed
    (And.intro E.passiveDecayClosed E.actionPotentialInitiationClosed)

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse