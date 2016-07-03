_curator = _this select 0;
_placed = _this select 1;

{    _x addCuratorEditableObjects [(units _placed),true]
} forEach (allCurators - [_curator]);

nil  