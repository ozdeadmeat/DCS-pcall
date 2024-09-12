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
            LOGGER.log(_level, MISC.tableToString(_message)); -- TODO: Needs the table2string function
        else
            if _level <= LOGGER.CURRENT_DEBUG_LEVEL then
                if next(_varargs) ~= nil then
                    _message = _message .. ": " .. MISC.tableToString(_varargs);
                end
                net.log(_message);
            end
        end
    end,

    debug = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.DEBUG, _message, _varargs);
    end,

    info = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.INFO, _message, _varargs);
    end,

    warn = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.WARN, _message, _varargs);
    end,


    error = function(_message, ...)
        local _varargs = { ... } or {};
        LOGGER.log(LOG_LEVEL.ERROR, _message, _varargs);
    end
}

return true;



