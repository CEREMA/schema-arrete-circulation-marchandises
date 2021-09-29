29/09/21

Version 3.2 : https://docs.datex2.eu/_static/umlmodel/v3.2/index.htm

Noeud TrafficRegulation

D2PayLoad > TrafficRegulation

## TrafficRegulation

### Enumerations
* : présent dans le schéma, 0 : non vu

- * AccessConditionTypeEnum : accès ou pas
- AccessRestrictionTypeEnum
- AmbientWarningTypeEnum
- BendOfPriorityRoadTypeEnum
- DirectionRestrictionTypeEnum
- DriverCharacteristicsTypeEnum
- LicenseCharacteristicsTypeEnum
- NonVehicularRoadUserTypeEnum
- PriorityRuleTypeEnum
- ReasonForRegulationTypeEnum
- RoadOrCarriageWayOrLaneLayoutType
- RoadTypeTypeEnum
- RoadWarningTypeEnum
StandingOrParkingRestrictionTypeEnum
- SteepHillDirectionTypeEnum
- TrafficAheadTypeEnum
- TrafficRegulationInstallerTypeEnum
- TrafficRegulationOrderStatusEnum
- TrafficRegulationStatusEnum
- UnitOfSpeedEnum

### TrafficRegulation
- AccessCondition : accède ou pas
- ConditionSet
- DriverCondition : Integer, âge du conducteur ageOfDriver
- LocationCondition
- NonVehicularRoaduserCondition : cattle, pedestrian, horses
- OccupantCondition : besoin du permis ou pas, nb d'occupants dans la voiture
- PermitCondition : où avoir le permis, durée du permis
- PermitSubjectToFee : montant, durée maximale d'accès, durée minimale jusqu'à la prochaine entrée
- RoadCondition : motorway, expressway, etc...
- * TrafficRegulation : active, beingSetUp, beingShutDown, scheduled
- ValidityCondition : active, planned, suspended, definedByValidityTimeSpec

> Différence avec TrafficRegulation ?

- * VehicleCondition : vehicleCharacteristics

### TrafficRegulationOrder
- * ActivatedRegulation : acteur. COLL_NOM
- * AdHocTrafficRegulation : acteur sans regulation order
- * AdHocTrafficRegulations
- AutomatedTrafficManagement : TrafficRegulation
- LegalBasis : date, name, version. ARR_DATE, ARR_REF
- * PlannedDynamicTrafficRegulation : l'autorité. COLL_NOM
- * PlannedDynamicTrafficRegulations
- * TrafficRegulationOrder : description : ARR_OBJET, issuingauthority : COLL_NOM, reason : ARR_CONSIDERANT, regulationId : ARR_ARTICLE, ARR_SS_ARTICLE, status (?)
- ? TrafficRegulationsByAuthorisedActors
- ? TrafficRegulationsFromCompetentAuthorities
- TrafficSignals : signalPhaseAndTimingReference

### TypeOfRegulations
- AccessRestriction : accessRestrictionTypeEnum noEntry, noPassingWithoutStopping, noUseOfAudibleWarningDevices, NonVehicularRoadUserTypeEnum
- 0 AlternatedRoadOrCarriagewayOrLaneLayout
- DirectionRestriction :
	- directionRestrictionType : keepLeft,...
	- respectBicycle
	- respectMotorisedPersonalTransportDevices
	- respectPedestrian
- 0 MandatoryRoadOrCarriagewayOrLaneUSage
- MinimumDistanceRestriction : distance min. entre véhicules
- 0 OvertakingBan
- PriorityRule :
	- priorityRuleType : bendOfPriorityRoadFromLeft, etc...
	- respectBicycle
- 0 Rerouting
- RushHourLaneRestriction : clearRushHourLane / rushHourLaneOpen
- Speed : walkingSpeed, weatherRelatedRoadConditionType

> walking ?

- SpeedLimit
- * StandingOrParkingRestriction :
	- paidParking
	- permittedParkingTime
	- permittedStandingTime
	- standingOrParkingRestrictionType
	- vergeOrFootwayAlso
	- vergeOrFootwayOnly
- TypeOfRegulation : TrafficRegulation

### Warning
- 0 AmbienWarnings
- 0 RoadWarning
- 0 SteepHill
- 0 TrafficAhead

## Validity
- * NamedArea : EMPRISE_DESIGNATION

### Time
- * OverAllPeriod : overallStartTime, overallEndTime : PERIODE_JH
- * Period : startOfPeriod, endOfPeriod, periodName : PERIODE_JH
- * TimePeriodOfDay
- 
### Days
- * SpecialDay
- CalendarWeekWithinMonth
- InstanceDayWithinMonth
- * DayWeekMonth : PERIODE_JH
- * PublicHoliday : PERIODE_JH

## VehicleCharacteristics

### HeightCharacteristics
vehicleHeight : VEH_HAUTEUR

### WidthCharacteristics
vehicleWidth : VEH_LARGEUR

### LengthCharacteristics
vehicleLength : VEH_LONGUEUR

### VehicleCharacteristics
- fuelType : VEH_MOTORS
	- all
	- battery
	- biodiesel
	- diesel
	- dieselBatteryHybrid
	- ethanol
	- hydrogen
	- liquidGas
	- lpg : liquid petroleum gas
	- methane
	- petrol
	- petrol95Octane
	- petrol98Octane
	- petrolBatteryHybrid
	- petrolLeaded
	- petrolUnleaded
	- unknown
	- other
- loadType
- vehicleEquipment
- vehicleType : VEH_TYPE
	- agriculturalVehicle
	- * anyVehicle
	- articulatedBus
	- articulatedTrolleyBus
	- * bicycle
	- bus
	- car
	- caravan
	- * carOrLightVehicle
	- carWithCaravan
	- carWithTrailer
	- * constructionOrMaintenanceVehicle
	- fourWheelDrive
	- * heavyGoodsVehicle
	- * heavyGoodsVehicleWithTrailer
	- * heavyDutyTransporter
	- * heavyVehicle
	- ? highSidedVehicle
	- * lightCommercialVehicle
	- * largeCar
	- * largeGoodsVehicle
	- * lightCommercialVehicleWithTrailer
	- ? longHeavyLorry
	- ? lorry
	- metro
	- minibus
	- ? moped
	- * motorcycle
	- motorcycleWithSideCar
	- motorhome
	- motorscooter
	- passengerCar
	- smallCar
	- tanker
	- threeWheeledVehicle
	- trailer
	- tram
	- trolleyBus
	- * twoWheeledVehicle
	- van
	- vehicleWithCaravan
	- vehicleWithCatalyticConverter
	- vehicleWithoutCatalyticConverter
	- vehicleWithTrailer
	- withEvenNumberedRegistrationPlates
	- withOddNumberedRegistrationPlates
	- unknown
	- other
- vehicleUsage
	- agricultural
	- carSharing
	- * cityLogistics
	- * commercial
	- * emergencyServices
	- military
	- patrol
	- recoveryServices
	- * roadMaintenanceOrConstruction
	- * roadOperator
	- taxi
- yearOfFirstRegistration

## Validity

## Autres
- * DayEnum : PERIODE_JH

- InstanceOfDayEnum
- * MonthOfYearEnum : PERIODE_DEBUT, PERIODE_FIN
- * SpecialDayTypeEnum : dayBeforePublicHoliday,...


----
Voir aussi D2Payloads > Extension > UrbanExtensions

FuelType

VehicleUsage
VehicleType