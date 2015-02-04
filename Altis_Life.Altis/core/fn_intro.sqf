/*
	File: IntroCam
	Author: SteveMcGarrett
*/
private ["_camera"];

//intro move
showCinemaBorder true;
camUseNVG false;

_camera = "camera" camCreate [(position player select 0) - 300, (position player select 1),(position player select 2)+ 200];
_camera camSetTarget [(position player select 0) - 300,(position player select 1) + 300,(position player select 2) + 150];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 1.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};

_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 4;

waitUntil {camCommitted _camera};

_camera cameraEffect ["terminate","back"];
camDestroy _camera;
life_firstSpawn = false;