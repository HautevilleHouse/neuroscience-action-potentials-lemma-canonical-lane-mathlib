import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure ActionPotentialGenerationPackage {H : HodgkinHuxleyModelPackage} where
  thresholdPotential : ℝ
  depolarizationPhase : Prop
  repolarizationPhase : Prop
  afterHyperpolarization : Prop
  spikeAmplitude : ℝ
  spikeDuration : ℝ
  generationMechanismDefined : Prop

structure ActionPotentialGenerationEvidence {H : HodgkinHuxleyModelPackage} (A : ActionPotentialGenerationPackage H) where
  generationMechanismDefinedClosed : A.generationMechanismDefined

def ActionPotentialGenerationClosed {H : HodgkinHuxleyModelPackage} (A : ActionPotentialGenerationPackage H) : Prop :=
  A.generationMechanismDefinedClosed

theorem action_potential_generation_closed_from_evidence {H : HodgkinHuxleyModelPackage}
    (A : ActionPotentialGenerationPackage H) (E : ActionPotentialGenerationEvidence A) :
    ActionPotentialGenerationClosed A := by
  exact E.generationMechanismDefinedClosed

end HautevilleHouse
end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
