---@diagnostic disable: undefined-global
-- Original Idea from OfficialyInsane with some help from OzDeaDMeaT

DCS = {
    DEBUG_TEXT_DELAY = 30,
    setErrorMessageBoxEnabled = false,

    proxy = {
        ["Airbase"] = Airbase,
        ["atmosphere"] = atmosphere,
        ["coalition"] = coalition,
        ["Controller"] = Controller,
        ["coord"] = coord,
        ["Group"] = Group,
        ["land"] = land,
        ["missionCommands"] = missionCommands,
        ["net"] = net,
        ["Object"] = Object,
        ["ScenaryObject"] = ScenaryObject,
        ["Spot"] = Spot,
        ["timer"] = timer,
        ["trigger"] = trigger,
        ["Unit"] = Unit,
        ["VoiceChat"] = VoiceChat,
        ["Warehouse"] = Warehouse,
        ["world"] = world,
    },

    -- TODO Need log function
    log = function(_message)
    end,

    -- TODO Need tableToString function
    tableToString = function(_table)
    end,

    Airbase = {
        getCallsign = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getCallsign();
            end)
         if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCountry = DCS.Object.getCountry,

        getUnit = function(_airbase,_UnitIndex)
            local _status, _response = pcall(function()
                return _airbase:getUnit(_UnitIndex or 1);
            end)
         if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getID = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getID();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCategoryEx = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getCategoryEx();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getParking = function(_airbase,_available)
            local _status, _response = pcall(function()
                return _airbase:getParking(_available or true);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getRunways = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getRunways();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getTechObjectPos = function(_airbase,_ObjectType)
            local _status, _response = pcall(function()
                return _airbase:getTechObjectPos(_ObjectType or "towers");
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getDispatcherTowerPos = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getDispatcherTowerPos();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getRadioSilentMode = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getRadioSilentMode();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setRadioSilentMode = function(_airbase,_silent)
            local _status, _response = pcall(function()
                return _airbase:setRadioSilentMode(_silent or false);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        autoCapture = function(_airbase,_setting)
            local _status, _response = pcall(function()
                return _airbase:autoCapture(_setting or true);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        autoCaptureIsOn = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:autoCaptureIsOn();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setCoalition = function(_airbase, _coalition)
            local _status, _response = pcall(function()
                return _airbase:setCoalition(_coalition or coalition.side.NEUTRAL);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getWarehouse = function(_airbase)
            local _status, _response = pcall(function()
                return _airbase:getWarehouse();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    atmosphere = {
        getWind = function(_vec3)
            local _status, _response = pcall(function()
                return atmosphere.getWind(_vec3);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getWindWithTurbulence = function(_vec3)
            local _status, _response = pcall(function()
                return atmosphere.getWindWithTurbulence(_vec3);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getTemperatureAndPressure = function(_vec3)
            local _status, _response = pcall(function()
                return atmosphere.getTemperatureAndPressure(_vec3);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    coalition = {
        addGroup = function(_countryid, _groupcategory,_groupdata)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].addGroup(_countryid, _groupcategory,_groupdata);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        addStaticObject = function(_countryid,_groupdata)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].addStaticObject(_countryid,_groupdata);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getGroups = function(_coalitionid, _groupcategory)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getGroups(_coalitionid, _groupcategory);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getStaticObjects = function(_coalitionid)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getStaticObjects(_coalitionid);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getAirbases = function(_coalitionid)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getAirbases(_coalitionid);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getPlayers = function(_coalitionid)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getPlayers(_coalitionid);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getServiceProviders = function(_coalitionid,_serviceprovider)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getServiceProviders(_coalitionid,_serviceprovider);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        addRefPoints = function(_coalitionid,_refpoint)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].addRefPoints(_coalitionid,_refpoint);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getRefPoints = function(_coalitionid)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].addRefPoints(_coalitionid);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getMainRefPoint = function(_coalitionid)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getMainRefPoint(_coalitionid);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getCountryCoalition = function(_countryid)
            local _status, _ = pcall(function()
                DCS.proxy["coalition"].getCountryCoalition(_countryid);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end
    },

    Controller = {
        setTask = function(_controller, _task)
            local _status, _ = pcall(function()
                _controller:setTask(_task);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        resetTask = function(_controller)
            local _status, _ = pcall(function()
                _controller:resetTask();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        pushTask = function(_controller, _task)
            local _status, _ = pcall(function()
                _controller:pushTask(_task);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        popTask = function(_controller)
            local _status, _ = pcall(function()
                _controller:popTask();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        hasTask = function(_controller)
            local _status, _response = pcall(function()
                return _controller:hasTask();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setCommand = function(_controller, _command)
            local _status, _ = pcall(function()
                _controller:setCommand(_command);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        setOption = function(_controller, _optionId, _optionValue)
            local _status, _ = pcall(function()
                _controller:setOption(_optionId, _optionValue);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        setOnOff = function(_controller, _value)
            local _status, _ = pcall(function()
                _controller:setOnOff(_value);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        setAltitude = function(_controller, _altitude, _keep, _altType)
            local _status, _ = pcall(function()
                _controller:setAltitude(_altitude, _keep, _altType);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        setSpeed = function(_controller, _speed, _keep)
            local _status, _ = pcall(function()
                _controller:setSpeed(_speed, _keep);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        knowTarget = function(_controller, _object, _type, _distance)
            local _status, _ = pcall(function()
                _controller:knowTarget(_object, _type, _distance);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        isTargetDetected = function(_controller, _target, ...)
            local _vararg = { ... };
            local _status, _response = pcall(function()
                return DCS.proxy["Controller"].isTargetDetected(_controller, _target, _vararg);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getDetectedTargets = function(_controller, ...)
            local _vararg = { ... };
            local _status, _response = pcall(function()
                return DCS.proxy["Controller"].getDetectedTargets(_controller, _vararg);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    coord = {
        LLtoLO = function(_latitude, _longitude ,_altitude)
            local _status, _ = pcall(function()
                DCS.proxy["coord"].LLtoLO(_latitude, _longitude ,_altitude);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        LOtoLL = function(_vec3)
            local _status, _ = pcall(function()
                DCS.proxy["coord"].LOtoLL(_vec3);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        LLtoMGRS = function(_latitude, _longitude)
            local _status, _ = pcall(function()
                DCS.proxy["coord"].LLtoMGRS(_latitude, _longitude);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        MGRStoLL = function(_mgrs)
            local _status, _ = pcall(function()
                DCS.proxy["coord"].MGRStoLL(_mgrs);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,


    },

    Group = {
        isExist = function(_group)
            local _status, _response = pcall(function()
                return _group:isExist();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        activate = function(_group)
            local _status, _ = pcall(function()
                _group:activate();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        destroy = function(_group)
            local _status, _ = pcall(function()
                _group:destroy();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getByName = function(_name)
            local _status, _response = pcall(function()
                return DCS.proxy["Group"].getByName(_name);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCategory = function(_group)
            local _status, _ = pcall(function()
                _group:getCategory();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getName = function(_group)
            local _status, _response = pcall(function()
                return _group:getName();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
            end
        end,

        getID = function(_group)
            local _status, _response = pcall(function()
                return _group:getID();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getUnit = function(_group, _unitIndex)
            local _status, _response = pcall(function()
                return _group:getUnit(_unitIndex);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
            end
        end,

        getUnits = function(_group)
            local _status, _response = pcall(function()
                return _group:getUnits();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getSize = function(_group)
            local _status, _response = pcall(function()
                return _group:getSize();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
            end
        end,

        getInitialSize = function(_group)
            local _status, _response = pcall(function()
                return _group:getInitialSize();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getController = function(_group)
            local _status, _response = pcall(function()
                return _group:getController();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        enableEmission = function(_group)
            local _status, _ = pcall(function()
                _group:enableEmission();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end
    },

    land = {
        getHeight = function(_vec2)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].getHeight(_vec2);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getSurfaceHeightWithSeabed = function(_vec2)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].getSurfaceHeightWithSeabed(_vec2);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getSurfaceType = function(_vec2)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].getSurfaceType(_vec2);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        isVisible = function(_origin, _destination)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].isVisible(_origin, _destination);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getIP = function(_origin, _direction, _distance)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].getIP(_origin, _direction, _distance);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        profile = function(_vec3_1, _vec3_2)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].profile(_vec3_1,_vec3_2);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getClosestPointOnRoads = function(_roadtype, _xcoord,_ycoord)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].getClosestPointOnRoads(_roadtype, _xcoord,_ycoord);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        findPathOnRoads = function(_roadtype, _xcoord,_ycoord, _xdest, _ydest)
            local _status, _response = pcall(function()
                return DCS.proxy["land"].findPathOnRoads(_roadtype, _xcoord,_ycoord, _xdest, _ydest);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,
    },

    missionCommands = {
        addCommand = function(_name, _path, _functiontorun, _arguments)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].addCommand(_name, _path, _functiontorun, _arguments);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        addSubMenu = function(_name, _path)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].addSubMenu(_name, _path);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeItem = function( _path)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].removeItem(_path);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        addCommandForCoalition = function(_coalition, _name, _path, _functiontorun, _arguments)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].addCommandForCoalition(_coalition, _name, _path, _functiontorun, _arguments);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        addSubMenuForCoalition = function(_coalition, _name, _path)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].addSubMenuForCoalition(_coalition, _name, _path);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeItemForCoalition = function(_coalition, _path)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].removeItemForCoalition(_coalition, _path);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        addCommandForGroup = function(_groupId, _name, _path, _functiontorun, _arguments)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].addCommandForGroup(_groupId, _name, _path, _functiontorun, _arguments);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        addSubMenuForGroup = function(_groupId, _name, _path)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].addSubMenuForGroup(_groupId, _name, _path);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeItemForGroup = function(_groupId, _path)
            local _status, _response = pcall(function()
                return DCS.proxy["missionCommands"].removeItemForGroup(_groupId, _path);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    net = {}, -- TODO net not started

    Object = {
        isExist = function(_object)
            local _status, _response = pcall(function()
                return _object:isExist();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        destroy = function(_object)
            local _status, _response = pcall(function()
                return _object:destroy();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCategory = function(_object)
            local _status, _response = pcall(function()
                return _object:getCategory();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCountry = function(_object)
            local _status, _response = pcall(function()
                return _object:getCountry();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getTypeName = function(_object)
            local _status, _response = pcall(function()
                return _object:getTypeName();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getDesc = function(_object)
            local _status, _response = pcall(function()
                return _object:getDesc();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        hasAttribute = function(_object, _attribute)
            local _status, _response = pcall(function()
                return _object:hasAttribute(_attribute);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getName = function(_object)
            local _status, _response = pcall(function()
                return _object:getName();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getPoint = function(_object)
            local _status, _response = pcall(function()
                return _object:getPoint();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getPosition = function(_object)
            local _status, _response = pcall(function()
                return _object:getPosition();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getVelocity = function(_object)
            local _status, _response = pcall(function()
                return _object:getVelocity();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        inAir = function(_object)
            local _status, _response = pcall(function()
                return _object:inAir();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    ScenaryObject = {}, -- TODO ScenaryObject not started

    Spot = {
        createLaser = function(_source, _localRef, _point, _laseCode)
            local _status, _response = pcall(function()
                return DCS.proxy["Spot"].createLaser(_source, _localRef, _point, _laseCode);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        createInfraRed = function(_source, _localRef, _point)
            local _status, _response = pcall(function()
                return DCS.proxy["Spot"].createInfraRed(_source, _localRef, _point);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        destroy = function(_spot)
            local _status, _ = pcall(function()
                _spot:destroy();
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getCategory = function(_spot)
            local _status, _response = pcall(function()
                return _spot:getCategory();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getPoint = function(_spot)
            local _status, _response = pcall(function()
                return _spot:getPoint();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setPoint = function(_spot, _vec3)
            local _status, _ = pcall(function()
                _spot:setPoint(_vec3);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getCode = function(_spot)
            local _status, _response = pcall(function()
                return DCS.proxy["Spot"].getCode(_spot);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setCode = function(_spot, _code)
            local _status, _ = pcall(function()
                _spot:setCode(_code);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end
    },

    StaticObject = {
        isExist = DCS.Object.isExist,

        getCountry = DCS.Object.getCountry,

        getCoalition =  function(_staticObject)
            local _status, _response = pcall(function()
                return DCS.proxy["StaticObject"].getCoalition(_name);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCargoDisplayName = function(_staticObject)
            local _status, _response = pcall(function()
                return _staticObject:getCargoDisplayName();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getDrawArgumentValue = function(_drawargumentvalue)
            local _status, _response = pcall(function()
                return DCS.proxy["StaticObject"].getDrawArgumentValue(_drawargumentvalue);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getByName = function(_name)
            local _status, _response = pcall(function()
                return DCS.proxy["StaticObject"].getByName(_name);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getDescByName = function(_type)
            local _status, _response = pcall(function()
                return DCS.proxy["StaticObject"].getDescByName(_type);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,
    },

    timer = {
        getTime = function()
            local _status, _response = pcall(function()
                return DCS.proxy["timer"].getTime();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getAbsTime = function()
            local _status, _response = pcall(function()
                return DCS.proxy["timer"].getAbsTime();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getTime0 = function()
            local _status, _response = pcall(function()
                return DCS.proxy["timer"].getTime0();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        scheduleFunction = function(_function,_functionarguments,_modeltime)
            local _status, _response = pcall(function()
                return DCS.proxy["timer"].scheduleFunction(_function,_functionarguments,_modeltime);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeFunction = function(_functionid)
            local _status, _response = pcall(function()
                return DCS.proxy["timer"].removeFunction(_functionid);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setFunctionTime = function(_functionid,_modeltime)
            local _status, _response = pcall(function()
                return DCS.proxy["timer"].setFunctionTime(_functionid,_modeltime);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    trigger = {}, -- TODO trigger not started

    Unit = {
        isActive = function(_unit)
            local _status, _response = pcall(function()
                return _unit:isActive();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getByName = function(_name)
            local _status, _response = pcall(function()
                return DCS.proxy["Unit"].getByName(_name);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getPlayerName = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getPlayerName();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getID = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getID();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getNumber = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getNumber();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getCategoryEx = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getCategoryEx();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getObjectID = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getObjectID();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getController = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getController();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getLife = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getLife();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getLife0 = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getLife0();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getFuel = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getFuel();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getAmmo = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getAmmo();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getSensors = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getSensors();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        hasSensors = function(_unit, _sensorType, _subcategory)
            local _status, _response = pcall(function()
                return _unit:hasSensors(_sensorType, _subcategory);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getRadar = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getRadar();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getDrawArgumentValue = function(_unit, _drawArgValue)
            local _status, _response = pcall(function()
                return _unit:getDrawArgumentValue(_drawArgValue);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getNearestCargos = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getNearestCargos();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        enableEmission = function(_unit, _onOff)
            local _status, _ = pcall(function()
                _unit:enableEmission(_onOff);
            end)
            if not _status then
                -- TODO Need debug logging added here
            end
            return nil;
        end,

        getDescentCapacity = function(_unit)
            local _status, _response = pcall(function()
                return _unit:getDescentCapacity();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    VoiceChat = {
            createRoom = function(_roomname,_side,_roomtype)
            local _status, _response = pcall(function()
                return DCS.proxy["VoiceChat"].createRoom(_roomname,_side,_roomtype);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

    },

    Warehouse = {
            addItem = function(_warehouse,_itemtype,_quantity)
            local _status, _response = pcall(function()
                return _warehouse:addItem(_itemtype,_quantity);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getItemCount = function(_warehouse,_itemtype)
            local _status, _response = pcall(function()
                return _warehouse:getItemCount(_itemtype);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setItem = function(_warehouse,_itemtype,_quantity)
            local _status, _response = pcall(function()
                return _warehouse:setItem(_itemtype,_quantity);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        addLiquid = function(_warehouse,_liquidtype,_quantity)
            local _status, _response = pcall(function()
                return _warehouse:addLiquid(_liquidtype,_quantity);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getLiquidAmount = function(_warehouse,_liquidtype)
            local _status, _response = pcall(function()
                return _warehouse:getLiquidAmount(_liquidtype);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        setLiquidAmount = function(_warehouse,_liquidtype,_quantity)
            local _status, _response = pcall(function()
                return _warehouse:setItem(_liquidtype,_quantity);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeLiquid = function(_warehouse,_liquidtype,_quantity)
            local _status, _response = pcall(function()
                return _warehouse:removeLiquid(_liquidtype,_quantity);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getOwner = function(_warehouse)
            local _status, _response = pcall(function()
                return _warehouse:getOwner();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getInventory = function(_warehouse,_itemtype)
            local _status, _response = pcall(function()
                return _warehouse:getInventory(_itemtype);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getByName = function(_name)
            local _status, _response = pcall(function()
                return DCS.proxy["Warehouse"].getByName(_name);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getResourceMap = function(_warehouse)
            local _status, _response = pcall(function()
                return _warehouse:getResourceMap();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,
        getCargoAsWarehouse = function(_staticObject)
            local _status, _response = pcall(function()
                return DCS.proxy["Warehouse"].getCargoAsWarehouse(_staticObject);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end
    },

    world = {
        addEventHandler = function(_handler)
            local _status, _response = pcall(function()
                return DCS.proxy["world"].addEventHandler(_handler);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeEventHandler = function(_handler)
            local _status, _response = pcall(function()
                return DCS.proxy["world"].removeEventHandler(_handler);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getPlayer = function()
            local _status, _response = pcall(function()
                return DCS.proxy["world"].getPlayer();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getAirbases = function()
            local _status, _response = pcall(function()
                return DCS.proxy["world"].getAirbases();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        searchObjects = function(_objectcategory,_searchvolume,_objectsearchhandler)
            local _status, _response = pcall(function()
                return DCS.proxy["world"].searchObjects(_objectcategory,_searchvolume,_objectsearchhandler);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        getMarkPanels = function()
            local _status, _response = pcall(function()
                return DCS.proxy["world"].getMarkPanels();
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,

        removeJunk = function(_searchvolume)
            local _status, _response = pcall(function()
                return DCS.proxy["world"].removeJunk(_searchvolume);
            end)
            if _status then
                return _response;
            else
                -- TODO Need logging added here
                return nil;
            end
        end,
    } -- TODO world not started
}

return true;