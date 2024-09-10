-- Original Idea from OfficialyInsane with some help from OzDeaDMeaT

DCS = {
    DEBUG_TEXT_DELAY = 30,
    setErrorMessageBoxEnabled = false,

    proxy = {
        ["Controller"] = Controller,
        ["Spot"] = Spot
    },

    -- TODO Need log function
    log = function(_message)
    end,

    -- TODO Need tableToString function
    tableToString = function(_table)
    end,

    Airbase = {}, -- TODO Airbase not started

    atmosphere = {}, -- TODO atmosphere not started

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

    coord = {}, -- TODO coord not started

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

    land = {}, -- TODO land not started

    missionCommands = {}, -- TODO missionCommands not started

    net = {}, -- TODO net not started

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

    Warehouse = {}, -- TODO Warehouse not started
    world = {} -- TODO world not started
}

return true;