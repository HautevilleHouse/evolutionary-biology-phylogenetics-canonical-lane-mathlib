import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreeBuildingPackage where
  sequenceData : Type u
  distanceMatrix : Type v
  treeTopology : Type w
  optimalityCriterion : Prop
  branchLengthsEstimated : Prop
  bootstrappingPerformed : Prop

structure PhylogeneticTreeBuildingEvidence (P : PhylogeneticTreeBuildingPackage) where
  optimalityCriterionClosed : P.optimalityCriterion
  branchLengthsEstimatedClosed : P.branchLengthsEstimated
  bootstrappingPerformedClosed : P.bootstrappingPerformed

def PhylogeneticTreeBuildingClosed (P : PhylogeneticTreeBuildingPackage) : Prop :=
  P.optimalityCriterion ∧ P.branchLengthsEstimated ∧ P.bootstrappingPerformed

theorem phylogenetic_tree_building_closed_from_evidence
    (P : PhylogeneticTreeBuildingPackage) (E : PhylogeneticTreeBuildingEvidence P) :
    PhylogeneticTreeBuildingClosed P := by
  exact And.intro E.optimalityCriterionClosed
    (And.intro E.branchLengthsEstimatedClosed E.bootstrappingPerformedClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse