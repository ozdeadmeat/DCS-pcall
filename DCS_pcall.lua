---@diagnostic disable: undefined-global
-- Original Idea from OfficialyInsane with some help from OzDeaDMeaT

-- TODO: Needs to import LOGGER to work.
-- Options (all have drawbacks):
--   - _G.loadfile()
--   - require()
--   - import()

DCS = {
    DEBUG_TEXT_DELAY = 30,

    log = LOGGER.log,
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

    errorHandler = function(_error)
        return _error;
    end,

    -- TODO Need tableToString function
    tableToString = function(_table)
    end,

    Airbase = {
        getCallsign = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getCallsign();
            end, DCS.errorHandler);
         if _status then
                return _response;
            else
                DCS.log.error("Failed to getCallsign for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getCountry = DCS.Object.getCountry,

        getUnit = function(_airbase,_UnitIndex)
            local _status, _response = xpcall(function()
                return _airbase:getUnit(_UnitIndex or 1);
            end, DCS.errorHandler);
         if _status then
                return _response;
            else
                DCS.log.error("Failed to getUnit for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getID = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getID();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getID for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getCategoryEx = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getCategoryEx();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCategoryEx for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getParking = function(_airbase,_available)
            local _status, _response = xpcall(function()
                return _airbase:getParking(_available or true);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getParking for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getRunways = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getRunways();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getRunways for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getTechObjectPos = function(_airbase, _objectType)
            local _status, _response = xpcall(function()
                return _airbase:getTechObjectPos(_objectType or "towers"); -- TODO: Do we want to be this opinionated about the API usage?
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getTechObjectPos for an airbase!", _airbase, _objectType, _response);
                return nil;
            end
        end,

        getDispatcherTowerPos = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getDispatcherTowerPos();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getDispatcherTowerPos for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        getRadioSilentMode = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getRadioSilentMode();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getRadioSilentMode for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        setRadioSilentMode = function(_airbase,_silent)
            local _status, _response = xpcall(function()
                return _airbase:setRadioSilentMode(_silent or false);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to setRadioSilentMode for an airbase!", _airbase, _silent, _response);
                return nil;
            end
        end,

        autoCapture = function(_airbase,_setting)
            local _status, _response = xpcall(function()
                return _airbase:autoCapture(_setting or true);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to autoCapture for an airbase!", _airbase, _setting, _response);
                return nil;
            end
        end,

        autoCaptureIsOn = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:autoCaptureIsOn();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to autoCaptureIsOn for an airbase!", _airbase, _response);
                return nil;
            end
        end,

        setCoalition = function(_airbase, _coalition)
            local _status, _response = xpcall(function()
                return _airbase:setCoalition(_coalition or coalition.side.NEUTRAL);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to setCoalition for an airbase!", _airbase, _coalition, _response);
                return nil;
            end
        end,

        getWarehouse = function(_airbase)
            local _status, _response = xpcall(function()
                return _airbase:getWarehouse();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getWarehouse for an airbase!", _airbase, _response);
                return nil;
            end
        end
    },

    atmosphere = {
        getWind = function(_vec3)
            local _status, _response = xpcall(function()
                return DCS.proxy["atmosphere"].getWind(_vec3);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getWind from atmosphere!", _response);
                return nil;
            end
        end,

        getWindWithTurbulence = function(_vec3)
            local _status, _response = xpcall(function()
                return DCS.proxy["atmosphere"].getWindWithTurbulence(_vec3);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getWindWithTurbulence from atmosphere!", _vec3, _response);
                return nil;
            end
        end,

        getTemperatureAndPressure = function(_vec3)
            local _status, _response = xpcall(function()
                return DCS.proxy["atmosphere"].getTemperatureAndPressure(_vec3);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getTemperatureAndPressure from atmosphere!", _vec3, _response);
                return nil;
            end
        end
    },

    coalition = {
        addGroup = function(_countryId, _groupCategory, _groupData)
            local _status, _response = xpcall(function()
                DCS.proxy["coalition"].addGroup(_countryId, _groupCategory, _groupData);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to addGroup on a coalition!", _countryId, _groupCategory, _groupData, _response);
            end
            return nil;
        end,

        addStaticObject = function(_countryId, _groupData)
            local _status, _response = xpcall(function()
                DCS.proxy["coalition"].addStaticObject(_countryId, _groupData);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to addStaticObject to a coalition!", _countryId, _groupData, _response);
            end
            return nil;
        end,

        getGroups = function(_coalitionId, _groupCategory)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].getGroups(_coalitionId, _groupCategory);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getGroups from a coalition!", _coalitionId, _groupCategory, _response);
            end
            return nil;
        end,

        getStaticObjects = function(_coalitionId)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].getStaticObjects(_coalitionId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getStaticObjects from a coalition!", _coalitionId, _response);
            end
            return nil;
        end,

        getAirbases = function(_coalitionId)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].getAirbases(_coalitionId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getAirbases for a coalition!", _coalitionId, _response);
            end
            return nil;
        end,

        getPlayers = function(_coalitionId)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].getPlayers(_coalitionId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getPlayers for a coalition!", _coalitionId, _response);
            end
            return nil;
        end,

        getServiceProviders = function(_coalitionId, _serviceProvider)
            local _status, _response = xpcall(function()
                DCS.proxy["coalition"].getServiceProviders(_coalitionId, _serviceProvider);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to getServiceProviders for a coalition!", _coalitionId, _serviceProvider, _response);
            end
            return nil;
        end,

        addRefPoints = function(_coalitionId, _refPoint)
            local _status, _response = xpcall(function()
                DCS.proxy["coalition"].addRefPoints(_coalitionId, _refPoint);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to addRefPoints for a coalition!", _coalitionId, _refPoint, _response);
            end
            return nil;
        end,

        getRefPoints = function(_coalitionId)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].addRefPoints(_coalitionId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getRefPoints for a coalition!", _coalitionId, _response);
            end
            return nil;
        end,

        getMainRefPoint = function(_coalitionId)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].getMainRefPoint(_coalitionId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getMainRefPoint for a coalition!", _coalitionId, _response);
            end
            return nil;
        end,

        getCountryCoalition = function(_countryId)
            local _status, _response = xpcall(function()
                return DCS.proxy["coalition"].getCountryCoalition(_countryId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCountryCoalition for a coalition!", _countryId, _response);
            end
            return nil;
        end
    },

    Controller = {
        setTask = function(_controller, _task)
            local _status, _response = xpcall(function()
                _controller:setTask(_task);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setTask for a controller!", _controller, _task, _response);
            end
            return nil;
        end,

        resetTask = function(_controller)
            local _status, _response = xpcall(function()
                _controller:resetTask();
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to resetTask for a controller!", _controller, _response);
            end
            return nil;
        end,

        pushTask = function(_controller, _task)
            local _status, _response = xpcall(function()
                _controller:pushTask(_task);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to pushTask for a controller!", _controller, _task, _response);
            end
            return nil;
        end,

        popTask = function(_controller)
            local _status, _response = xpcall(function()
                _controller:popTask();
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to popTask for a controller!", _controller, _response);
            end
            return nil;
        end,

        hasTask = function(_controller)
            local _status, _response = xpcall(function()
                return _controller:hasTask();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to hasTask on a controller!", _response);
                return nil;
            end
        end,

        setCommand = function(_controller, _command)
            local _status, _response = xpcall(function()
                _controller:setCommand(_command);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setCommand for a controller!", _controller, _command, _response);
            end
            return nil;
        end,

        setOption = function(_controller, _optionId, _optionValue)
            local _status, _response = xpcall(function()
                _controller:setOption(_optionId, _optionValue);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setOption for a controller!", _controller, _optionId, _optionValue, _response);
            end
            return nil;
        end,

        setOnOff = function(_controller, _value)
            local _status, _response = xpcall(function()
                _controller:setOnOff(_value);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setOnOff for a controller!", _controller, _value, _response);
            end
            return nil;
        end,

        setAltitude = function(_controller, _altitude, _keep, _altType)
            local _status, _response = xpcall(function()
                _controller:setAltitude(_altitude, _keep, _altType);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setAltitude for a controller!", _controller, _altitude, _keep, _altType, _response);
            end
            return nil;
        end,

        setSpeed = function(_controller, _speed, _keep)
            local _status, _response = xpcall(function()
                _controller:setSpeed(_speed, _keep);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setSpeed for a controller!", _controller, _speed, _keep, _response);
            end
            return nil;
        end,

        knowTarget = function(_controller, _object, _type, _distance)
            local _status, _response = xpcall(function()
                _controller:knowTarget(_object, _type, _distance);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to knowTarget for a controller!", _controller, _object, _type, _distance, _response);
            end
            return nil;
        end,

        isTargetDetected = function(_controller, _target, ...)
            local _vararg = { ... };
            local _status, _response = xpcall(function()
                return DCS.proxy["Controller"].isTargetDetected(_controller, _target, _vararg);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to isTargetDetected for a controller!", _controller, _target, _vararg, _response);
                return nil;
            end
        end,

        getDetectedTargets = function(_controller, ...)
            local _vararg = { ... };
            local _status, _response = xpcall(function()
                return DCS.proxy["Controller"].getDetectedTargets(_controller, _vararg);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.eror("Failed to getDetectedTargets for a controller!", _controller, _vararg, _response);
                return nil;
            end
        end
    },

    coord = {
        LLtoLO = function(_latitude, _longitude ,_altitude)
            local _status, _response = xpcall(function()
                return DCS.proxy["coord"].LLtoLO(_latitude, _longitude ,_altitude);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to LLtoLO for a coord!", _latitude, _longitude, _altitude, _response);
            end
            return nil;
        end,

        LOtoLL = function(_vec3)
            local _status, _response = xpcall(function()
                return DCS.proxy["coord"].LOtoLL(_vec3);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to LOtoLL for a coord!", _vec3, _response);
            end
            return nil;
        end,

        LLtoMGRS = function(_latitude, _longitude)
            local _status, _response = xpcall(function()
                return DCS.proxy["coord"].LLtoMGRS(_latitude, _longitude);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to LLtoMGRS for a coord!", _latitude, _longitude, _response);
            end
            return nil;
        end,

        MGRStoLL = function(_mgrs)
            local _status, _response = xpcall(function()
                return DCS.proxy["coord"].MGRStoLL(_mgrs);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to MGRStoLL for a coord!", _mgrs, _response);
            end
            return nil;
        end,


    },

    Group = {
        destroy = DCS.Object.destroy,
        getCategory = DCS.Object.getCategory,
        isExist = DCS.Object.isExist,

        activate = function(_group)
            local _status, _response = xpcall(function()
                _group:activate();
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to activate for a group!", _group, _response);
            end
            return nil;
        end,

        getByName = function(_name)
            local _status, _response = xpcall(function()
                return DCS.proxy["Group"].getByName(_name);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getByName for a group!", _name, _response);
                return nil;
            end
        end,

        getName = function(_group)
            local _status, _response = xpcall(function()
                return _group:getName();
            end)
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getName for a group!", _group, _response);
                return '';
            end
        end,

        getID = function(_group)
            local _status, _response = xpcall(function()
                return _group:getID();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getID for a group!", _group, _response);
                return nil;
            end
        end,

        getUnit = function(_group, _unitIndex)
            local _status, _response = xpcall(function()
                return _group:getUnit(_unitIndex);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getUnit for a group!", _group, _unitIndex, _response);
            end
        end,

        getUnits = function(_group)
            local _status, _response = xpcall(function()
                return _group:getUnits();
            end, DCS.errorHandler)
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getUnits for a group!", _group, _response);
                return nil;
            end
        end,

        getSize = function(_group)
            local _status, _response = xpcall(function()
                return _group:getSize();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getSize for a group!", _group, _response);
                return 0;
            end
        end,

        getInitialSize = function(_group)
            local _status, _response = xpcall(function()
                return _group:getInitialSize();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getInitialSize for a group!", _group, _response);
                return 0;
            end
        end,

        getController = function(_group)
            local _status, _response = xpcall(function()
                return _group:getController();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getController for a group!", _group, _response);
                return nil;
            end
        end,

        enableEmission = function(_group)
            local _status, _response = xpcall(function()
                _group:enableEmission();
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to enableEmission for a group!", _group, _response);
            end
            return nil;
        end
    },

    land = {
        getHeight = function(_vec2)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].getHeight(_vec2);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getHeight for land!", _vec2, _response);
                return nil;
            end
        end,

        getSurfaceHeightWithSeabed = function(_vec2)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].getSurfaceHeightWithSeabed(_vec2);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getSurfaceHeightWithSeabed for land!", _vec2, _response);
                return nil;
            end
        end,

        getSurfaceType = function(_vec2)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].getSurfaceType(_vec2);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getSurfaceType for land!", _vec2, _response);
                return nil;
            end
        end,

        isVisible = function(_origin, _destination)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].isVisible(_origin, _destination);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to isInvisible for land!", _origin, _destination, _response);
                return nil;
            end
        end,

        getIP = function(_origin, _direction, _distance)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].getIP(_origin, _direction, _distance);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getIP for land!", _origin, _direction, _distance, _response);
                return nil;
            end
        end,

        profile = function(_start, _end)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].profile(_start, _end);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to profile for land!", _start, _end, _response);
                return nil;
            end
        end,

        getClosestPointOnRoads = function(_roadtype, _xcoord,_ycoord)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].getClosestPointOnRoads(_roadtype, _xcoord,_ycoord);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getClosestPointOnRoads for land!", _roadtype, _xcoord, _ycoord, _response);
                return nil;
            end
        end,

        findPathOnRoads = function(_roadtype, _xcoord,_ycoord, _xdest, _ydest)
            local _status, _response = xpcall(function()
                return DCS.proxy["land"].findPathOnRoads(_roadtype, _xcoord,_ycoord, _xdest, _ydest);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to findPathOnRoads for land!", _roadtype, _xcoord, _ycoord, _xdest, _ydest, _response);
                return nil;
            end
        end,
    },

    missionCommands = {
        addCommand = function(_name, _path, _functionToTun, _arguments)
            local _status, _response = xpcall(function()
                return DCS.proxy["missionCommands"].addCommand(_name, _path, _functionToTun, _arguments);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addCommand for missionCommands!", _name, _path, _functionToTun, _arguments, _response);
                return nil;
            end
        end,

        addSubMenu = function(_name, _path)
            local _status, _response = xpcall(function()
                return DCS.proxy["missionCommands"].addSubMenu(_name, _path);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addSubMenu for missionCommands!", _name, _path, _response);
                return nil;
            end
        end,

        removeItem = function( _path)
            local _status, _response = xpcall(function()
                DCS.proxy["missionCommands"].removeItem(_path);
            end)
            if not _status then
                DCS.log.error("Failed to removeItem for missionCommands!", _path, _response);
                return nil;
            end
        end,

        addCommandForCoalition = function(_coalition, _name, _path, _functionToTun, _arguments)
            local _status, _response = xpcall(function()
                return DCS.proxy["missionCommands"].addCommandForCoalition(_coalition, _name, _path, _functionToTun, _arguments);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addCommandForCoalition for missionCommands!", _coalition, _name, _path, _functionToTun,
                        _arguments, _response);
                return nil;
            end
        end,

        addSubMenuForCoalition = function(_coalition, _name, _path)
            local _status, _response = xpcall(function()
                return DCS.proxy["missionCommands"].addSubMenuForCoalition(_coalition, _name, _path);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addSubMenuForCoalition for missionCommands!", _coalition, _name, _path, _response);
                return nil;
            end
        end,

        removeItemForCoalition = function(_coalition, _path)
            local _status, _response = xpcall(function()
                DCS.proxy["missionCommands"].removeItemForCoalition(_coalition, _path);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to removeItemForCoalition for missionCommands!", _coalition, _path, _response);
                return nil;
            end
        end,

        addCommandForGroup = function(_groupId, _name, _path, _functionToRun, _arguments)
            local _status, _response = xpcall(function()
                return DCS.proxy["missionCommands"].addCommandForGroup(_groupId, _name, _path, _functionToRun, _arguments);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addCommandForGroup for missionCommands!", _groupId, _name, _path, _functionToRun,
                        _arguments, _response);
                return nil;
            end
        end,

        addSubMenuForGroup = function(_groupId, _name, _path)
            local _status, _response = xpcall(function()
                return DCS.proxy["missionCommands"].addSubMenuForGroup(_groupId, _name, _path);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addSubMenuForGroup for missionCommands!", _groupId, _name, _path, _response);
                return nil;
            end
        end,

        removeItemForGroup = function(_groupId, _path)
            local _status, _response = xpcall(function()
                DCS.proxy["missionCommands"].removeItemForGroup(_groupId, _path);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to removeItemForGroup for missionCommands!", _groupId, _path, _response);
                return nil;
            end
        end
    },

    net = {}, -- TODO net not started

    Object = {
        isExist = function(_object)
            local _status, _response = xpcall(function()
                return _object:isExist();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to isExist for an object!", _object, _response);
                return nil;
            end
        end,

        destroy = function(_object)
            local _status, _response = xpcall(function()
                return _object:destroy();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to destroy for an object!", _object, _response);
                return nil;
            end
        end,

        getCategory = function(_object)
            local _status, _response = xpcall(function()
                return _object:getCategory();
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to getCategory for an object!", _object, _response);
            end
            return nil;
        end,

        getCountry = function(_object)
            local _status, _response = xpcall(function()
                return _object:getCountry();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCountry for an object!", _object, _response);
                return nil;
            end
        end,

        getTypeName = function(_object)
            local _status, _response = xpcall(function()
                return _object:getTypeName();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getTypeName for an object!", _object, _response);
                return nil;
            end
        end,

        getDesc = function(_object)
            local _status, _response = xpcall(function()
                return _object:getDesc();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getDesc for an object!", _object, _response);
                return nil;
            end
        end,

        hasAttribute = function(_object, _attribute)
            local _status, _response = xpcall(function()
                return _object:hasAttribute(_attribute);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to hasAttribute for an object!", _object, _attribute, _response);
                return nil;
            end
        end,

        getName = function(_object)
            local _status, _response = xpcall(function()
                return _object:getName();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getName for an object!", _object, _response);
                return nil;
            end
        end,

        getPoint = function(_object)
            local _status, _response = xpcall(function()
                return _object:getPoint();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getPoint for an object!", _object, _response);
                return nil;
            end
        end,

        getPosition = function(_object)
            local _status, _response = xpcall(function()
                return _object:getPosition();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getPosition for an object!", _object, _response);
                return nil;
            end
        end,

        getVelocity = function(_object)
            local _status, _response = xpcall(function()
                return _object:getVelocity();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getVelocity for an object!", _object, _response);
                return nil;
            end
        end,

        inAir = function(_object)
            local _status, _response = xpcall(function()
                return _object:inAir();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to inAir for an object!", _object, _response);
                return nil;
            end
        end
    },

    ScenaryObject = {}, -- TODO ScenaryObject not started

    Spot = {
        createLaser = function(_source, _localRef, _point, _laseCode)
            local _status, _response = xpcall(function()
                return DCS.proxy["Spot"].createLaser(_source, _localRef, _point, _laseCode);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to createLaser for a spot!", _source, _localRef, _point, _laseCode, _response);
                return nil;
            end
        end,

        createInfraRed = function(_source, _localRef, _point)
            local _status, _response = xpcall(function()
                return DCS.proxy["Spot"].createInfraRed(_source, _localRef, _point);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to createInfraRed for a spot!", _source, _localRef, _point, _response);
                return nil;
            end
        end,

        destroy = function(_spot)
            local _status, _ = xpcall(function()
                _spot:destroy();
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to destroy for a spot!", _spot, _response);
            end
            return nil;
        end,

        getCategory = function(_spot)
            local _status, _response = xpcall(function()
                return _spot:getCategory();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCategory for a spot!", _spot, _response);
                return nil;
            end
        end,

        getPoint = function(_spot)
            local _status, _response = xpcall(function()
                return _spot:getPoint();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getPoint for a spot!", _spot, _response);
                return nil;
            end
        end,

        setPoint = function(_spot, _vec3)
            local _status, _response = xpcall(function()
                _spot:setPoint(_vec3);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setPoint for a spot!", _spot, _vec3, _response);
            end
            return nil;
        end,

        getCode = function(_spot)
            local _status, _response = xpcall(function()
                return _spot:getCode(_spot);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCode for a spot!", _spot, _response);
                return nil;
            end
        end,

        setCode = function(_spot, _code)
            local _status, _response = xpcall(function()
                _spot:setCode(_code);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to setCode for a spot!", _spot, _code, _response);
            end
            return nil;
        end
    },

    StaticObject = {
        isExist = DCS.Object.isExist,
        getCountry = DCS.Object.getCountry,

        getCoalition =  function(_staticObject)
            local _status, _response = xpcall(function()
                return _staticObject.getCoalition(_name);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCoalition for a StaticObject!", _staticObject, _response);
                return nil;
            end
        end,

        getCargoDisplayName = function(_staticObject)
            local _status, _response = xpcall(function()
                return _staticObject:getCargoDisplayName();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCargoDisplayName for a StaticObject!", _staticObject, _response);
                return nil;
            end
        end,

        getDrawArgumentValue = function(_staticObject, _drawArgumentValue)
            local _status, _response = xpcall(function()
                return _staticObject.getDrawArgumentValue(_drawArgumentValue);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getDrawArgumentValue for a StaticObject!", _staticObject, _drawArgumentValue, _response);
                return nil;
            end
        end,

        getByName = function(_name)
            local _status, _response = xpcall(function()
                return DCS.proxy["StaticObject"].getByName(_name);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getByName for a StaticObject!", _name, _response);
                return nil;
            end
        end,

        getDescByName = function(_typeName)
            local _status, _response = xpcall(function()
                return DCS.proxy["StaticObject"].getDescByName(_typeName);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getDescByName for a StaticObject!", _typeName, _response);
                return nil;
            end
        end,
    },

    timer = {
        getTime = function()
            local _status, _response = xpcall(function()
                return DCS.proxy["timer"].getTime();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getTime from timer!", _response);
                return nil;
            end
        end,

        getAbsTime = function()
            local _status, _response = xpcall(function()
                return DCS.proxy["timer"].getAbsTime();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getAbsTime from timer!", _response);
                return nil;
            end
        end,

        getTime0 = function()
            local _status, _response = xpcall(function()
                return DCS.proxy["timer"].getTime0();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.eror("Failed to getTime0 from timer!", _response);
                return nil;
            end
        end,

        scheduleFunction = function(_function, _functionArguments, _modelTime)
            local _status, _response = xpcall(function()
                return DCS.proxy["timer"].scheduleFunction(_function, _functionArguments, _modelTime);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to scheduleFunction with timer!", _function, _functionArguments, _modelTime, _response);
                return nil;
            end
        end,

        removeFunction = function(_functionId)
            local _status, _response = xpcall(function()
                return DCS.proxy["timer"].removeFunction(_functionId);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to removeFunction from timer!", _functionId, _response);
                return nil;
            end
        end,

        setFunctionTime = function(_functionId, _modelTime)
            local _status, _response = xpcall(function()
                return DCS.proxy["timer"].setFunctionTime(_functionId, _modelTime);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to setFunctionTime for timer!", _functionId, _modelTime, _response);
                return nil;
            end
        end
    },

    trigger = {}, -- TODO trigger not started

    Unit = {
        isActive = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:isActive();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to isActive for a unit!", _unit, _response);
                return nil;
            end
        end,

        getByName = function(_name)
            local _status, _response = xpcall(function()
                return DCS.proxy["Unit"].getByName(_name);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getByName for a unit!", _name, _response);
                return nil;
            end
        end,

        getPlayerName = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getPlayerName();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getPlayerName for a unit!", _unit, _response);
                return nil;
            end
        end,

        getID = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getID();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getID for a unit!", _unit, _response);
                return nil;
            end
        end,

        getNumber = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getNumber();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getNumber for a unit!", _unit, _response);
                return nil;
            end
        end,

        getCategoryEx = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getCategoryEx();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCategoryEx for a unit!", _unit, _response);
                return nil;
            end
        end,

        getObjectID = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getObjectID();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getObjectID for a unit!", _unit, _response);
                return nil;
            end
        end,

        getController = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getController();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getController for a unit", _unit, _response);
                return nil;
            end
        end,

        getLife = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getLife();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getLife for a unit!", _unit, _response);
                return nil;
            end
        end,

        getLife0 = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getLife0();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getLife0 for a unit!", _unit, _response);
                return nil;
            end
        end,

        getFuel = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getFuel();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getFuel for a unit!", _unit, _response);
                return nil;
            end
        end,

        getAmmo = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getAmmo();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getAmmo for a unit!", _unit, _response);
                return nil;
            end
        end,

        getSensors = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getSensors();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getSensors for a unit!", _unit, _response);
                return nil;
            end
        end,

        hasSensors = function(_unit, _sensorType, _subcategory)
            local _status, _response = xpcall(function()
                return _unit:hasSensors(_sensorType, _subcategory);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to hasSensors for a unit!", _unit, _sensorType, _subcategory, _response);
                return nil;
            end
        end,

        getRadar = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getRadar();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getRadar for a unit!", _unit, _response);
                return nil;
            end
        end,

        getDrawArgumentValue = function(_unit, _drawArgValue)
            local _status, _response = xpcall(function()
                return _unit:getDrawArgumentValue(_drawArgValue);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getDrawArgumentValue for a unit!", _unit, _drawArgValue, _response);
                return nil;
            end
        end,

        getNearestCargos = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getNearestCargos();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getNearestCargos for a unit!", _unit, _response);
                return nil;
            end
        end,

        enableEmission = function(_unit, _onOff)
            local _status, _response = xpcall(function()
                _unit:enableEmission(_onOff);
            end, DCS.errorHandler);
            if not _status then
                DCS.log.error("Failed to enableEmission for a unit!", _unit, _onOff, _response);
            end
            return nil;
        end,

        getDescentCapacity = function(_unit)
            local _status, _response = xpcall(function()
                return _unit:getDescentCapacity();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getDescentCapacity for a unit!", _unit, _response);
                return nil;
            end
        end
    },

    VoiceChat = {
            createRoom = function(_roomName, _side, _roomType)
            local _status, _response = xpcall(function()
                return DCS.proxy["VoiceChat"].createRoom(_roomName,_side, _roomType);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to createRoom for VoiceChat!", _roomName, _side, _roomType, _response);
                return nil;
            end
        end,

    },

    Warehouse = {
            addItem = function(_warehouse, _itemType, _quantity)
            local _status, _response = xpcall(function()
                return _warehouse:addItem(_itemType,_quantity);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addItem to a warehouse!", _warehouse, _itemType, _quantity, _response);
                return nil;
            end
        end,

        getItemCount = function(_warehouse, _itemType)
            local _status, _response = xpcall(function()
                return _warehouse:getItemCount(_itemType);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getItemCount for a warehouse!", _warehouse, _itemType, _response);
                return nil;
            end
        end,

        setItem = function(_warehouse, _itemType, _quantity)
            local _status, _response = xpcall(function()
                return _warehouse:setItem(_itemType,_quantity);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to setItem for a warehouse!", _warehouse, _itemType, _quantity, _response);
                return nil;
            end
        end,

        addLiquid = function(_warehouse, _liquidType, _quantity)
            local _status, _response = xpcall(function()
                return _warehouse:addLiquid(_liquidType,_quantity);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addLiquid to a warehouse!", _warehouse, _liquidType, _quantity, _response);
                return nil;
            end
        end,

        getLiquidAmount = function(_warehouse, _liquidType)
            local _status, _response = xpcall(function()
                return _warehouse:getLiquidAmount(_liquidType);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getLiquidAmount for a warehouse!", _warehouse, _liquidType, _response);
                return nil;
            end
        end,

        setLiquidAmount = function(_warehouse, _liquidType, _quantity)
            local _status, _response = xpcall(function()
                return _warehouse:setItem(_liquidType,_quantity);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to setLiquidAmount for a warehouse!", _warehouse, _liquidType, _quantity, _response);
                return nil;
            end
        end,

        removeLiquid = function(_warehouse, _liquidType, _quantity)
            local _status, _response = xpcall(function()
                return _warehouse:removeLiquid(_liquidType,_quantity);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to removeLiquid for a warehouse!", _warehouse, _liquidType, _quantity, _response);
                return nil;
            end
        end,

        getOwner = function(_warehouse)
            local _status, _response = xpcall(function()
                return _warehouse:getOwner();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getOwner for a warehouse!", _warehouse, _response);
                return nil;
            end
        end,

        getInventory = function(_warehouse, _itemType)
            local _status, _response = xpcall(function()
                return _warehouse:getInventory(_itemType);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getInventory for a warehouse!", _warehouse, _itemType);
                return nil;
            end
        end,

        getByName = function(_name)
            local _status, _response = xpcall(function()
                return DCS.proxy["Warehouse"].getByName(_name);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getByName for a warehouse!", _name, _response);
                return nil;
            end
        end,

        getResourceMap = function(_warehouse)
            local _status, _response = xpcall(function()
                return _warehouse:getResourceMap();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getResourceMap for a warehouse!", _warehouse, _response);
                return nil;
            end
        end,

        getCargoAsWarehouse = function(_staticObject)
            local _status, _response = xpcall(function()
                return DCS.proxy["Warehouse"].getCargoAsWarehouse(_staticObject);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getCargoAsWarehouse on a warehouse!", _staticObject, _response);
                return nil;
            end
        end
    },

    world = {
        addEventHandler = function(_handler)
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].addEventHandler(_handler);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to addEventHandler to world!", _handler, _response);
                return nil;
            end
        end,

        removeEventHandler = function(_handler)
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].removeEventHandler(_handler);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to removeEventHandler from world!", _handler, _response);
                return nil;
            end
        end,

        getPlayer = function()
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].getPlayer();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getPlayer from world!", _response);
                return nil;
            end
        end,

        getAirbases = function()
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].getAirbases();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getAirbases from world!", _response);
                return nil;
            end
        end,

        searchObjects = function(_objectCategory, _searchVolume, _objectSearchHandler)
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].searchObjects(_objectCategory, _searchVolume, _objectSearchHandler);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to searchObjects in world!", _objectCategory, _searchVolume, _objectSearchHandler, _response);
                return nil;
            end
        end,

        getMarkPanels = function()
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].getMarkPanels();
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to getMarkPanels from world!", _response);
                return nil;
            end
        end,

        removeJunk = function(_searchVolume)
            local _status, _response = xpcall(function()
                return DCS.proxy["world"].removeJunk(_searchVolume);
            end, DCS.errorHandler);
            if _status then
                return _response;
            else
                DCS.log.error("Failed to removeJunk from world!", _response);
                return nil;
            end
        end,
    }
}

return true;