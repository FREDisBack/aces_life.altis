
disableSerialization;
CLAY_RadioDialog = createDialog "CLAY_CarRadio_RadioDlg";


If (CLAY_RadioShowTooltips) Then
{
	_display = findDisplay 666;

	_control = _display displayCtrl 603;
	_control ctrlSetTooltip "Увеличить громкость";
	_control ctrlCommit 0;

	_control = _display displayCtrl 604;
	_control ctrlSetTooltip "Уменьшить громкость";
	_control ctrlCommit 0;

	_control = _display displayCtrl 615;
	_control ctrlSetTooltip "Предыдущий трек";
	_control ctrlCommit 0;

	_control = _display displayCtrl 616;
	_control ctrlSetTooltip "Следующий трек";
	_control ctrlCommit 0;

	_control = _display displayCtrl 617;
	_control ctrlSetTooltip "Следующий плейлист";
	_control ctrlCommit 0;

	_control = _display displayCtrl 618;
	_control ctrlSetTooltip "Предыдущий плейлист";
	_control ctrlCommit 0;

	_control = _display displayCtrl 619;
	_control ctrlSetTooltip "Закрыть";
	_control ctrlCommit 0;

	_control = _display displayCtrl 620;
	_control ctrlSetTooltip "Открыть редактор плейлистов";
	_control ctrlCommit 0;

	_control = _display displayCtrl 621;
	_control ctrlSetTooltip "Повтор ВКЛ/ВЫКЛ";
	_control ctrlCommit 0;

	_control = _display displayCtrl 622;
	_control ctrlSetTooltip "Случайный порядок ВКЛ/ВЫКЛ";
	_control ctrlCommit 0;

	_control = _display displayCtrl 623;
	_control ctrlSetTooltip "Сменить цвет кнопок";
	_control ctrlCommit 0;

	_control = _display displayCtrl 624;
	_control ctrlSetTooltip "Сменить цвет дисплея";
	_control ctrlCommit 0;

	_control = _display displayCtrl 625;
	_control ctrlSetTooltip "Сменить цвет фона";
	_control ctrlCommit 0;

	_control = _display displayCtrl 626;
	_control ctrlSetTooltip "Играть/Пауза";
	_control ctrlCommit 0;

	_control = _display displayCtrl 634;
	_control ctrlSetTooltip "Добавить выбранный трек";
	_control ctrlCommit 0;

	_control = _display displayCtrl 635;
	_control ctrlSetTooltip "Добавить все треки";
	_control ctrlCommit 0;

	_control = _display displayCtrl 636;
	_control ctrlSetTooltip "Убрать выбранный трек";
	_control ctrlCommit 0;

	_control = _display displayCtrl 637;
	_control ctrlSetTooltip "Убрать все треки";
	_control ctrlCommit 0;

	_control = _display displayCtrl 640;
	_control ctrlSetTooltip "Восстановить определенный пользователем плейлист";
	_control ctrlCommit 0;
};


If (CLAY_RadioPlaying) Then
{
	_title = (CLAY_RadioPlayList select CLAY_RadioTrack) select 1;
	ctrlSetText [610, _title];
	ctrlSetText [626, "||"];
}
Else
{
	playMusic "";
};

switch (CLAY_RadioSrc) do
{
	case 1:
	{
		CLAY_RadioPlayList = CLAY_RadioGameMusic;
		ctrlSetText [611, "Life Music"];
	};
	case 2:
	{
		CLAY_RadioPlayList = CLAY_RadioGameMusicOA;
		ctrlSetText [611, "Life Music 2"];
	};
	case 3:
	{
		If (isNil "CLAY_RadioAddMusic") Then
		{
			CLAY_RadioPlayList = [];
		}
		Else
		{
			CLAY_RadioPlayList = CLAY_RadioAddMusic;
		};
		ctrlSetText [611, "Пользов."];
	};
	case 4:
	{
		If (isNil "CLAY_RadioAddMusic") Then
		{
			CLAY_RadioPlayList = CLAY_RadioGameMusic + CLAY_RadioGameMusicOA;
		}
		Else
		{
			CLAY_RadioPlayList = CLAY_RadioGameMusic + CLAY_RadioGameMusicOA + CLAY_RadioAddMusic;
		};
		ctrlSetText [611, "Вся музыка"];
	};
	case 5:
	{
		CLAY_RadioPlayList = CLAY_RadioCustomMusic;
		ctrlSetText [611, "Пользов."];
	};
};

If (CLAY_RadioRepeat) Then
{
	ctrlSetText [612, "Повтор"];
};

If (CLAY_RadioRandom) Then
{
	ctrlSetText [613, "Случайно"];
};

CLAY_RadioKeyColor = CLAY_RadioKeyColor - 1;
["kCol"] execVM "CLAY_CarRadio\scripts\settings.sqf";

CLAY_RadioDisplay = CLAY_RadioDisplay - 1;
["dCol"] execVM "CLAY_CarRadio\scripts\settings.sqf";

If (CLAY_RadioColor == "Silver") Then
{
	_control = (findDisplay 666) displayCtrl 600;
	_control ctrlSetBackgroundColor [0.8,0.8,0.8,1];
	_control ctrlCommit 0;
	_control = (findDisplay 666) displayCtrl 601;
	_control ctrlSetTextColor [0,0,0,1];
	_control ctrlCommit 0;
};

CLAY_RadioVol = CLAY_RadioVol - 0.05;
CLAY_RadioVolStep = CLAY_RadioVolStep - 1;
["volUp"] execVM "CLAY_CarRadio\scripts\settings.sqf";
