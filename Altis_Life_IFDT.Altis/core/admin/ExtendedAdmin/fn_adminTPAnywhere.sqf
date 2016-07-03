#include <macro.h>
if(__GETC__(life_adminlevel) < 2) exitWith {hint "Your admin level is not high enough";};
cutText ["Click somewhere on the map to move there", "PLAIN"];
onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";