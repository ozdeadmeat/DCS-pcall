Wrapper = {
    wrap = function(_object)
        local _wrapped = {
            _source = _object
        };
        for _key, _value in pairs(_object) do
            if type(_value) ~= "function" then
                _wrapped[_key] = _object[_value];
            else
                -- TODO: STOP_POINT -
                -- Need to replace the functions in _object with those from DCS pcall Wrapper
                -- How do we determine the correct function? Check all args match type (but not name) and method name matches?
            end
        end
    end,

    unwrap = function(_object)
        if _object == nil then
            return nil;
        end
        if _object._source == nil then
            return _object;
        end

        return _object._source;
    end
}

--[[ example usage:

local unit = Unit.getByName("CVN75");
local wrappedUnit = Wrapper.wrap(unit);
wrappedUnit:getID(); -- must call the wrapper, not the original function

]]
