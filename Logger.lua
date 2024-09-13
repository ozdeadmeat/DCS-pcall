LOG_LEVEL = {
    DEBUG_FILE_ONLY = 1,
    DEBUG = 2,
    INFO = 3,
    WARN = 4,
    ERROR = 5
}

LOGGER = {

    CURRENT_DEBUG_LEVEL = LOG_LEVEL.DEBUG, -- not advised when running on servers, if you want players to see anything!
    
    log = function(_level, _message, ...)
        local _varargs = { ... } or {};
        if not _message then
            _message = "UNKNOWN MESSAGE!";
        end
        if not _level then
            _level = LOG_LEVEL.ERROR;
        end
        _level = tonumber(_level);

        if type(_message) == "table" then
            LOGGER.log(_level, LOGGER.tableToString(_message));
        else
            if _level <= LOGGER.CURRENT_DEBUG_LEVEL then
                if next(_varargs) ~= nil then
                    _message = _message .. ": " .. LOGGER.tableToString(_varargs);
                end
                net.log(_message);
            end
        end
    end,

    debug = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.DEBUG, _message, _varargs);
    end,

    error = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.ERROR, _message, _varargs);
    end,

    info = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.INFO, _message, _varargs);
    end,

    tableToString = function(_table)
        local _result = "{";

        local function serialize(_object)
            if type(_object) == "string" then
                return string.format("%q", _object);
            elseif type(_object) == "table" then
                return tableToString(_object);
            elseif type(_object) == "function" then
                return "\"<function>\""; -- TODO: do we want to grab the arguments? Could be expensive to log!
            else
                return tostring(_object);
            end
        end
        for _key, _value in pairs(_table) do
           _result = _result .. string.format("[%s]=%s",
                serialize(_key),
                serialize(_value));
        end
        return _result .. "}";
    end,

    warn = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.WARN, _message, _varargs);
    end,

}

return true;



