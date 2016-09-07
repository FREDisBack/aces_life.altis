class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class initZeus {};
		//class welcomeNotification {};
		
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminTeleport {};
		class adminTpHere {};
		class adminDebugCon {};
		class adminGodMode {};
		class adminFreeze {};
		class adminMarkers {};
	};

	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
		class medicSiren2 {};
		class medShowLicense {};
		class medicMenu {};
		class medicSend {};
		class medicStatus {};
		class DeathTimer {};
	};
	
	class Actions
	{
		file = "core\actions";
		class craftAction {};
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class gather {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupItem1 {};		
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class drugtestAction {};
		class extinguishJoint {};
		class processUran {};
		class surrender {};
		class robShops {};
		class robsmartphoneAction {};
		class processMultipleItems {};
		class copShowLicense{};
		class copLicenseShown {};
		class civShowLicense{};
		class skyDive {};
		class usetobacco {};
		class packupbarriere {};  // Барьер
		class packuplicht {};   // Огни для копов
		class packuppylone {};  // Конус
		class makeHimBlind {};
		class makeHimUnBlind {};
		class stopEscortingAction {};		
	};
	
	class Paintball
	{
		file = "core\paintball";
		class pb_response {};
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
		class HouseAlarmOff {};
		class housewarn {};
	};
	class ALGLackieren
	{
		file = "core\lackieren";
		
		class RepaintMenu;
		class Repaintcolor;
		class RepaintVehicle;		
	};
	class Config
	{
		file = "core\config";
		class craftCfg {};
		class itemIcon {};
		class updateClothing {};
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
		class seizeCfg {};
		class resourceCfg {};
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_adf {};
		class clothing_dive {};
		class clothing_kart {};
		class clothing_donator {};
		class clothing_aan {};
		class clothing_medic {};
		
	};
	
	
	class Player_Menu
	{
		file = "core\pmenu";
		class craft {};
		class craft_update {};
		class craft_updateFilter {};
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class wantedadd2 {};
		class wanted2 {};
		class AAN {};
		class cellphone {};
		class smartphone {};
        class newMsg {};
        class showMsg {};
	};
     class Market
    {
        file = "core\market";
        class openMarketView;
        class refreshMarketView;
        class marketShortView;
	class marketBuy;
	class marketSell;
        class marketGetBuyPrice;
        class marketGetSellPrice;
	class marketconfiguration;
	class marketReset;
	class marketChange;
        class marketGetRow;
        class marketGetPriceRow;
        class marketSetPriceRow;
    };
	
	class Functions
	{
		file = "core\functions";
		class vehicleRotate {}; 
		class dialogOnUnloadVehicles {};
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		//class actionPickup {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class hilfe {};
		class berufe {};
		class berufe2 {};
		class teamberufe {};
		class fatigueReset {};
		class random {};
		class randomRound {};
		class globalSound {};
		class globalSoundClient {};
		class schutzSirene {};
		class emptyFuel {};
		class addsubstract {};
		class slingloadon {};
		class slingloadoff {};
		class autoSave {};
		class stealVehicle {};
		class ryn_message {};
		class getOutW {};
		class blinded {};
		class xString {};
		class onPlayerDisconnect {};		
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class say3D {};
		class say2D {};
	};
	
	class Interactionmenus
	{
		file = "core\interactionmenus";
		
		class vInteraction_cop {};
		class vInteraction_civ {};
		class HInteraction_civ {};
		class HInteraction_cop {};
	
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class jailHungry {};
		class tazed {};
		class civLoadout {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civInteractionMenu {};
		class freezePlayer {};
		class handleDowned {};
		
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
		class trackMarkers {};
		class refuelVehicle {};
		class fuelManager {}; // реалистичная затраты топлива
	};
	
	class ASF
	{
		file = "core\ASF";
		class ASFMarkers {};
		class ASFLoadout {};
		class ASFShowLicense {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class copLoadout {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copOpener {};
		class copSiren2 {};
		class seizePlayerWeapon {};
		class seizePlayerWeaponAction {};
		class seizeObjects {};
		class copEnter {};
		class ticketPaid {};
		class showArrestDialog {}; 
		class arrestDialog_Arrest {};
		class radarCam {};
		
	};
	
	class Delivery
	{
		file = "core\delivery";
		class subCargoDeliver {};
		class getCargoDeliver {};		
	};
	
	class emp
	{
		file = "core\emp";
		class openEmpMenu {};
		class isEmpOperator {};
		class scanVehicles {};
		class warnVehicle {};
		class empVehicle {};
		class vehicleWarned {};
		class vehicleEmpd {};
	};
	class Groups
	{
		file = "core\groups";
		class createGroup {};
		class groupBrowser {};
		class groupManagement {};
		class groupMenu {};
		class joinGroup {};
		class kickGroup {};
		class leaveGroup {};
		class setGroupLeader {};
		class lockGroup {};
		class unlockGroup {};
		class clientGroupLeader {};
		class clientGroupKick {};
	};
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
		class gangMarkers {};
	};
	
	class Shops
	{
		file = "core\shops";
		class ColorVehicles {};
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
		class licenses {};
		class slotmachine {};
		class slotSpin {};
	};
	
	class Items
	{
		file = "core\items";
		class lockpick {};
		class handcuffkey {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class tracker {};
		class useAlkohol {};
		class useHeroin {};
		class useKokain {};
		class useKokain2{};
		class useMarihuana {};
		class usePbrau {};
		class useSpirituosen {};
		class weedSmoke {};
		class usePkugel {};
		class speedBomb {};
		class barriere {}; // Барьер
		class licht {}; // Освещение
		class pylone {}; // Конус
	};
	
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class calldialog {};
		class sendChannel {};
		class pickupItems {};		
		class InsureCar{};
	};
		class Cam
	{
	   file ="core";
	   class IntroCam {};
	};
};



