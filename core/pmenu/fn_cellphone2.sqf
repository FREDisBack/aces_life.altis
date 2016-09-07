/*
File: fn_cellphone2.sqf
Author: Timo
 
Description:
With no radio cant use Cellphone
*/
 
 
if("ItemRadio" in assignedItems player) then {
if(!(player getVariable "restrained") && !(animationState player in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"])) then {
createDialog "Life_cell_phone"; 
}else{
hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Сотовый телефон</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Ваш сотовый телефон нельзя использовать, если у вас отняли ил вы связаны. </t><br/>"];
}
}else{
 
hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Kein Smartphone</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Вам нужен сотовый телефон для отправки SMS. Купить новый вы можете в любом универмаге.</t><br/>"];
};