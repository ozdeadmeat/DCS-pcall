-- Original Idea from OfficialyInsane with some help from OzDeaDMeaT

DCS = {
    DEBUG_TEXT_DELAY = 30,
    setErrorMessageBoxEnabled = false,

    -- TODO Need log function
    log = function(str)
    end,

    -- TODO Need tableToString function
    tableToString = function(tbl)
    end,

    Airbase = {}, -- TODO Airbase not started

    atmosphere = {}, -- TODO atmosphere not started
    Controller = {
        setTask = function(_ctrllr, _tskTbl)
            local _status, _ = pcall(function()
                _ctrllr:setTask(_tskTbl);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        resetTask = function(_ctrllr)
            local _status, _ = pcall(function()
                _ctrllr:resetTask();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        pushTask = function(_ctrllr, _tskTbl)
            local _status, _ = pcall(function()
                _ctrllr:pushTask(_tskTbl);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        popTask = function(_ctrllr)
            local _status, _ = pcall(function()
                _ctrllr:popTask();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        hasTask = function(_ctrllr)
            local _status, _ = pcall(function()
                _ctrllr:hasTask();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        setCommand = function(_ctrllr, _cmdTbl)
            local _status, _ = pcall(function()
                _ctrllr:setCommand(_cmdTbl);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        setOption = function(_ctrllr, _optID, _optVal)
            local _status, _ = pcall(function()
                _ctrllr:setOption(_optID, _optVal);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        setOnOff = function(_ctrllr, _onOff)
            local _status, _ = pcall(function()
                _ctrllr:setOnOff(_onOff);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        setAltitude = function(_ctrllr, _keep, _altType)
            local _status, _ = pcall(function()
                _ctrllr:setAltitude(_keep, _altType);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        setSpeed = function(_ctrllr, _spd, _keep)
            local _status, _ = pcall(function()
                _ctrllr:setSpeed(_spd, _keep);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        knowTarget = function(_ctrllr, _tgt, _typ, _dist)
            local _status, _ = pcall(function()
                _ctrllr:knowTarget(_tgt, _typ, _dist);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        isTargetDetected = function(_ctrllr, _tgt, ...)
            -- TODO Need help with this one
            local _argVar = { ... }
            local _status, _ = pcall(function()
                _ctrllr:isTargetDetected(_tgt, _argVar);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getDetectedTargets = function(_ctrllr, ...)
            -- TODO Need help with this one
            local _argVar = { ... }
            local _status, _ = pcall(function()
                _ctrllr:getDetectedTargets(_argVar);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end
    },

    coord = {}, -- TODO coord not started

    Group = {
        isExist = function(_group)
            local _status, _ = pcall(function()
                _group:isExist();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        activate = function(_group)
            local _status, _ = pcall(function()
                _group:activate();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        destroy = function(_group)
            local _status, _ = pcall(function()
                _group:destroy();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getCategory = function(_group)
            local _status, _ = pcall(function()
                _group:getCategory();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getName = function(_group)
            local _status, _ = pcall(function()
                _group:getName();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getID = function(_group)
            local _status, _ = pcall(function()
                _group:getID();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getUnit = function(_group, indx)
            local _status, _ = pcall(function()
                _group:getUnit(indx);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getUnits = function(_group)
            local _status, _ = pcall(function()
                _group:getUnits();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getSize = function(_group)
            local _status, _ = pcall(function()
                _group:getSize();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getInitialSize = function(_group)
            local _status, _ = pcall(function()
                _group:getInitialSize();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getController = function(_group)
            local _status, _ = pcall(function()
                _group:getController();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        enableEmission = function(_group)
            local _status, _ = pcall(function()
                _group:enableEmission();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end
    },

    land = {}, -- TODO land not started

    missionCommands = {}, -- TODO missionCommands not started

    net = {}, -- TODO net not started

    ScenaryObject = {}, -- TODO ScenaryObject not started

    Spot = {
        createLaser = function(_obj, _lvec3, _point, _laseCode)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                Spot.createLaser(_obj, _lvec3, _point, _laseCode);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        createInfraRed = function(_obj, _lvec3, _point)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                Spot.createInfraRed(_obj, _lvec3, _point);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        destroy = function(_spot)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                _spot:destroy();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getCategory = function(_spot)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                _spot:getCategory();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,
        getPoint = function(_spot)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                _spot:getPoint();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,
        setPoint = function(_spot, _vec3)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                _spot:setPoint(_vec3);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,
        getCode = function(_spot)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                _spot:getCode();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,
        setCode = function(_spot, _code)
            -- TODO Need help with this one
            local _status, _ = pcall(function()
                _spot:setCode(_code);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end
    },
    trigger = {}, -- TODO trigger not started

    Unit = {
        isActive = function(_unit)
            local _status, _ = pcall(function()
                _unit:isActive();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getPlayerName = function(_unit)
            local _status, _ = pcall(function()
                _unit:getPlayerName();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getID = function(_unit)
            local _status, _ = pcall(function()
                _unit:getID();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getNumber = function(_unit)
            local _status, _ = pcall(function()
                _unit:getNumber();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getCategoryEx = function(_unit)
            local _status, _ = pcall(function()
                _unit:getCategoryEx();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getObjectID = function(_unit)
            local _status, _ = pcall(function()
                _unit:getObjectID();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getController = function(_unit)
            local _status, _ = pcall(function()
                _unit:getController();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getLife = function(_unit)
            local _status, _ = pcall(function()
                _unit:getLife();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getLife0 = function(_unit)
            local _status, _ = pcall(function()
                _unit:getLife0();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getFuel = function(_unit)
            local _status, _ = pcall(function()
                _unit:getFuel();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getAmmo = function(_unit)
            local _status, _ = pcall(function()
                _unit:getAmmo();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getSensors = function(_unit)
            local _status, _ = pcall(function()
                _unit:getSensors();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        hasSensors = function(_unit, _sensorType, _sensorSubCat)
            local _status, _ = pcall(function()
                _unit:hasSensors(_sensorType, _sensorSubCat);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getRadar = function(_unit)
            local _status, _ = pcall(function()
                _unit:getRadar();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getDrawArgumentValue = function(_unit, _drawArgValue)
            local _status, _ = pcall(function()
                _unit:getDrawArgumentValue(_drawArgValue);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getNearestCargos = function(_unit)
            local _status, _ = pcall(function()
                _unit:getNearestCargos();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        enableEmission = function(_unit, _onOff)
            local _status, _ = pcall(function()
                _unit:enableEmission(_onOff);
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end,

        getDescentCapacity = function(_unit)
            local _status, _ = pcall(function()
                _unit:getDescentCapacity();
            end)
            if not _status then
                -- TODO Need logging added here
            else
                -- TODO Need debug logging added here
            end
        end
    },

    Warehouse = {}, -- TODO Warehouse not started
    world = {} -- TODO world not started
}